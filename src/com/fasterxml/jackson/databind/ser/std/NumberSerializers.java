package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonNumberFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.lang.reflect.Type;
import java.util.Map;

public class NumberSerializers
{
  public static void addAll(Map<String, JsonSerializer<?>> paramMap)
  {
    IntegerSerializer localIntegerSerializer = new IntegerSerializer();
    paramMap.put(Integer.class.getName(), localIntegerSerializer);
    paramMap.put(Integer.TYPE.getName(), localIntegerSerializer);
    paramMap.put(Long.class.getName(), LongSerializer.instance);
    paramMap.put(Long.TYPE.getName(), LongSerializer.instance);
    paramMap.put(Byte.class.getName(), IntLikeSerializer.instance);
    paramMap.put(Byte.TYPE.getName(), IntLikeSerializer.instance);
    paramMap.put(Short.class.getName(), ShortSerializer.instance);
    paramMap.put(Short.TYPE.getName(), ShortSerializer.instance);
    paramMap.put(Float.class.getName(), FloatSerializer.instance);
    paramMap.put(Float.TYPE.getName(), FloatSerializer.instance);
    paramMap.put(Double.class.getName(), DoubleSerializer.instance);
    paramMap.put(Double.TYPE.getName(), DoubleSerializer.instance);
  }
  
  protected static abstract class Base<T>
    extends StdScalarSerializer<T>
    implements ContextualSerializer
  {
    protected final boolean _isInt;
    protected final JsonParser.NumberType _numberType;
    protected final String _schemaType;
    
    protected Base(Class<T> paramClass, JsonParser.NumberType paramNumberType, String paramString)
    {
      super();
      _numberType = paramNumberType;
      _schemaType = paramString;
      if ((paramNumberType == JsonParser.NumberType.INT) || (paramNumberType == JsonParser.NumberType.LONG) || (paramNumberType == JsonParser.NumberType.BIG_INTEGER)) {}
      for (boolean bool = true;; bool = false)
      {
        _isInt = bool;
        return;
      }
    }
    
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
    {
      if (_isInt)
      {
        paramJsonFormatVisitorWrapper = paramJsonFormatVisitorWrapper.expectIntegerFormat(paramJavaType);
        if (paramJsonFormatVisitorWrapper != null) {
          paramJsonFormatVisitorWrapper.numberType(_numberType);
        }
      }
      do
      {
        return;
        paramJsonFormatVisitorWrapper = paramJsonFormatVisitorWrapper.expectNumberFormat(paramJavaType);
      } while (paramJsonFormatVisitorWrapper == null);
      paramJsonFormatVisitorWrapper.numberType(_numberType);
    }
    
    public JsonSerializer<?> createContextual(SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
    {
      if (paramBeanProperty != null)
      {
        paramBeanProperty = paramBeanProperty.getMember();
        if (paramBeanProperty != null)
        {
          paramSerializerProvider = paramSerializerProvider.getAnnotationIntrospector().findFormat(paramBeanProperty);
          if (paramSerializerProvider == null) {}
        }
      }
      switch (NumberSerializers.1.$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[paramSerializerProvider.getShape().ordinal()])
      {
      default: 
        return this;
      }
      return ToStringSerializer.instance;
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      return createSchemaNode(_schemaType, true);
    }
  }
  
  @JacksonStdImpl
  public static final class DoubleSerializer
    extends NumberSerializers.Base<Double>
  {
    static final DoubleSerializer instance = new DoubleSerializer();
    
    public DoubleSerializer()
    {
      super(JsonParser.NumberType.DOUBLE, "number");
    }
    
    public final void serialize(Double paramDouble, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramJsonGenerator.writeNumber(paramDouble.doubleValue());
    }
    
    public final void serializeWithType(Double paramDouble, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    {
      serialize(paramDouble, paramJsonGenerator, paramSerializerProvider);
    }
  }
  
  @JacksonStdImpl
  public static final class FloatSerializer
    extends NumberSerializers.Base<Float>
  {
    static final FloatSerializer instance = new FloatSerializer();
    
    public FloatSerializer()
    {
      super(JsonParser.NumberType.FLOAT, "number");
    }
    
    public final void serialize(Float paramFloat, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramJsonGenerator.writeNumber(paramFloat.floatValue());
    }
  }
  
  @JacksonStdImpl
  public static final class IntLikeSerializer
    extends NumberSerializers.Base<Number>
  {
    static final IntLikeSerializer instance = new IntLikeSerializer();
    
    public IntLikeSerializer()
    {
      super(JsonParser.NumberType.INT, "integer");
    }
    
    public final void serialize(Number paramNumber, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramJsonGenerator.writeNumber(paramNumber.intValue());
    }
  }
  
  @JacksonStdImpl
  public static final class IntegerSerializer
    extends NumberSerializers.Base<Integer>
  {
    public IntegerSerializer()
    {
      super(JsonParser.NumberType.INT, "integer");
    }
    
    public final void serialize(Integer paramInteger, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramJsonGenerator.writeNumber(paramInteger.intValue());
    }
    
    public final void serializeWithType(Integer paramInteger, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    {
      serialize(paramInteger, paramJsonGenerator, paramSerializerProvider);
    }
  }
  
  @JacksonStdImpl
  public static final class LongSerializer
    extends NumberSerializers.Base<Long>
  {
    static final LongSerializer instance = new LongSerializer();
    
    public LongSerializer()
    {
      super(JsonParser.NumberType.LONG, "number");
    }
    
    public final void serialize(Long paramLong, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramJsonGenerator.writeNumber(paramLong.longValue());
    }
  }
  
  @JacksonStdImpl
  public static final class ShortSerializer
    extends NumberSerializers.Base<Short>
  {
    static final ShortSerializer instance = new ShortSerializer();
    
    public ShortSerializer()
    {
      super(JsonParser.NumberType.INT, "number");
    }
    
    public final void serialize(Short paramShort, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramJsonGenerator.writeNumber(paramShort.shortValue());
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.NumberSerializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */