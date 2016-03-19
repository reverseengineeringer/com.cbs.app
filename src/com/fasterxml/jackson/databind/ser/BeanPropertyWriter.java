package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import com.fasterxml.jackson.databind.ser.impl.UnwrappingBeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;

public class BeanPropertyWriter
  extends PropertyWriter
  implements BeanProperty
{
  public static final Object MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;
  protected final Method _accessorMethod;
  protected final JavaType _cfgSerializationType;
  protected final Annotations _contextAnnotations;
  protected final JavaType _declaredType;
  protected transient PropertySerializerMap _dynamicSerializers;
  protected final Field _field;
  protected final Class<?>[] _includeInViews;
  protected HashMap<Object, Object> _internalSettings;
  protected final AnnotatedMember _member;
  protected final PropertyMetadata _metadata;
  protected final SerializedString _name;
  protected JavaType _nonTrivialBaseType;
  protected JsonSerializer<Object> _nullSerializer;
  protected JsonSerializer<Object> _serializer;
  protected final boolean _suppressNulls;
  protected final Object _suppressableValue;
  protected TypeSerializer _typeSerializer;
  protected final PropertyName _wrapperName;
  
  protected BeanPropertyWriter()
  {
    _member = null;
    _contextAnnotations = null;
    _name = null;
    _wrapperName = null;
    _metadata = null;
    _includeInViews = null;
    _declaredType = null;
    _serializer = null;
    _dynamicSerializers = null;
    _typeSerializer = null;
    _cfgSerializationType = null;
    _accessorMethod = null;
    _field = null;
    _suppressNulls = false;
    _suppressableValue = null;
    _nullSerializer = null;
  }
  
  public BeanPropertyWriter(BeanPropertyDefinition paramBeanPropertyDefinition, AnnotatedMember paramAnnotatedMember, Annotations paramAnnotations, JavaType paramJavaType1, JsonSerializer<?> paramJsonSerializer, TypeSerializer paramTypeSerializer, JavaType paramJavaType2, boolean paramBoolean, Object paramObject)
  {
    _member = paramAnnotatedMember;
    _contextAnnotations = paramAnnotations;
    _name = new SerializedString(paramBeanPropertyDefinition.getName());
    _wrapperName = paramBeanPropertyDefinition.getWrapperName();
    _metadata = paramBeanPropertyDefinition.getMetadata();
    _includeInViews = paramBeanPropertyDefinition.findViews();
    _declaredType = paramJavaType1;
    _serializer = paramJsonSerializer;
    if (paramJsonSerializer == null)
    {
      paramBeanPropertyDefinition = PropertySerializerMap.emptyForProperties();
      _dynamicSerializers = paramBeanPropertyDefinition;
      _typeSerializer = paramTypeSerializer;
      _cfgSerializationType = paramJavaType2;
      if (!(paramAnnotatedMember instanceof AnnotatedField)) {
        break label137;
      }
      _accessorMethod = null;
      _field = ((Field)paramAnnotatedMember.getMember());
    }
    for (;;)
    {
      _suppressNulls = paramBoolean;
      _suppressableValue = paramObject;
      _nullSerializer = null;
      return;
      paramBeanPropertyDefinition = null;
      break;
      label137:
      if ((paramAnnotatedMember instanceof AnnotatedMethod))
      {
        _accessorMethod = ((Method)paramAnnotatedMember.getMember());
        _field = null;
      }
      else
      {
        _accessorMethod = null;
        _field = null;
      }
    }
  }
  
  protected BeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter)
  {
    this(paramBeanPropertyWriter, _name);
  }
  
  protected BeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter, SerializedString paramSerializedString)
  {
    _name = paramSerializedString;
    _wrapperName = _wrapperName;
    _member = _member;
    _contextAnnotations = _contextAnnotations;
    _declaredType = _declaredType;
    _accessorMethod = _accessorMethod;
    _field = _field;
    _serializer = _serializer;
    _nullSerializer = _nullSerializer;
    if (_internalSettings != null) {
      _internalSettings = new HashMap(_internalSettings);
    }
    _cfgSerializationType = _cfgSerializationType;
    _dynamicSerializers = _dynamicSerializers;
    _suppressNulls = _suppressNulls;
    _suppressableValue = _suppressableValue;
    _includeInViews = _includeInViews;
    _typeSerializer = _typeSerializer;
    _nonTrivialBaseType = _nonTrivialBaseType;
    _metadata = _metadata;
  }
  
  protected BeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter, PropertyName paramPropertyName)
  {
    _name = new SerializedString(paramPropertyName.getSimpleName());
    _wrapperName = _wrapperName;
    _member = _member;
    _contextAnnotations = _contextAnnotations;
    _declaredType = _declaredType;
    _accessorMethod = _accessorMethod;
    _field = _field;
    _serializer = _serializer;
    _nullSerializer = _nullSerializer;
    if (_internalSettings != null) {
      _internalSettings = new HashMap(_internalSettings);
    }
    _cfgSerializationType = _cfgSerializationType;
    _dynamicSerializers = _dynamicSerializers;
    _suppressNulls = _suppressNulls;
    _suppressableValue = _suppressableValue;
    _includeInViews = _includeInViews;
    _typeSerializer = _typeSerializer;
    _nonTrivialBaseType = _nonTrivialBaseType;
    _metadata = _metadata;
  }
  
  protected void _depositSchemaProperty(ObjectNode paramObjectNode, JsonNode paramJsonNode)
  {
    paramObjectNode.set(getName(), paramJsonNode);
  }
  
  protected JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
  {
    if (_nonTrivialBaseType != null) {}
    for (paramClass = paramPropertySerializerMap.findAndAddPrimarySerializer(paramSerializerProvider.constructSpecializedType(_nonTrivialBaseType, paramClass), paramSerializerProvider, this);; paramClass = paramPropertySerializerMap.findAndAddPrimarySerializer(paramClass, paramSerializerProvider, this))
    {
      if (paramPropertySerializerMap != map) {
        _dynamicSerializers = map;
      }
      return serializer;
    }
  }
  
  protected boolean _handleSelfReference(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<?> paramJsonSerializer)
  {
    if ((paramSerializerProvider.isEnabled(SerializationFeature.FAIL_ON_SELF_REFERENCES)) && (!paramJsonSerializer.usesObjectId()) && ((paramJsonSerializer instanceof BeanSerializerBase))) {
      throw new JsonMappingException("Direct self-reference leading to cycle");
    }
    return false;
  }
  
  public void assignNullSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    if ((_nullSerializer != null) && (_nullSerializer != paramJsonSerializer)) {
      throw new IllegalStateException("Can not override null serializer");
    }
    _nullSerializer = paramJsonSerializer;
  }
  
  public void assignSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    if ((_serializer != null) && (_serializer != paramJsonSerializer)) {
      throw new IllegalStateException("Can not override serializer");
    }
    _serializer = paramJsonSerializer;
  }
  
  public void depositSchemaProperty(JsonObjectFormatVisitor paramJsonObjectFormatVisitor)
  {
    if (paramJsonObjectFormatVisitor != null)
    {
      if (isRequired()) {
        paramJsonObjectFormatVisitor.property(this);
      }
    }
    else {
      return;
    }
    paramJsonObjectFormatVisitor.optionalProperty(this);
  }
  
  @Deprecated
  public void depositSchemaProperty(ObjectNode paramObjectNode, SerializerProvider paramSerializerProvider)
  {
    Object localObject = getSerializationType();
    JsonSerializer localJsonSerializer1;
    boolean bool;
    if (localObject == null)
    {
      localObject = getGenericPropertyType();
      JsonSerializer localJsonSerializer2 = getSerializer();
      localJsonSerializer1 = localJsonSerializer2;
      if (localJsonSerializer2 == null) {
        localJsonSerializer1 = paramSerializerProvider.findValueSerializer(getType(), this);
      }
      if (isRequired()) {
        break label92;
      }
      bool = true;
      label52:
      if (!(localJsonSerializer1 instanceof SchemaAware)) {
        break label97;
      }
    }
    label92:
    label97:
    for (paramSerializerProvider = ((SchemaAware)localJsonSerializer1).getSchema(paramSerializerProvider, (Type)localObject, bool);; paramSerializerProvider = JsonSchema.getDefaultSchemaNode())
    {
      _depositSchemaProperty(paramObjectNode, paramSerializerProvider);
      return;
      localObject = ((JavaType)localObject).getRawClass();
      break;
      bool = false;
      break label52;
    }
  }
  
  public final Object get(Object paramObject)
  {
    if (_accessorMethod == null) {
      return _field.get(paramObject);
    }
    return _accessorMethod.invoke(paramObject, new Object[0]);
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    if (_member == null) {
      return null;
    }
    return _member.getAnnotation(paramClass);
  }
  
  public <A extends Annotation> A getContextAnnotation(Class<A> paramClass)
  {
    if (_contextAnnotations == null) {
      return null;
    }
    return _contextAnnotations.get(paramClass);
  }
  
  public PropertyName getFullName()
  {
    return new PropertyName(_name.getValue());
  }
  
  public Type getGenericPropertyType()
  {
    if (_accessorMethod != null) {
      return _accessorMethod.getGenericReturnType();
    }
    if (_field != null) {
      return _field.getGenericType();
    }
    return null;
  }
  
  public Object getInternalSetting(Object paramObject)
  {
    if (_internalSettings == null) {
      return null;
    }
    return _internalSettings.get(paramObject);
  }
  
  public AnnotatedMember getMember()
  {
    return _member;
  }
  
  public PropertyMetadata getMetadata()
  {
    return _metadata;
  }
  
  public String getName()
  {
    return _name.getValue();
  }
  
  public Class<?> getPropertyType()
  {
    if (_accessorMethod != null) {
      return _accessorMethod.getReturnType();
    }
    return _field.getType();
  }
  
  public Class<?> getRawSerializationType()
  {
    if (_cfgSerializationType == null) {
      return null;
    }
    return _cfgSerializationType.getRawClass();
  }
  
  public JavaType getSerializationType()
  {
    return _cfgSerializationType;
  }
  
  public SerializableString getSerializedName()
  {
    return _name;
  }
  
  public JsonSerializer<Object> getSerializer()
  {
    return _serializer;
  }
  
  public JavaType getType()
  {
    return _declaredType;
  }
  
  public Class<?>[] getViews()
  {
    return _includeInViews;
  }
  
  public PropertyName getWrapperName()
  {
    return _wrapperName;
  }
  
  public boolean hasNullSerializer()
  {
    return _nullSerializer != null;
  }
  
  public boolean hasSerializer()
  {
    return _serializer != null;
  }
  
  public boolean isRequired()
  {
    return _metadata.isRequired();
  }
  
  public boolean isUnwrapping()
  {
    return false;
  }
  
  public boolean isVirtual()
  {
    return false;
  }
  
  public Object removeInternalSetting(Object paramObject)
  {
    if (_internalSettings != null)
    {
      paramObject = _internalSettings.remove(paramObject);
      if (_internalSettings.size() == 0) {
        _internalSettings = null;
      }
      return paramObject;
    }
    return null;
  }
  
  public BeanPropertyWriter rename(NameTransformer paramNameTransformer)
  {
    paramNameTransformer = paramNameTransformer.transform(_name.getValue());
    if (paramNameTransformer.equals(_name.toString())) {
      return this;
    }
    return new BeanPropertyWriter(this, new PropertyName(paramNameTransformer));
  }
  
  public void serializeAsElement(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Object localObject;
    if (_accessorMethod == null)
    {
      localObject = _field.get(paramObject);
      if (localObject != null) {
        break label62;
      }
      if (_nullSerializer == null) {
        break label57;
      }
      _nullSerializer.serialize(null, paramJsonGenerator, paramSerializerProvider);
    }
    label57:
    label62:
    JsonSerializer localJsonSerializer1;
    do
    {
      return;
      localObject = _accessorMethod.invoke(paramObject, new Object[0]);
      break;
      paramJsonGenerator.writeNull();
      return;
      JsonSerializer localJsonSerializer2 = _serializer;
      localJsonSerializer1 = localJsonSerializer2;
      if (localJsonSerializer2 == null)
      {
        Class localClass = localObject.getClass();
        PropertySerializerMap localPropertySerializerMap = _dynamicSerializers;
        localJsonSerializer2 = localPropertySerializerMap.serializerFor(localClass);
        localJsonSerializer1 = localJsonSerializer2;
        if (localJsonSerializer2 == null) {
          localJsonSerializer1 = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
        }
      }
      if (_suppressableValue != null) {
        if (MARKER_FOR_EMPTY == _suppressableValue)
        {
          if (localJsonSerializer1.isEmpty(paramSerializerProvider, localObject)) {
            serializeAsPlaceholder(paramObject, paramJsonGenerator, paramSerializerProvider);
          }
        }
        else if (_suppressableValue.equals(localObject))
        {
          serializeAsPlaceholder(paramObject, paramJsonGenerator, paramSerializerProvider);
          return;
        }
      }
    } while ((localObject == paramObject) && (_handleSelfReference(paramObject, paramJsonGenerator, paramSerializerProvider, localJsonSerializer1)));
    if (_typeSerializer == null)
    {
      localJsonSerializer1.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    localJsonSerializer1.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, _typeSerializer);
  }
  
  public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Object localObject;
    if (_accessorMethod == null)
    {
      localObject = _field.get(paramObject);
      if (localObject != null) {
        break label65;
      }
      if (_nullSerializer != null)
      {
        paramJsonGenerator.writeFieldName(_name);
        _nullSerializer.serialize(null, paramJsonGenerator, paramSerializerProvider);
      }
    }
    label65:
    JsonSerializer localJsonSerializer1;
    label150:
    label193:
    do
    {
      return;
      while ((localObject == paramObject) && (_handleSelfReference(paramObject, paramJsonGenerator, paramSerializerProvider, localJsonSerializer1))) {
        do
        {
          localObject = _accessorMethod.invoke(paramObject, new Object[0]);
          break;
          JsonSerializer localJsonSerializer2 = _serializer;
          localJsonSerializer1 = localJsonSerializer2;
          if (localJsonSerializer2 == null)
          {
            Class localClass = localObject.getClass();
            PropertySerializerMap localPropertySerializerMap = _dynamicSerializers;
            localJsonSerializer2 = localPropertySerializerMap.serializerFor(localClass);
            localJsonSerializer1 = localJsonSerializer2;
            if (localJsonSerializer2 == null) {
              localJsonSerializer1 = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
            }
          }
          if (_suppressableValue == null) {
            break label150;
          }
          if (MARKER_FOR_EMPTY != _suppressableValue) {
            break label193;
          }
        } while (localJsonSerializer1.isEmpty(paramSerializerProvider, localObject));
      }
      paramJsonGenerator.writeFieldName(_name);
      if (_typeSerializer != null) {
        break label206;
      }
      localJsonSerializer1.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
      return;
    } while (!_suppressableValue.equals(localObject));
    return;
    label206:
    localJsonSerializer1.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, _typeSerializer);
  }
  
  public void serializeAsOmittedField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (!paramJsonGenerator.canOmitFields()) {
      paramJsonGenerator.writeOmittedField(_name.getValue());
    }
  }
  
  public void serializeAsPlaceholder(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (_nullSerializer != null)
    {
      _nullSerializer.serialize(null, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    paramJsonGenerator.writeNull();
  }
  
  public Object setInternalSetting(Object paramObject1, Object paramObject2)
  {
    if (_internalSettings == null) {
      _internalSettings = new HashMap();
    }
    return _internalSettings.put(paramObject1, paramObject2);
  }
  
  public void setNonTrivialBaseType(JavaType paramJavaType)
  {
    _nonTrivialBaseType = paramJavaType;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(40);
    localStringBuilder.append("property '").append(getName()).append("' (");
    if (_accessorMethod != null)
    {
      localStringBuilder.append("via method ").append(_accessorMethod.getDeclaringClass().getName()).append("#").append(_accessorMethod.getName());
      if (_serializer != null) {
        break label160;
      }
      localStringBuilder.append(", no static serializer");
    }
    for (;;)
    {
      localStringBuilder.append(')');
      return localStringBuilder.toString();
      if (_field != null)
      {
        localStringBuilder.append("field \"").append(_field.getDeclaringClass().getName()).append("#").append(_field.getName());
        break;
      }
      localStringBuilder.append("virtual");
      break;
      label160:
      localStringBuilder.append(", static serializer of type " + _serializer.getClass().getName());
    }
  }
  
  public BeanPropertyWriter unwrappingWriter(NameTransformer paramNameTransformer)
  {
    return new UnwrappingBeanPropertyWriter(this, paramNameTransformer);
  }
  
  public boolean willSuppressNulls()
  {
    return _suppressNulls;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.BeanPropertyWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */