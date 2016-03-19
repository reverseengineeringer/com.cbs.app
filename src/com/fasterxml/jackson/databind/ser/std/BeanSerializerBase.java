package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat.Shape;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators.PropertyGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonMappingException.Reference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSerializableSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.AnyGetterWriter;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.BeanSerializerBuilder;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.ser.ResolvableSerializer;
import com.fasterxml.jackson.databind.ser.impl.ObjectIdWriter;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashSet;

public abstract class BeanSerializerBase
  extends StdSerializer<Object>
  implements JsonFormatVisitable, SchemaAware, ContextualSerializer, ResolvableSerializer
{
  protected static final PropertyName NAME_FOR_OBJECT_REF = new PropertyName("#object-ref");
  protected static final BeanPropertyWriter[] NO_PROPS = new BeanPropertyWriter[0];
  protected final AnyGetterWriter _anyGetterWriter;
  protected final BeanPropertyWriter[] _filteredProps;
  protected final ObjectIdWriter _objectIdWriter;
  protected final Object _propertyFilterId;
  protected final BeanPropertyWriter[] _props;
  protected final JsonFormat.Shape _serializationShape;
  protected final AnnotatedMember _typeId;
  
  protected BeanSerializerBase(JavaType paramJavaType, BeanSerializerBuilder paramBeanSerializerBuilder, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2)
  {
    super(paramJavaType);
    _props = paramArrayOfBeanPropertyWriter1;
    _filteredProps = paramArrayOfBeanPropertyWriter2;
    if (paramBeanSerializerBuilder == null)
    {
      _typeId = null;
      _anyGetterWriter = null;
      _propertyFilterId = null;
      _objectIdWriter = null;
      paramJavaType = (JavaType)localObject;
    }
    for (;;)
    {
      _serializationShape = paramJavaType;
      return;
      _typeId = paramBeanSerializerBuilder.getTypeId();
      _anyGetterWriter = paramBeanSerializerBuilder.getAnyGetter();
      _propertyFilterId = paramBeanSerializerBuilder.getFilterId();
      _objectIdWriter = paramBeanSerializerBuilder.getObjectIdWriter();
      paramBeanSerializerBuilder = paramBeanSerializerBuilder.getBeanDescription().findExpectedFormat(null);
      paramJavaType = (JavaType)localObject;
      if (paramBeanSerializerBuilder != null) {
        paramJavaType = paramBeanSerializerBuilder.getShape();
      }
    }
  }
  
  protected BeanSerializerBase(BeanSerializerBase paramBeanSerializerBase)
  {
    this(paramBeanSerializerBase, _props, _filteredProps);
  }
  
  protected BeanSerializerBase(BeanSerializerBase paramBeanSerializerBase, ObjectIdWriter paramObjectIdWriter)
  {
    this(paramBeanSerializerBase, paramObjectIdWriter, _propertyFilterId);
  }
  
  protected BeanSerializerBase(BeanSerializerBase paramBeanSerializerBase, ObjectIdWriter paramObjectIdWriter, Object paramObject)
  {
    super(_handledType);
    _props = _props;
    _filteredProps = _filteredProps;
    _typeId = _typeId;
    _anyGetterWriter = _anyGetterWriter;
    _objectIdWriter = paramObjectIdWriter;
    _propertyFilterId = paramObject;
    _serializationShape = _serializationShape;
  }
  
  protected BeanSerializerBase(BeanSerializerBase paramBeanSerializerBase, NameTransformer paramNameTransformer)
  {
    this(paramBeanSerializerBase, rename(_props, paramNameTransformer), rename(_filteredProps, paramNameTransformer));
  }
  
  public BeanSerializerBase(BeanSerializerBase paramBeanSerializerBase, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter1, BeanPropertyWriter[] paramArrayOfBeanPropertyWriter2)
  {
    super(_handledType);
    _props = paramArrayOfBeanPropertyWriter1;
    _filteredProps = paramArrayOfBeanPropertyWriter2;
    _typeId = _typeId;
    _anyGetterWriter = _anyGetterWriter;
    _objectIdWriter = _objectIdWriter;
    _propertyFilterId = _propertyFilterId;
    _serializationShape = _serializationShape;
  }
  
  protected BeanSerializerBase(BeanSerializerBase paramBeanSerializerBase, String[] paramArrayOfString)
  {
    super(_handledType);
    HashSet localHashSet = ArrayBuilders.arrayToSet(paramArrayOfString);
    BeanPropertyWriter[] arrayOfBeanPropertyWriter1 = _props;
    BeanPropertyWriter[] arrayOfBeanPropertyWriter2 = _filteredProps;
    int j = arrayOfBeanPropertyWriter1.length;
    ArrayList localArrayList = new ArrayList(j);
    if (arrayOfBeanPropertyWriter2 == null) {}
    for (paramArrayOfString = null;; paramArrayOfString = new ArrayList(j))
    {
      int i = 0;
      while (i < j)
      {
        BeanPropertyWriter localBeanPropertyWriter = arrayOfBeanPropertyWriter1[i];
        if (!localHashSet.contains(localBeanPropertyWriter.getName()))
        {
          localArrayList.add(localBeanPropertyWriter);
          if (arrayOfBeanPropertyWriter2 != null) {
            paramArrayOfString.add(arrayOfBeanPropertyWriter2[i]);
          }
        }
        i += 1;
      }
    }
    _props = ((BeanPropertyWriter[])localArrayList.toArray(new BeanPropertyWriter[localArrayList.size()]));
    if (paramArrayOfString == null) {}
    for (paramArrayOfString = (String[])localObject;; paramArrayOfString = (BeanPropertyWriter[])paramArrayOfString.toArray(new BeanPropertyWriter[paramArrayOfString.size()]))
    {
      _filteredProps = paramArrayOfString;
      _typeId = _typeId;
      _anyGetterWriter = _anyGetterWriter;
      _objectIdWriter = _objectIdWriter;
      _propertyFilterId = _propertyFilterId;
      _serializationShape = _serializationShape;
      return;
    }
  }
  
  private static final BeanPropertyWriter[] rename(BeanPropertyWriter[] paramArrayOfBeanPropertyWriter, NameTransformer paramNameTransformer)
  {
    if ((paramArrayOfBeanPropertyWriter == null) || (paramArrayOfBeanPropertyWriter.length == 0) || (paramNameTransformer == null) || (paramNameTransformer == NameTransformer.NOP)) {
      return paramArrayOfBeanPropertyWriter;
    }
    int j = paramArrayOfBeanPropertyWriter.length;
    BeanPropertyWriter[] arrayOfBeanPropertyWriter = new BeanPropertyWriter[j];
    int i = 0;
    while (i < j)
    {
      BeanPropertyWriter localBeanPropertyWriter = paramArrayOfBeanPropertyWriter[i];
      if (localBeanPropertyWriter != null) {
        arrayOfBeanPropertyWriter[i] = localBeanPropertyWriter.rename(paramNameTransformer);
      }
      i += 1;
    }
    return arrayOfBeanPropertyWriter;
  }
  
  protected final String _customTypeId(Object paramObject)
  {
    paramObject = _typeId.getValue(paramObject);
    if (paramObject == null) {
      return "";
    }
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    return paramObject.toString();
  }
  
  protected void _serializeObjectId(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer, WritableObjectId paramWritableObjectId)
  {
    ObjectIdWriter localObjectIdWriter = _objectIdWriter;
    String str;
    if (_typeId == null)
    {
      str = null;
      if (str != null) {
        break label74;
      }
      paramTypeSerializer.writeTypePrefixForObject(paramObject, paramJsonGenerator);
      label28:
      paramWritableObjectId.writeAsField(paramJsonGenerator, paramSerializerProvider, localObjectIdWriter);
      if (_propertyFilterId == null) {
        break label86;
      }
      serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    for (;;)
    {
      if (str != null) {
        break label96;
      }
      paramTypeSerializer.writeTypeSuffixForObject(paramObject, paramJsonGenerator);
      return;
      str = _customTypeId(paramObject);
      break;
      label74:
      paramTypeSerializer.writeCustomTypePrefixForObject(paramObject, paramJsonGenerator, str);
      break label28;
      label86:
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    label96:
    paramTypeSerializer.writeCustomTypeSuffixForObject(paramObject, paramJsonGenerator, str);
  }
  
  protected final void _serializeWithObjectId(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    ObjectIdWriter localObjectIdWriter = _objectIdWriter;
    WritableObjectId localWritableObjectId = paramSerializerProvider.findObjectId(paramObject, generator);
    if (localWritableObjectId.writeAsId(paramJsonGenerator, paramSerializerProvider, localObjectIdWriter)) {
      return;
    }
    Object localObject = localWritableObjectId.generateId(paramObject);
    if (alwaysAsId)
    {
      serializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    _serializeObjectId(paramObject, paramJsonGenerator, paramSerializerProvider, paramTypeSerializer, localWritableObjectId);
  }
  
  protected final void _serializeWithObjectId(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, boolean paramBoolean)
  {
    ObjectIdWriter localObjectIdWriter = _objectIdWriter;
    WritableObjectId localWritableObjectId = paramSerializerProvider.findObjectId(paramObject, generator);
    if (localWritableObjectId.writeAsId(paramJsonGenerator, paramSerializerProvider, localObjectIdWriter)) {}
    for (;;)
    {
      return;
      Object localObject = localWritableObjectId.generateId(paramObject);
      if (alwaysAsId)
      {
        serializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
        return;
      }
      if (paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      localWritableObjectId.writeAsField(paramJsonGenerator, paramSerializerProvider, localObjectIdWriter);
      if (_propertyFilterId != null) {
        serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
      }
      while (paramBoolean)
      {
        paramJsonGenerator.writeEndObject();
        return;
        serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
      }
    }
  }
  
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    int i = 0;
    int j = 0;
    if (paramJsonFormatVisitorWrapper == null) {}
    for (;;)
    {
      return;
      paramJavaType = paramJsonFormatVisitorWrapper.expectObjectFormat(paramJavaType);
      if (paramJavaType != null) {
        if (_propertyFilterId != null)
        {
          PropertyFilter localPropertyFilter = findPropertyFilter(paramJsonFormatVisitorWrapper.getProvider(), _propertyFilterId, null);
          i = j;
          while (i < _props.length)
          {
            localPropertyFilter.depositSchemaProperty(_props[i], paramJavaType, paramJsonFormatVisitorWrapper.getProvider());
            i += 1;
          }
        }
        else
        {
          while (i < _props.length)
          {
            _props[i].depositSchemaProperty(paramJavaType);
            i += 1;
          }
        }
      }
    }
  }
  
  protected abstract BeanSerializerBase asArraySerializer();
  
  public JsonSerializer<?> createContextual(SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
  {
    Object localObject6 = null;
    Object localObject5 = paramSerializerProvider.getAnnotationIntrospector();
    Object localObject3;
    Object localObject7;
    Object localObject4;
    Object localObject1;
    if ((paramBeanProperty == null) || (localObject5 == null))
    {
      localObject3 = null;
      localObject7 = paramSerializerProvider.getConfig();
      if (localObject3 == null) {
        break label713;
      }
      localObject4 = ((AnnotationIntrospector)localObject5).findFormat((Annotated)localObject3);
      if (localObject4 == null) {
        break label713;
      }
      localObject1 = ((JsonFormat.Value)localObject4).getShape();
      localObject2 = localObject1;
      if (localObject1 != _serializationShape)
      {
        localObject2 = localObject1;
        if (_handledType.isEnum()) {
          switch (localObject1)
          {
          }
        }
      }
    }
    label199:
    label713:
    for (Object localObject2 = localObject1;; localObject2 = null)
    {
      localObject4 = _objectIdWriter;
      Object localObject8;
      if (localObject3 != null)
      {
        localObject7 = ((AnnotationIntrospector)localObject5).findPropertiesToIgnore((Annotated)localObject3);
        localObject1 = ((AnnotationIntrospector)localObject5).findObjectIdInfo((Annotated)localObject3);
        if (localObject1 == null)
        {
          localObject1 = localObject4;
          if (localObject4 != null)
          {
            localObject1 = ((AnnotationIntrospector)localObject5).findObjectReferenceInfo((Annotated)localObject3, new ObjectIdInfo(NAME_FOR_OBJECT_REF, null, null, null));
            localObject1 = _objectIdWriter.withAlwaysAsId(((ObjectIdInfo)localObject1).getAlwaysAsId());
          }
          localObject8 = ((AnnotationIntrospector)localObject5).findFilterId((Annotated)localObject3);
          localObject3 = localObject6;
          localObject5 = localObject1;
          localObject4 = localObject7;
          if (localObject8 != null) {
            if (_propertyFilterId != null)
            {
              localObject3 = localObject6;
              localObject5 = localObject1;
              localObject4 = localObject7;
              if (localObject8.equals(_propertyFilterId)) {}
            }
            else
            {
              localObject3 = localObject8;
              localObject4 = localObject7;
              localObject5 = localObject1;
            }
          }
        }
      }
      for (;;)
      {
        if (localObject5 != null)
        {
          paramSerializerProvider = ((ObjectIdWriter)localObject5).withSerializer(paramSerializerProvider.findValueSerializer(idType, paramBeanProperty));
          if (paramSerializerProvider == _objectIdWriter) {}
        }
        for (paramSerializerProvider = withObjectIdWriter(paramSerializerProvider);; paramSerializerProvider = this)
        {
          paramBeanProperty = paramSerializerProvider;
          if (localObject4 != null)
          {
            paramBeanProperty = paramSerializerProvider;
            if (localObject4.length != 0) {
              paramBeanProperty = paramSerializerProvider.withIgnorals((String[])localObject4);
            }
          }
          paramSerializerProvider = paramBeanProperty;
          if (localObject3 != null) {
            paramSerializerProvider = paramBeanProperty.withFilterId(localObject3);
          }
          paramBeanProperty = (BeanProperty)localObject2;
          if (localObject2 == null) {
            paramBeanProperty = _serializationShape;
          }
          localObject1 = paramSerializerProvider;
          if (paramBeanProperty == JsonFormat.Shape.ARRAY) {
            localObject1 = paramSerializerProvider.asArraySerializer();
          }
          return (JsonSerializer<?>)localObject1;
          localObject3 = paramBeanProperty.getMember();
          break;
          localObject1 = ((SerializationConfig)localObject7).introspectClassAnnotations(_handledType);
          return paramSerializerProvider.handlePrimaryContextualization(EnumSerializer.construct(_handledType, paramSerializerProvider.getConfig(), (BeanDescription)localObject1, (JsonFormat.Value)localObject4), paramBeanProperty);
          localObject1 = ((AnnotationIntrospector)localObject5).findObjectReferenceInfo((Annotated)localObject3, (ObjectIdInfo)localObject1);
          localObject4 = ((ObjectIdInfo)localObject1).getGeneratorType();
          localObject8 = paramSerializerProvider.constructType((Type)localObject4);
          localObject8 = paramSerializerProvider.getTypeFactory().findTypeParameters(localObject8, ObjectIdGenerator.class)[0];
          if (localObject4 == ObjectIdGenerators.PropertyGenerator.class)
          {
            localObject8 = ((ObjectIdInfo)localObject1).getPropertyName().getSimpleName();
            int j = _props.length;
            int i = 0;
            for (;;)
            {
              if (i == j) {
                throw new IllegalArgumentException("Invalid Object Id definition for " + _handledType.getName() + ": can not find property with name '" + (String)localObject8 + "'");
              }
              localObject4 = _props[i];
              if (((String)localObject8).equals(((BeanPropertyWriter)localObject4).getName()))
              {
                if (i > 0)
                {
                  System.arraycopy(_props, 0, _props, 1, i);
                  _props[0] = localObject4;
                  if (_filteredProps != null)
                  {
                    localObject8 = _filteredProps[i];
                    System.arraycopy(_filteredProps, 0, _filteredProps, 1, i);
                    _filteredProps[0] = localObject8;
                  }
                }
                localObject1 = ObjectIdWriter.construct(((BeanPropertyWriter)localObject4).getType(), null, new PropertyBasedObjectIdGenerator((ObjectIdInfo)localObject1, (BeanPropertyWriter)localObject4), ((ObjectIdInfo)localObject1).getAlwaysAsId());
                break;
              }
              i += 1;
            }
          }
          localObject4 = paramSerializerProvider.objectIdGeneratorInstance((Annotated)localObject3, (ObjectIdInfo)localObject1);
          localObject1 = ObjectIdWriter.construct((JavaType)localObject8, ((ObjectIdInfo)localObject1).getPropertyName(), (ObjectIdGenerator)localObject4, ((ObjectIdInfo)localObject1).getAlwaysAsId());
          break label199;
        }
        localObject1 = null;
        localObject3 = localObject6;
        localObject5 = localObject4;
        localObject4 = localObject1;
      }
    }
  }
  
  protected JsonSerializer<Object> findConvertingSerializer(SerializerProvider paramSerializerProvider, BeanPropertyWriter paramBeanPropertyWriter)
  {
    JavaType localJavaType = null;
    Object localObject2 = null;
    Object localObject3 = paramSerializerProvider.getAnnotationIntrospector();
    Object localObject1 = localJavaType;
    if (localObject3 != null)
    {
      AnnotatedMember localAnnotatedMember = paramBeanPropertyWriter.getMember();
      localObject1 = localJavaType;
      if (localAnnotatedMember != null)
      {
        localObject3 = ((AnnotationIntrospector)localObject3).findSerializationConverter(localAnnotatedMember);
        localObject1 = localJavaType;
        if (localObject3 != null)
        {
          localObject1 = paramSerializerProvider.converterInstance(paramBeanPropertyWriter.getMember(), localObject3);
          localJavaType = ((Converter)localObject1).getOutputType(paramSerializerProvider.getTypeFactory());
          if (!localJavaType.isJavaLangObject()) {
            break label99;
          }
        }
      }
    }
    label99:
    for (paramSerializerProvider = (SerializerProvider)localObject2;; paramSerializerProvider = paramSerializerProvider.findValueSerializer(localJavaType, paramBeanPropertyWriter))
    {
      localObject1 = new StdDelegatingSerializer((Converter)localObject1, localJavaType, paramSerializerProvider);
      return (JsonSerializer<Object>)localObject1;
    }
  }
  
  @Deprecated
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    ObjectNode localObjectNode1 = createSchemaNode("object", true);
    paramType = (JsonSerializableSchema)_handledType.getAnnotation(JsonSerializableSchema.class);
    if (paramType != null)
    {
      paramType = paramType.id();
      if ((paramType != null) && (paramType.length() > 0)) {
        localObjectNode1.put("id", paramType);
      }
    }
    ObjectNode localObjectNode2 = localObjectNode1.objectNode();
    int i;
    label83:
    BeanPropertyWriter localBeanPropertyWriter;
    if (_propertyFilterId != null)
    {
      paramType = findPropertyFilter(paramSerializerProvider, _propertyFilterId, null);
      i = 0;
      if (i >= _props.length) {
        break label138;
      }
      localBeanPropertyWriter = _props[i];
      if (paramType != null) {
        break label124;
      }
      localBeanPropertyWriter.depositSchemaProperty(localObjectNode2, paramSerializerProvider);
    }
    for (;;)
    {
      i += 1;
      break label83;
      paramType = null;
      break;
      label124:
      paramType.depositSchemaProperty(localBeanPropertyWriter, localObjectNode2, paramSerializerProvider);
    }
    label138:
    localObjectNode1.put("properties", localObjectNode2);
    return localObjectNode1;
  }
  
  public void resolve(SerializerProvider paramSerializerProvider)
  {
    int i;
    int j;
    label18:
    BeanPropertyWriter localBeanPropertyWriter;
    Object localObject1;
    Object localObject2;
    if (_filteredProps == null)
    {
      i = 0;
      int k = _props.length;
      j = 0;
      if (j >= k) {
        break label300;
      }
      localBeanPropertyWriter = _props[j];
      if ((!localBeanPropertyWriter.willSuppressNulls()) && (!localBeanPropertyWriter.hasNullSerializer()))
      {
        localObject1 = paramSerializerProvider.findNullValueSerializer(localBeanPropertyWriter);
        if (localObject1 != null)
        {
          localBeanPropertyWriter.assignNullSerializer((JsonSerializer)localObject1);
          if (j < i)
          {
            localObject2 = _filteredProps[j];
            if (localObject2 != null) {
              ((BeanPropertyWriter)localObject2).assignNullSerializer((JsonSerializer)localObject1);
            }
          }
        }
      }
      if (!localBeanPropertyWriter.hasSerializer())
      {
        localObject2 = findConvertingSerializer(paramSerializerProvider, localBeanPropertyWriter);
        localObject1 = localObject2;
        if (localObject2 != null) {
          break label265;
        }
        localObject1 = localBeanPropertyWriter.getSerializationType();
        localObject2 = localObject1;
        if (localObject1 != null) {
          break label197;
        }
        localObject1 = paramSerializerProvider.constructType(localBeanPropertyWriter.getGenericPropertyType());
        localObject2 = localObject1;
        if (((JavaType)localObject1).isFinal()) {
          break label197;
        }
        if ((((JavaType)localObject1).isContainerType()) || (((JavaType)localObject1).containedTypeCount() > 0)) {
          localBeanPropertyWriter.setNonTrivialBaseType((JavaType)localObject1);
        }
      }
    }
    for (;;)
    {
      j += 1;
      break label18;
      i = _filteredProps.length;
      break;
      label197:
      JsonSerializer localJsonSerializer = paramSerializerProvider.findValueSerializer((JavaType)localObject2, localBeanPropertyWriter);
      localObject1 = localJsonSerializer;
      if (((JavaType)localObject2).isContainerType())
      {
        localObject2 = (TypeSerializer)((JavaType)localObject2).getContentType().getTypeHandler();
        localObject1 = localJsonSerializer;
        if (localObject2 != null)
        {
          localObject1 = localJsonSerializer;
          if ((localJsonSerializer instanceof ContainerSerializer)) {
            localObject1 = ((ContainerSerializer)localJsonSerializer).withValueTypeSerializer((TypeSerializer)localObject2);
          }
        }
      }
      label265:
      localBeanPropertyWriter.assignSerializer((JsonSerializer)localObject1);
      if (j < i)
      {
        localObject2 = _filteredProps[j];
        if (localObject2 != null) {
          ((BeanPropertyWriter)localObject2).assignSerializer((JsonSerializer)localObject1);
        }
      }
    }
    label300:
    if (_anyGetterWriter != null) {
      _anyGetterWriter.resolve(paramSerializerProvider);
    }
  }
  
  public abstract void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider);
  
  protected void serializeFields(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    BeanPropertyWriter[] arrayOfBeanPropertyWriter;
    if ((_filteredProps != null) && (paramSerializerProvider.getActiveView() != null)) {
      arrayOfBeanPropertyWriter = _filteredProps;
    }
    int k;
    for (;;)
    {
      int j = 0;
      k = 0;
      int i = 0;
      try
      {
        int m = arrayOfBeanPropertyWriter.length;
        for (;;)
        {
          if (i < m)
          {
            BeanPropertyWriter localBeanPropertyWriter = arrayOfBeanPropertyWriter[i];
            if (localBeanPropertyWriter != null)
            {
              j = i;
              k = i;
              localBeanPropertyWriter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
            }
            i += 1;
            continue;
            arrayOfBeanPropertyWriter = _props;
            break;
          }
        }
        j = i;
        k = i;
        if (_anyGetterWriter != null)
        {
          j = i;
          k = i;
          _anyGetterWriter.getAndSerialize(paramObject, paramJsonGenerator, paramSerializerProvider);
        }
        return;
      }
      catch (Exception localException)
      {
        if (j == arrayOfBeanPropertyWriter.length) {}
        for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[j].getName())
        {
          wrapAndThrow(paramSerializerProvider, localException, paramObject, paramJsonGenerator);
          return;
        }
      }
      catch (StackOverflowError paramJsonGenerator)
      {
        paramSerializerProvider = new JsonMappingException("Infinite recursion (StackOverflowError)", paramJsonGenerator);
        if (k != arrayOfBeanPropertyWriter.length) {}
      }
    }
    for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[k].getName())
    {
      paramSerializerProvider.prependPath(new JsonMappingException.Reference(paramObject, paramJsonGenerator));
      throw paramSerializerProvider;
    }
  }
  
  protected void serializeFieldsFiltered(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    BeanPropertyWriter[] arrayOfBeanPropertyWriter;
    PropertyFilter localPropertyFilter;
    if ((_filteredProps != null) && (paramSerializerProvider.getActiveView() != null))
    {
      arrayOfBeanPropertyWriter = _filteredProps;
      localPropertyFilter = findPropertyFilter(paramSerializerProvider, _propertyFilterId, paramObject);
      if (localPropertyFilter != null) {
        break label54;
      }
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    for (;;)
    {
      return;
      arrayOfBeanPropertyWriter = _props;
      break;
      label54:
      int j = 0;
      int k = 0;
      int i = 0;
      try
      {
        int m = arrayOfBeanPropertyWriter.length;
        if (i < m)
        {
          BeanPropertyWriter localBeanPropertyWriter = arrayOfBeanPropertyWriter[i];
          if (localBeanPropertyWriter != null)
          {
            j = i;
            k = i;
            localPropertyFilter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider, localBeanPropertyWriter);
          }
        }
        else
        {
          j = i;
          k = i;
          if (_anyGetterWriter == null) {
            continue;
          }
          j = i;
          k = i;
          _anyGetterWriter.getAndFilter(paramObject, paramJsonGenerator, paramSerializerProvider, localPropertyFilter);
          return;
        }
      }
      catch (Exception localException)
      {
        if (j == arrayOfBeanPropertyWriter.length) {}
        for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[j].getName())
        {
          wrapAndThrow(paramSerializerProvider, localException, paramObject, paramJsonGenerator);
          return;
        }
      }
      catch (StackOverflowError paramJsonGenerator)
      {
        for (;;)
        {
          paramSerializerProvider = new JsonMappingException("Infinite recursion (StackOverflowError)", paramJsonGenerator);
          if (k == arrayOfBeanPropertyWriter.length) {}
          for (paramJsonGenerator = "[anySetter]";; paramJsonGenerator = arrayOfBeanPropertyWriter[k].getName())
          {
            paramSerializerProvider.prependPath(new JsonMappingException.Reference(paramObject, paramJsonGenerator));
            throw paramSerializerProvider;
          }
          i += 1;
        }
      }
    }
  }
  
  public void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    if (_objectIdWriter != null)
    {
      _serializeWithObjectId(paramObject, paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
      return;
    }
    String str;
    if (_typeId == null)
    {
      str = null;
      if (str != null) {
        break label76;
      }
      paramTypeSerializer.writeTypePrefixForObject(paramObject, paramJsonGenerator);
      label39:
      if (_propertyFilterId == null) {
        break label88;
      }
      serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    for (;;)
    {
      if (str != null) {
        break label98;
      }
      paramTypeSerializer.writeTypeSuffixForObject(paramObject, paramJsonGenerator);
      return;
      str = _customTypeId(paramObject);
      break;
      label76:
      paramTypeSerializer.writeCustomTypePrefixForObject(paramObject, paramJsonGenerator, str);
      break label39;
      label88:
      serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
    label98:
    paramTypeSerializer.writeCustomTypeSuffixForObject(paramObject, paramJsonGenerator, str);
  }
  
  public boolean usesObjectId()
  {
    return _objectIdWriter != null;
  }
  
  protected abstract BeanSerializerBase withFilterId(Object paramObject);
  
  protected abstract BeanSerializerBase withIgnorals(String[] paramArrayOfString);
  
  public abstract BeanSerializerBase withObjectIdWriter(ObjectIdWriter paramObjectIdWriter);
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.BeanSerializerBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */