package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanAsArrayDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Map;

public class BeanDeserializer
  extends BeanDeserializerBase
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  
  protected BeanDeserializer(BeanDeserializerBase paramBeanDeserializerBase)
  {
    super(paramBeanDeserializerBase, _ignoreAllUnknown);
  }
  
  public BeanDeserializer(BeanDeserializerBase paramBeanDeserializerBase, ObjectIdReader paramObjectIdReader)
  {
    super(paramBeanDeserializerBase, paramObjectIdReader);
  }
  
  protected BeanDeserializer(BeanDeserializerBase paramBeanDeserializerBase, NameTransformer paramNameTransformer)
  {
    super(paramBeanDeserializerBase, paramNameTransformer);
  }
  
  public BeanDeserializer(BeanDeserializerBase paramBeanDeserializerBase, HashSet<String> paramHashSet)
  {
    super(paramBeanDeserializerBase, paramHashSet);
  }
  
  protected BeanDeserializer(BeanDeserializerBase paramBeanDeserializerBase, boolean paramBoolean)
  {
    super(paramBeanDeserializerBase, paramBoolean);
  }
  
  public BeanDeserializer(BeanDeserializerBuilder paramBeanDeserializerBuilder, BeanDescription paramBeanDescription, BeanPropertyMap paramBeanPropertyMap, Map<String, SettableBeanProperty> paramMap, HashSet<String> paramHashSet, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramBeanDeserializerBuilder, paramBeanDescription, paramBeanPropertyMap, paramMap, paramHashSet, paramBoolean1, paramBoolean2);
  }
  
  private final Object vanillaDeserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, JsonToken paramJsonToken)
  {
    Object localObject = _valueInstantiator.createUsingDefault(paramDeserializationContext);
    paramJsonParser.setCurrentValue(localObject);
    while (paramJsonToken == JsonToken.FIELD_NAME)
    {
      paramJsonToken = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      if (!_beanProperties.findDeserializeAndSet(paramJsonParser, paramDeserializationContext, localObject, paramJsonToken)) {
        handleUnknownVanilla(paramJsonParser, paramDeserializationContext, localObject, paramJsonToken);
      }
      paramJsonToken = paramJsonParser.nextToken();
    }
    return localObject;
  }
  
  protected final Object _deserializeOther(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, JsonToken paramJsonToken)
  {
    switch (paramJsonToken)
    {
    default: 
      throw paramDeserializationContext.mappingException(handledType());
    case ???: 
      return deserializeFromString(paramJsonParser, paramDeserializationContext);
    case ???: 
      return deserializeFromNumber(paramJsonParser, paramDeserializationContext);
    case ???: 
      return deserializeFromDouble(paramJsonParser, paramDeserializationContext);
    case ???: 
      return deserializeFromEmbedded(paramJsonParser, paramDeserializationContext);
    case ???: 
    case ???: 
      return deserializeFromBoolean(paramJsonParser, paramDeserializationContext);
    case ???: 
      return deserializeFromArray(paramJsonParser, paramDeserializationContext);
    }
    if (_vanillaProcessing) {
      return vanillaDeserialize(paramJsonParser, paramDeserializationContext, paramJsonToken);
    }
    if (_objectIdReader != null) {
      return deserializeWithObjectId(paramJsonParser, paramDeserializationContext);
    }
    return deserializeFromObject(paramJsonParser, paramDeserializationContext);
  }
  
  protected Object _deserializeUsingPropertyBased(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    PropertyBasedCreator localPropertyBasedCreator = _propertyBasedCreator;
    PropertyValueBuffer localPropertyValueBuffer = localPropertyBasedCreator.startBuilding(paramJsonParser, paramDeserializationContext, _objectIdReader);
    Object localObject2 = paramJsonParser.getCurrentToken();
    Object localObject1 = null;
    Object localObject4;
    Object localObject3;
    if (localObject2 == JsonToken.FIELD_NAME)
    {
      localObject4 = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      SettableBeanProperty localSettableBeanProperty = localPropertyBasedCreator.findCreatorProperty((String)localObject4);
      if (localSettableBeanProperty != null)
      {
        Object localObject5 = deserializeWithErrorWrapping(localSettableBeanProperty, paramJsonParser, paramDeserializationContext, (String)localObject4);
        localObject2 = localObject1;
        if (!localPropertyValueBuffer.assignParameter(localSettableBeanProperty.getCreatorIndex(), localObject5)) {
          break label246;
        }
        paramJsonParser.nextToken();
        try
        {
          localObject2 = localPropertyBasedCreator.build(paramDeserializationContext, localPropertyValueBuffer);
          if (localObject2 == null) {
            throw paramDeserializationContext.instantiationException(_beanType.getRawClass(), "JSON Creator returned null");
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            wrapAndThrow(localException, _beanType.getRawClass(), (String)localObject4, paramDeserializationContext);
            localObject3 = null;
          }
          paramJsonParser.setCurrentValue(localObject3);
          if (localObject3.getClass() != _beanType.getRawClass()) {
            return handlePolymorphic(paramJsonParser, paramDeserializationContext, localObject3, (TokenBuffer)localObject1);
          }
          if (localObject1 == null) {}
        }
      }
    }
    for (localObject1 = handleUnknownProperties(paramDeserializationContext, localObject3, (TokenBuffer)localObject1);; localObject1 = localObject3)
    {
      return deserialize(paramJsonParser, paramDeserializationContext, localObject1);
      localObject3 = localObject1;
      if (!localPropertyValueBuffer.readIdProperty((String)localObject4))
      {
        localObject3 = _beanProperties.find((String)localObject4);
        if (localObject3 == null) {
          break label262;
        }
        localPropertyValueBuffer.bufferProperty((SettableBeanProperty)localObject3, ((SettableBeanProperty)localObject3).deserialize(paramJsonParser, paramDeserializationContext));
        localObject3 = localObject1;
      }
      for (;;)
      {
        label246:
        localObject4 = paramJsonParser.nextToken();
        localObject1 = localObject3;
        localObject3 = localObject4;
        break;
        label262:
        if ((_ignorableProps != null) && (_ignorableProps.contains(localObject4)))
        {
          handleIgnoredProperty(paramJsonParser, paramDeserializationContext, handledType(), (String)localObject4);
          localObject3 = localObject1;
        }
        else if (_anySetter != null)
        {
          localPropertyValueBuffer.bufferAnyProperty(_anySetter, (String)localObject4, _anySetter.deserialize(paramJsonParser, paramDeserializationContext));
          localObject3 = localObject1;
        }
        else
        {
          localObject3 = localObject1;
          if (localObject1 == null) {
            localObject3 = new TokenBuffer(paramJsonParser);
          }
          ((TokenBuffer)localObject3).writeFieldName((String)localObject4);
          ((TokenBuffer)localObject3).copyCurrentStructure(paramJsonParser);
        }
      }
      try
      {
        paramJsonParser = localPropertyBasedCreator.build(paramDeserializationContext, localPropertyValueBuffer);
        if (localObject1 == null) {
          break label421;
        }
        if (paramJsonParser.getClass() != _beanType.getRawClass()) {
          return handlePolymorphic(null, paramDeserializationContext, paramJsonParser, (TokenBuffer)localObject1);
        }
      }
      catch (Exception paramJsonParser)
      {
        for (;;)
        {
          wrapInstantiationProblem(paramJsonParser, paramDeserializationContext);
          paramJsonParser = null;
        }
      }
      return handleUnknownProperties(paramDeserializationContext, paramJsonParser, (TokenBuffer)localObject1);
      label421:
      return paramJsonParser;
    }
  }
  
  protected Object _missingToken(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    throw paramDeserializationContext.endOfInputException(handledType());
  }
  
  protected BeanDeserializerBase asArrayDeserializer()
  {
    return new BeanAsArrayDeserializer(this, _beanProperties.getPropertiesInInsertionOrder());
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.START_OBJECT)
    {
      if (_vanillaProcessing) {
        return vanillaDeserialize(paramJsonParser, paramDeserializationContext, paramJsonParser.nextToken());
      }
      paramJsonParser.nextToken();
      if (_objectIdReader != null) {
        return deserializeWithObjectId(paramJsonParser, paramDeserializationContext);
      }
      return deserializeFromObject(paramJsonParser, paramDeserializationContext);
    }
    return _deserializeOther(paramJsonParser, paramDeserializationContext, localJsonToken);
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    paramJsonParser.setCurrentValue(paramObject);
    if (_injectables != null) {
      injectValues(paramDeserializationContext, paramObject);
    }
    if (_unwrappedPropertyHandler != null)
    {
      localObject1 = deserializeWithUnwrapped(paramJsonParser, paramDeserializationContext, paramObject);
      return localObject1;
    }
    if (_externalTypeIdHandler != null) {
      return deserializeWithExternalTypeId(paramJsonParser, paramDeserializationContext, paramObject);
    }
    Object localObject2 = paramJsonParser.getCurrentToken();
    Object localObject1 = localObject2;
    if (localObject2 == JsonToken.START_OBJECT) {
      localObject1 = paramJsonParser.nextToken();
    }
    localObject2 = localObject1;
    if (_needViewProcesing)
    {
      Class localClass = paramDeserializationContext.getActiveView();
      localObject2 = localObject1;
      if (localClass != null) {
        return deserializeWithView(paramJsonParser, paramDeserializationContext, paramObject, localClass);
      }
    }
    for (;;)
    {
      localObject1 = paramObject;
      if (localObject2 != JsonToken.FIELD_NAME) {
        break;
      }
      localObject1 = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      if (!_beanProperties.findDeserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject1)) {
        handleUnknownVanilla(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject1);
      }
      localObject2 = paramJsonParser.nextToken();
    }
  }
  
  public Object deserializeFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((_objectIdReader != null) && (_objectIdReader.maySerializeAsObject()) && (paramJsonParser.getCurrentTokenId() == 5) && (_objectIdReader.isValidReferencePropertyName(paramJsonParser.getCurrentName(), paramJsonParser))) {
      paramJsonParser = deserializeFromObjectId(paramJsonParser, paramDeserializationContext);
    }
    do
    {
      return paramJsonParser;
      if (!_nonStandardCreation) {
        break;
      }
      if (_unwrappedPropertyHandler != null) {
        return deserializeWithUnwrapped(paramJsonParser, paramDeserializationContext);
      }
      if (_externalTypeIdHandler != null) {
        return deserializeWithExternalTypeId(paramJsonParser, paramDeserializationContext);
      }
      localObject1 = deserializeFromObjectUsingNonDefault(paramJsonParser, paramDeserializationContext);
      paramJsonParser = (JsonParser)localObject1;
    } while (_injectables == null);
    injectValues(paramDeserializationContext, localObject1);
    return localObject1;
    Object localObject2 = _valueInstantiator.createUsingDefault(paramDeserializationContext);
    paramJsonParser.setCurrentValue(localObject2);
    if (paramJsonParser.canReadObjectId())
    {
      localObject1 = paramJsonParser.getObjectId();
      if (localObject1 != null) {
        _handleTypedObjectId(paramJsonParser, paramDeserializationContext, localObject2, localObject1);
      }
    }
    if (_injectables != null) {
      injectValues(paramDeserializationContext, localObject2);
    }
    if (_needViewProcesing)
    {
      localObject1 = paramDeserializationContext.getActiveView();
      if (localObject1 != null) {
        return deserializeWithView(paramJsonParser, paramDeserializationContext, localObject2, (Class)localObject1);
      }
    }
    for (Object localObject1 = paramJsonParser.getCurrentToken(); localObject1 == JsonToken.FIELD_NAME; localObject1 = paramJsonParser.nextToken())
    {
      localObject1 = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      if (!_beanProperties.findDeserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject1)) {
        handleUnknownVanilla(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject1);
      }
    }
    return localObject2;
  }
  
  protected Object deserializeUsingPropertyBasedWithExternalTypeId(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    ExternalTypeHandler localExternalTypeHandler = _externalTypeIdHandler.start();
    PropertyBasedCreator localPropertyBasedCreator = _propertyBasedCreator;
    PropertyValueBuffer localPropertyValueBuffer = localPropertyBasedCreator.startBuilding(paramJsonParser, paramDeserializationContext, _objectIdReader);
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser);
    localTokenBuffer.writeStartObject();
    Object localObject1 = paramJsonParser.getCurrentToken();
    if (localObject1 == JsonToken.FIELD_NAME)
    {
      String str = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      localObject1 = localPropertyBasedCreator.findCreatorProperty(str);
      Object localObject3;
      if (localObject1 != null) {
        if (!localExternalTypeHandler.handlePropertyValue(paramJsonParser, paramDeserializationContext, str, localPropertyValueBuffer))
        {
          localObject3 = deserializeWithErrorWrapping((SettableBeanProperty)localObject1, paramJsonParser, paramDeserializationContext, str);
          if (localPropertyValueBuffer.assignParameter(((SettableBeanProperty)localObject1).getCreatorIndex(), localObject3))
          {
            localObject1 = paramJsonParser.nextToken();
            try
            {
              localObject3 = localPropertyBasedCreator.build(paramDeserializationContext, localPropertyValueBuffer);
              while (localObject1 == JsonToken.FIELD_NAME)
              {
                paramJsonParser.nextToken();
                localTokenBuffer.copyCurrentStructure(paramJsonParser);
                localObject1 = paramJsonParser.nextToken();
                continue;
                localObject2 = paramJsonParser.nextToken();
              }
            }
            catch (Exception localException)
            {
              wrapAndThrow(localException, _beanType.getRawClass(), str, paramDeserializationContext);
            }
          }
        }
      }
      for (;;)
      {
        Object localObject2;
        break;
        if (localObject3.getClass() != _beanType.getRawClass()) {
          throw paramDeserializationContext.mappingException("Can not create polymorphic instances with unwrapped values");
        }
        return localExternalTypeHandler.complete(paramJsonParser, paramDeserializationContext, localObject3);
        if (!localPropertyValueBuffer.readIdProperty(str))
        {
          localObject2 = _beanProperties.find(str);
          if (localObject2 != null) {
            localPropertyValueBuffer.bufferProperty((SettableBeanProperty)localObject2, ((SettableBeanProperty)localObject2).deserialize(paramJsonParser, paramDeserializationContext));
          } else if (!localExternalTypeHandler.handlePropertyValue(paramJsonParser, paramDeserializationContext, str, null)) {
            if ((_ignorableProps != null) && (_ignorableProps.contains(str))) {
              handleIgnoredProperty(paramJsonParser, paramDeserializationContext, handledType(), str);
            } else if (_anySetter != null) {
              localPropertyValueBuffer.bufferAnyProperty(_anySetter, str, _anySetter.deserialize(paramJsonParser, paramDeserializationContext));
            }
          }
        }
      }
    }
    try
    {
      paramJsonParser = localExternalTypeHandler.complete(paramJsonParser, paramDeserializationContext, localPropertyValueBuffer, localPropertyBasedCreator);
      return paramJsonParser;
    }
    catch (Exception paramJsonParser)
    {
      wrapInstantiationProblem(paramJsonParser, paramDeserializationContext);
    }
    return null;
  }
  
  protected Object deserializeUsingPropertyBasedWithUnwrapped(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    PropertyBasedCreator localPropertyBasedCreator = _propertyBasedCreator;
    PropertyValueBuffer localPropertyValueBuffer = localPropertyBasedCreator.startBuilding(paramJsonParser, paramDeserializationContext, _objectIdReader);
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser);
    localTokenBuffer.writeStartObject();
    Object localObject1 = paramJsonParser.getCurrentToken();
    Object localObject2;
    if (localObject1 == JsonToken.FIELD_NAME)
    {
      String str = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      localObject1 = localPropertyBasedCreator.findCreatorProperty(str);
      Object localObject3;
      if (localObject1 != null)
      {
        localObject3 = deserializeWithErrorWrapping((SettableBeanProperty)localObject1, paramJsonParser, paramDeserializationContext, str);
        if (localPropertyValueBuffer.assignParameter(((SettableBeanProperty)localObject1).getCreatorIndex(), localObject3))
        {
          localObject1 = paramJsonParser.nextToken();
          try
          {
            localObject3 = localPropertyBasedCreator.build(paramDeserializationContext, localPropertyValueBuffer);
            paramJsonParser.setCurrentValue(localObject3);
            while (localObject1 == JsonToken.FIELD_NAME)
            {
              paramJsonParser.nextToken();
              localTokenBuffer.copyCurrentStructure(paramJsonParser);
              localObject1 = paramJsonParser.nextToken();
              continue;
              localObject2 = paramJsonParser.nextToken();
            }
          }
          catch (Exception localException)
          {
            wrapAndThrow(localException, _beanType.getRawClass(), str, paramDeserializationContext);
          }
        }
      }
      for (;;)
      {
        break;
        localTokenBuffer.writeEndObject();
        if (localObject3.getClass() != _beanType.getRawClass())
        {
          localTokenBuffer.close();
          throw paramDeserializationContext.mappingException("Can not create polymorphic instances with unwrapped values");
        }
        return _unwrappedPropertyHandler.processUnwrapped(paramJsonParser, paramDeserializationContext, localObject3, localTokenBuffer);
        if (!localPropertyValueBuffer.readIdProperty(str))
        {
          localObject2 = _beanProperties.find(str);
          if (localObject2 != null)
          {
            localPropertyValueBuffer.bufferProperty((SettableBeanProperty)localObject2, ((SettableBeanProperty)localObject2).deserialize(paramJsonParser, paramDeserializationContext));
          }
          else if ((_ignorableProps != null) && (_ignorableProps.contains(str)))
          {
            handleIgnoredProperty(paramJsonParser, paramDeserializationContext, handledType(), str);
          }
          else
          {
            localTokenBuffer.writeFieldName(str);
            localTokenBuffer.copyCurrentStructure(paramJsonParser);
            if (_anySetter != null) {
              localPropertyValueBuffer.bufferAnyProperty(_anySetter, str, _anySetter.deserialize(paramJsonParser, paramDeserializationContext));
            }
          }
        }
      }
    }
    try
    {
      localObject2 = localPropertyBasedCreator.build(paramDeserializationContext, localPropertyValueBuffer);
      return _unwrappedPropertyHandler.processUnwrapped(paramJsonParser, paramDeserializationContext, localObject2, localTokenBuffer);
    }
    catch (Exception paramJsonParser)
    {
      wrapInstantiationProblem(paramJsonParser, paramDeserializationContext);
    }
    return null;
  }
  
  protected Object deserializeWithErrorWrapping(SettableBeanProperty paramSettableBeanProperty, JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, String paramString)
  {
    try
    {
      paramSettableBeanProperty = paramSettableBeanProperty.deserialize(paramJsonParser, paramDeserializationContext);
      return paramSettableBeanProperty;
    }
    catch (IOException paramSettableBeanProperty)
    {
      wrapAndThrow(paramSettableBeanProperty, _beanType.getRawClass(), paramString, paramDeserializationContext);
      throw paramSettableBeanProperty;
    }
  }
  
  protected Object deserializeWithExternalTypeId(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (_propertyBasedCreator != null) {
      return deserializeUsingPropertyBasedWithExternalTypeId(paramJsonParser, paramDeserializationContext);
    }
    return deserializeWithExternalTypeId(paramJsonParser, paramDeserializationContext, _valueInstantiator.createUsingDefault(paramDeserializationContext));
  }
  
  protected Object deserializeWithExternalTypeId(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    Class localClass;
    ExternalTypeHandler localExternalTypeHandler;
    Object localObject;
    label28:
    SettableBeanProperty localSettableBeanProperty;
    if (_needViewProcesing)
    {
      localClass = paramDeserializationContext.getActiveView();
      localExternalTypeHandler = _externalTypeIdHandler.start();
      localObject = paramJsonParser.getCurrentToken();
      if (localObject != JsonToken.FIELD_NAME) {
        break label237;
      }
      localObject = paramJsonParser.getCurrentName();
      JsonToken localJsonToken = paramJsonParser.nextToken();
      localSettableBeanProperty = _beanProperties.find((String)localObject);
      if (localSettableBeanProperty == null) {
        break label144;
      }
      if (localJsonToken.isScalarValue()) {
        localExternalTypeHandler.handleTypePropertyValue(paramJsonParser, paramDeserializationContext, (String)localObject, paramObject);
      }
      if ((localClass == null) || (localSettableBeanProperty.visibleInView(localClass))) {
        break label118;
      }
      paramJsonParser.skipChildren();
    }
    for (;;)
    {
      localObject = paramJsonParser.nextToken();
      break label28;
      localClass = null;
      break;
      try
      {
        label118:
        localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
      }
      catch (Exception localException1)
      {
        wrapAndThrow(localException1, paramObject, (String)localObject, paramDeserializationContext);
      }
      continue;
      label144:
      if ((_ignorableProps != null) && (_ignorableProps.contains(localObject))) {
        handleIgnoredProperty(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject);
      } else if (!localExternalTypeHandler.handlePropertyValue(paramJsonParser, paramDeserializationContext, (String)localObject, paramObject)) {
        if (_anySetter != null) {
          try
          {
            _anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject);
          }
          catch (Exception localException2)
          {
            wrapAndThrow(localException2, paramObject, (String)localObject, paramDeserializationContext);
          }
        } else {
          handleUnknownProperty(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject);
        }
      }
    }
    label237:
    return localExternalTypeHandler.complete(paramJsonParser, paramDeserializationContext, paramObject);
  }
  
  protected Object deserializeWithUnwrapped(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (_delegateDeserializer != null) {
      return _valueInstantiator.createUsingDelegate(paramDeserializationContext, _delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    }
    if (_propertyBasedCreator != null) {
      return deserializeUsingPropertyBasedWithUnwrapped(paramJsonParser, paramDeserializationContext);
    }
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser);
    localTokenBuffer.writeStartObject();
    Object localObject2 = _valueInstantiator.createUsingDefault(paramDeserializationContext);
    paramJsonParser.setCurrentValue(localObject2);
    if (_injectables != null) {
      injectValues(paramDeserializationContext, localObject2);
    }
    Class localClass;
    Object localObject1;
    label102:
    SettableBeanProperty localSettableBeanProperty;
    if (_needViewProcesing)
    {
      localClass = paramDeserializationContext.getActiveView();
      localObject1 = paramJsonParser.getCurrentToken();
      if (localObject1 != JsonToken.FIELD_NAME) {
        break label281;
      }
      localObject1 = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      localSettableBeanProperty = _beanProperties.find((String)localObject1);
      if (localSettableBeanProperty == null) {
        break label197;
      }
      if ((localClass == null) || (localSettableBeanProperty.visibleInView(localClass))) {
        break label169;
      }
      paramJsonParser.skipChildren();
    }
    for (;;)
    {
      localObject1 = paramJsonParser.nextToken();
      break label102;
      localClass = null;
      break;
      try
      {
        label169:
        localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2);
      }
      catch (Exception localException1)
      {
        wrapAndThrow(localException1, localObject2, (String)localObject1, paramDeserializationContext);
      }
      continue;
      label197:
      if ((_ignorableProps != null) && (_ignorableProps.contains(localObject1)))
      {
        handleIgnoredProperty(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject1);
      }
      else
      {
        localTokenBuffer.writeFieldName((String)localObject1);
        localTokenBuffer.copyCurrentStructure(paramJsonParser);
        if (_anySetter != null) {
          try
          {
            _anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject1);
          }
          catch (Exception localException2)
          {
            wrapAndThrow(localException2, localObject2, (String)localObject1, paramDeserializationContext);
          }
        }
      }
    }
    label281:
    localTokenBuffer.writeEndObject();
    _unwrappedPropertyHandler.processUnwrapped(paramJsonParser, paramDeserializationContext, localObject2, localTokenBuffer);
    return localObject2;
  }
  
  protected Object deserializeWithUnwrapped(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    Object localObject2 = paramJsonParser.getCurrentToken();
    Object localObject1 = localObject2;
    if (localObject2 == JsonToken.START_OBJECT) {
      localObject1 = paramJsonParser.nextToken();
    }
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser);
    localTokenBuffer.writeStartObject();
    SettableBeanProperty localSettableBeanProperty;
    if (_needViewProcesing)
    {
      localObject2 = paramDeserializationContext.getActiveView();
      if (localObject1 != JsonToken.FIELD_NAME) {
        break label214;
      }
      localObject1 = paramJsonParser.getCurrentName();
      localSettableBeanProperty = _beanProperties.find((String)localObject1);
      paramJsonParser.nextToken();
      if (localSettableBeanProperty == null) {
        break label148;
      }
      if ((localObject2 == null) || (localSettableBeanProperty.visibleInView((Class)localObject2))) {
        break label122;
      }
      paramJsonParser.skipChildren();
    }
    for (;;)
    {
      localObject1 = paramJsonParser.nextToken();
      break;
      localObject2 = null;
      break;
      try
      {
        label122:
        localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
      }
      catch (Exception localException)
      {
        wrapAndThrow(localException, paramObject, (String)localObject1, paramDeserializationContext);
      }
      continue;
      label148:
      if ((_ignorableProps != null) && (_ignorableProps.contains(localObject1)))
      {
        handleIgnoredProperty(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject1);
      }
      else
      {
        localTokenBuffer.writeFieldName((String)localObject1);
        localTokenBuffer.copyCurrentStructure(paramJsonParser);
        if (_anySetter != null) {
          _anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject1);
        }
      }
    }
    label214:
    localTokenBuffer.writeEndObject();
    _unwrappedPropertyHandler.processUnwrapped(paramJsonParser, paramDeserializationContext, paramObject, localTokenBuffer);
    return paramObject;
  }
  
  protected final Object deserializeWithView(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, Class<?> paramClass)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if (localObject == JsonToken.FIELD_NAME)
    {
      localObject = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      SettableBeanProperty localSettableBeanProperty = _beanProperties.find((String)localObject);
      if (localSettableBeanProperty != null) {
        if (!localSettableBeanProperty.visibleInView(paramClass)) {
          paramJsonParser.skipChildren();
        }
      }
      for (;;)
      {
        localObject = paramJsonParser.nextToken();
        break;
        try
        {
          localSettableBeanProperty.deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
        }
        catch (Exception localException)
        {
          wrapAndThrow(localException, paramObject, (String)localObject, paramDeserializationContext);
        }
        continue;
        handleUnknownVanilla(paramJsonParser, paramDeserializationContext, paramObject, (String)localObject);
      }
    }
    return paramObject;
  }
  
  public JsonDeserializer<Object> unwrappingDeserializer(NameTransformer paramNameTransformer)
  {
    if (getClass() != BeanDeserializer.class) {
      return this;
    }
    return new BeanDeserializer(this, paramNameTransformer);
  }
  
  public BeanDeserializer withIgnorableProperties(HashSet<String> paramHashSet)
  {
    return new BeanDeserializer(this, paramHashSet);
  }
  
  public BeanDeserializer withObjectIdReader(ObjectIdReader paramObjectIdReader)
  {
    return new BeanDeserializer(this, paramObjectIdReader);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.BeanDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */