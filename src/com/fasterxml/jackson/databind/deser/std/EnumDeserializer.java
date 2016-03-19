package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.EnumResolver;
import java.io.IOException;
import java.lang.reflect.Method;

public class EnumDeserializer
  extends StdScalarDeserializer<Enum<?>>
{
  private static final long serialVersionUID = 1L;
  protected final EnumResolver<?> _resolver;
  
  public EnumDeserializer(EnumResolver<?> paramEnumResolver)
  {
    super(Enum.class);
    _resolver = paramEnumResolver;
  }
  
  private final Enum<?> _deserializeAltString(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, String paramString)
  {
    paramJsonParser = paramString.trim();
    if (paramJsonParser.length() == 0) {
      if (!paramDeserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
        break label73;
      }
    }
    label73:
    while (paramDeserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL))
    {
      return null;
      int i = paramJsonParser.charAt(0);
      if ((i >= 48) && (i <= 57)) {
        try
        {
          i = Integer.parseInt(paramJsonParser);
          _checkFailOnNumber(paramDeserializationContext);
          paramString = _resolver.getEnum(i);
          if (paramString != null) {
            return paramString;
          }
        }
        catch (NumberFormatException paramString) {}
      }
    }
    throw paramDeserializationContext.weirdStringException(paramJsonParser, _resolver.getEnumClass(), "value not one of declared Enum instance names: " + _resolver.getEnums());
  }
  
  public static JsonDeserializer<?> deserializerForCreator(DeserializationConfig paramDeserializationConfig, Class<?> paramClass, AnnotatedMethod paramAnnotatedMethod)
  {
    Class localClass = paramAnnotatedMethod.getRawParameterType(0);
    if (paramDeserializationConfig.canOverrideAccessModifiers()) {
      ClassUtil.checkAndFixAccess(paramAnnotatedMethod.getMember());
    }
    return new FactoryBasedDeserializer(paramClass, paramAnnotatedMethod, localClass);
  }
  
  protected void _checkFailOnNumber(DeserializationContext paramDeserializationContext)
  {
    if (paramDeserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
      throw paramDeserializationContext.mappingException("Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)");
    }
  }
  
  protected Enum<?> _deserializeOther(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Enum localEnum;
    if ((paramJsonParser.getCurrentToken() == JsonToken.START_ARRAY) && (paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)))
    {
      paramJsonParser.nextToken();
      localEnum = deserialize(paramJsonParser, paramDeserializationContext);
      if (paramJsonParser.nextToken() != JsonToken.END_ARRAY) {
        throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single '" + _resolver.getEnumClass().getName() + "' value but there was more than a single value in the array");
      }
    }
    else
    {
      throw paramDeserializationContext.mappingException(_resolver.getEnumClass());
    }
    return localEnum;
  }
  
  public Enum<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if ((localObject == JsonToken.VALUE_STRING) || (localObject == JsonToken.FIELD_NAME))
    {
      String str = paramJsonParser.getText();
      Enum localEnum = _resolver.findEnum(str);
      localObject = localEnum;
      if (localEnum == null) {
        localObject = _deserializeAltString(paramJsonParser, paramDeserializationContext, str);
      }
    }
    int i;
    do
    {
      do
      {
        return (Enum<?>)localObject;
        if (localObject != JsonToken.VALUE_NUMBER_INT) {
          break;
        }
        _checkFailOnNumber(paramDeserializationContext);
        i = paramJsonParser.getIntValue();
        paramJsonParser = _resolver.getEnum(i);
        localObject = paramJsonParser;
      } while (paramJsonParser != null);
      localObject = paramJsonParser;
    } while (paramDeserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL));
    throw paramDeserializationContext.weirdNumberException(Integer.valueOf(i), _resolver.getEnumClass(), "index value outside legal index range [0.." + _resolver.lastValidIndex() + "]");
    return _deserializeOther(paramJsonParser, paramDeserializationContext);
  }
  
  public boolean isCachable()
  {
    return true;
  }
  
  protected static class FactoryBasedDeserializer
    extends StdDeserializer<Object>
    implements ContextualDeserializer
  {
    private static final long serialVersionUID = 1L;
    protected final JsonDeserializer<?> _deser;
    protected final Method _factory;
    protected final Class<?> _inputType;
    
    protected FactoryBasedDeserializer(FactoryBasedDeserializer paramFactoryBasedDeserializer, JsonDeserializer<?> paramJsonDeserializer)
    {
      super();
      _inputType = _inputType;
      _factory = _factory;
      _deser = paramJsonDeserializer;
    }
    
    public FactoryBasedDeserializer(Class<?> paramClass1, AnnotatedMethod paramAnnotatedMethod, Class<?> paramClass2)
    {
      super();
      _factory = paramAnnotatedMethod.getAnnotated();
      _inputType = paramClass2;
      _deser = null;
    }
    
    public JsonDeserializer<?> createContextual(DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty)
    {
      FactoryBasedDeserializer localFactoryBasedDeserializer = this;
      if (_deser == null)
      {
        localFactoryBasedDeserializer = this;
        if (_inputType != String.class) {
          localFactoryBasedDeserializer = new FactoryBasedDeserializer(this, paramDeserializationContext.findContextualValueDeserializer(paramDeserializationContext.constructType(_inputType), paramBeanProperty));
        }
      }
      return localFactoryBasedDeserializer;
    }
    
    public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    {
      if (_deser != null) {
        paramJsonParser = _deser.deserialize(paramJsonParser, paramDeserializationContext);
      }
      for (;;)
      {
        try
        {
          paramJsonParser = _factory.invoke(_valueClass, new Object[] { paramJsonParser });
          return paramJsonParser;
        }
        catch (Exception paramJsonParser)
        {
          JsonToken localJsonToken;
          paramJsonParser = ClassUtil.getRootCause(paramJsonParser);
          if (!(paramJsonParser instanceof IOException)) {
            continue;
          }
          throw ((IOException)paramJsonParser);
          throw paramDeserializationContext.instantiationException(_valueClass, paramJsonParser);
        }
        localJsonToken = paramJsonParser.getCurrentToken();
        if ((localJsonToken == JsonToken.VALUE_STRING) || (localJsonToken == JsonToken.FIELD_NAME)) {
          paramJsonParser = paramJsonParser.getText();
        } else {
          paramJsonParser = paramJsonParser.getValueAsString();
        }
      }
    }
    
    public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    {
      if (_deser == null) {
        return deserialize(paramJsonParser, paramDeserializationContext);
      }
      return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.EnumDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */