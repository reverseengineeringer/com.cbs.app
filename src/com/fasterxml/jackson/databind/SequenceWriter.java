package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer;
import java.io.Closeable;
import java.io.Flushable;
import java.util.Collection;
import java.util.Iterator;

public class SequenceWriter
  implements Versioned, Closeable, Flushable
{
  protected final boolean _cfgCloseCloseable;
  protected final boolean _cfgFlush;
  protected final boolean _closeGenerator;
  protected boolean _closed;
  protected final SerializationConfig _config;
  protected PropertySerializerMap _dynamicSerializers;
  protected final JsonGenerator _generator;
  protected boolean _openArray;
  protected final DefaultSerializerProvider _provider;
  protected final JsonSerializer<Object> _rootSerializer;
  protected final TypeSerializer _typeSerializer;
  
  public SequenceWriter(DefaultSerializerProvider paramDefaultSerializerProvider, JsonGenerator paramJsonGenerator, boolean paramBoolean, ObjectWriter.Prefetch paramPrefetch)
  {
    _provider = paramDefaultSerializerProvider;
    _generator = paramJsonGenerator;
    _closeGenerator = paramBoolean;
    _rootSerializer = valueSerializer;
    _typeSerializer = typeSerializer;
    _config = paramDefaultSerializerProvider.getConfig();
    _cfgFlush = _config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE);
    _cfgCloseCloseable = _config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE);
    _dynamicSerializers = PropertySerializerMap.emptyForRootValues();
  }
  
  private final JsonSerializer<Object> _findAndAddDynamic(JavaType paramJavaType)
  {
    if (_typeSerializer == null) {}
    for (paramJavaType = _dynamicSerializers.findAndAddRootValueSerializer(paramJavaType, _provider);; paramJavaType = _dynamicSerializers.addSerializer(paramJavaType, new TypeWrappedSerializer(_typeSerializer, _provider.findValueSerializer(paramJavaType, null))))
    {
      _dynamicSerializers = map;
      return serializer;
    }
  }
  
  private final JsonSerializer<Object> _findAndAddDynamic(Class<?> paramClass)
  {
    if (_typeSerializer == null) {}
    for (paramClass = _dynamicSerializers.findAndAddRootValueSerializer(paramClass, _provider);; paramClass = _dynamicSerializers.addSerializer(paramClass, new TypeWrappedSerializer(_typeSerializer, _provider.findValueSerializer(paramClass, null))))
    {
      _dynamicSerializers = map;
      return serializer;
    }
  }
  
  /* Error */
  protected SequenceWriter _writeCloseableValue(Object paramObject)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: checkcast 8	java/io/Closeable
    //   6: astore 4
    //   8: aload_0
    //   9: getfield 47	com/fasterxml/jackson/databind/SequenceWriter:_rootSerializer	Lcom/fasterxml/jackson/databind/JsonSerializer;
    //   12: astore 5
    //   14: aload 5
    //   16: astore_2
    //   17: aload 5
    //   19: ifnonnull +35 -> 54
    //   22: aload_1
    //   23: invokevirtual 136	java/lang/Object:getClass	()Ljava/lang/Class;
    //   26: astore 6
    //   28: aload_0
    //   29: getfield 87	com/fasterxml/jackson/databind/SequenceWriter:_dynamicSerializers	Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    //   32: aload 6
    //   34: invokevirtual 139	com/fasterxml/jackson/databind/ser/impl/PropertySerializerMap:serializerFor	(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    //   37: astore 5
    //   39: aload 5
    //   41: astore_2
    //   42: aload 5
    //   44: ifnonnull +10 -> 54
    //   47: aload_0
    //   48: aload 6
    //   50: invokespecial 141	com/fasterxml/jackson/databind/SequenceWriter:_findAndAddDynamic	(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    //   53: astore_2
    //   54: aload_0
    //   55: getfield 36	com/fasterxml/jackson/databind/SequenceWriter:_provider	Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    //   58: aload_0
    //   59: getfield 38	com/fasterxml/jackson/databind/SequenceWriter:_generator	Lcom/fasterxml/jackson/core/JsonGenerator;
    //   62: aload_1
    //   63: aconst_null
    //   64: aload_2
    //   65: invokevirtual 145	com/fasterxml/jackson/databind/ser/DefaultSerializerProvider:serializeValue	(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    //   68: aload_0
    //   69: getfield 74	com/fasterxml/jackson/databind/SequenceWriter:_cfgFlush	Z
    //   72: ifeq +10 -> 82
    //   75: aload_0
    //   76: getfield 38	com/fasterxml/jackson/databind/SequenceWriter:_generator	Lcom/fasterxml/jackson/core/JsonGenerator;
    //   79: invokevirtual 150	com/fasterxml/jackson/core/JsonGenerator:flush	()V
    //   82: aload 4
    //   84: invokeinterface 153 1 0
    //   89: aload_0
    //   90: areturn
    //   91: astore_2
    //   92: aload 4
    //   94: astore_1
    //   95: aload_1
    //   96: astore_3
    //   97: aload_2
    //   98: astore_1
    //   99: aload_3
    //   100: ifnull +9 -> 109
    //   103: aload_3
    //   104: invokeinterface 153 1 0
    //   109: aload_1
    //   110: athrow
    //   111: astore_2
    //   112: goto -3 -> 109
    //   115: astore_1
    //   116: goto -17 -> 99
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	SequenceWriter
    //   0	119	1	paramObject	Object
    //   16	49	2	localJsonSerializer1	JsonSerializer
    //   91	7	2	localObject1	Object
    //   111	1	2	localIOException	java.io.IOException
    //   1	103	3	localObject2	Object
    //   6	87	4	localCloseable	Closeable
    //   12	31	5	localJsonSerializer2	JsonSerializer
    //   26	23	6	localClass	Class
    // Exception table:
    //   from	to	target	type
    //   8	14	91	finally
    //   22	39	91	finally
    //   47	54	91	finally
    //   54	82	91	finally
    //   103	109	111	java/io/IOException
    //   82	89	115	finally
  }
  
  /* Error */
  protected SequenceWriter _writeCloseableValue(Object paramObject, JavaType paramJavaType)
  {
    // Byte code:
    //   0: aload_1
    //   1: checkcast 8	java/io/Closeable
    //   4: astore 4
    //   6: aload_0
    //   7: getfield 87	com/fasterxml/jackson/databind/SequenceWriter:_dynamicSerializers	Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    //   10: aload_2
    //   11: invokevirtual 159	com/fasterxml/jackson/databind/JavaType:getRawClass	()Ljava/lang/Class;
    //   14: invokevirtual 139	com/fasterxml/jackson/databind/ser/impl/PropertySerializerMap:serializerFor	(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    //   17: astore 5
    //   19: aload 5
    //   21: astore_3
    //   22: aload 5
    //   24: ifnonnull +9 -> 33
    //   27: aload_0
    //   28: aload_2
    //   29: invokespecial 161	com/fasterxml/jackson/databind/SequenceWriter:_findAndAddDynamic	(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    //   32: astore_3
    //   33: aload_0
    //   34: getfield 36	com/fasterxml/jackson/databind/SequenceWriter:_provider	Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    //   37: aload_0
    //   38: getfield 38	com/fasterxml/jackson/databind/SequenceWriter:_generator	Lcom/fasterxml/jackson/core/JsonGenerator;
    //   41: aload_1
    //   42: aload_2
    //   43: aload_3
    //   44: invokevirtual 145	com/fasterxml/jackson/databind/ser/DefaultSerializerProvider:serializeValue	(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    //   47: aload_0
    //   48: getfield 74	com/fasterxml/jackson/databind/SequenceWriter:_cfgFlush	Z
    //   51: ifeq +10 -> 61
    //   54: aload_0
    //   55: getfield 38	com/fasterxml/jackson/databind/SequenceWriter:_generator	Lcom/fasterxml/jackson/core/JsonGenerator;
    //   58: invokevirtual 150	com/fasterxml/jackson/core/JsonGenerator:flush	()V
    //   61: aconst_null
    //   62: astore_3
    //   63: aload 4
    //   65: invokeinterface 153 1 0
    //   70: aload_0
    //   71: areturn
    //   72: astore_2
    //   73: aload 4
    //   75: astore_1
    //   76: aload_1
    //   77: astore_3
    //   78: aload_2
    //   79: astore_1
    //   80: aload_3
    //   81: ifnull +9 -> 90
    //   84: aload_3
    //   85: invokeinterface 153 1 0
    //   90: aload_1
    //   91: athrow
    //   92: astore_2
    //   93: goto -3 -> 90
    //   96: astore_1
    //   97: goto -17 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	SequenceWriter
    //   0	100	1	paramObject	Object
    //   0	100	2	paramJavaType	JavaType
    //   21	64	3	localObject	Object
    //   4	70	4	localCloseable	Closeable
    //   17	6	5	localJsonSerializer	JsonSerializer
    // Exception table:
    //   from	to	target	type
    //   6	19	72	finally
    //   27	33	72	finally
    //   33	61	72	finally
    //   84	90	92	java/io/IOException
    //   63	70	96	finally
  }
  
  public void close()
  {
    if (!_closed)
    {
      _closed = true;
      if (_openArray)
      {
        _openArray = false;
        _generator.writeEndArray();
      }
      if (_closeGenerator) {
        _generator.close();
      }
    }
  }
  
  public void flush()
  {
    if (!_closed) {
      _generator.flush();
    }
  }
  
  public SequenceWriter init(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      _generator.writeStartArray();
      _openArray = true;
    }
    return this;
  }
  
  public Version version()
  {
    return PackageVersion.VERSION;
  }
  
  public SequenceWriter write(Object paramObject)
  {
    if (paramObject == null) {
      _provider.serializeValue(_generator, null);
    }
    do
    {
      return this;
      if ((_cfgCloseCloseable) && ((paramObject instanceof Closeable))) {
        return _writeCloseableValue(paramObject);
      }
      JsonSerializer localJsonSerializer2 = _rootSerializer;
      JsonSerializer localJsonSerializer1 = localJsonSerializer2;
      if (localJsonSerializer2 == null)
      {
        Class localClass = paramObject.getClass();
        localJsonSerializer2 = _dynamicSerializers.serializerFor(localClass);
        localJsonSerializer1 = localJsonSerializer2;
        if (localJsonSerializer2 == null) {
          localJsonSerializer1 = _findAndAddDynamic(localClass);
        }
      }
      _provider.serializeValue(_generator, paramObject, null, localJsonSerializer1);
    } while (!_cfgFlush);
    _generator.flush();
    return this;
  }
  
  public SequenceWriter write(Object paramObject, JavaType paramJavaType)
  {
    if (paramObject == null) {
      _provider.serializeValue(_generator, null);
    }
    do
    {
      return this;
      if ((_cfgCloseCloseable) && ((paramObject instanceof Closeable))) {
        return _writeCloseableValue(paramObject, paramJavaType);
      }
      JsonSerializer localJsonSerializer2 = _dynamicSerializers.serializerFor(paramJavaType.getRawClass());
      JsonSerializer localJsonSerializer1 = localJsonSerializer2;
      if (localJsonSerializer2 == null) {
        localJsonSerializer1 = _findAndAddDynamic(paramJavaType);
      }
      _provider.serializeValue(_generator, paramObject, paramJavaType, localJsonSerializer1);
    } while (!_cfgFlush);
    _generator.flush();
    return this;
  }
  
  public <C extends Collection<?>> SequenceWriter writeAll(C paramC)
  {
    paramC = paramC.iterator();
    while (paramC.hasNext()) {
      write(paramC.next());
    }
    return this;
  }
  
  public SequenceWriter writeAll(Object[] paramArrayOfObject)
  {
    int i = 0;
    int j = paramArrayOfObject.length;
    while (i < j)
    {
      write(paramArrayOfObject[i]);
      i += 1;
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.SequenceWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */