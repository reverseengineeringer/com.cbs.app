package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.SegmentedStringWriter;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.Instantiatable;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.SerializerFactory;
import com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.Writer;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

public class ObjectWriter
  implements Versioned, Serializable
{
  protected static final PrettyPrinter NULL_PRETTY_PRINTER = new MinimalPrettyPrinter();
  private static final long serialVersionUID = 1L;
  protected final SerializationConfig _config;
  protected final JsonFactory _generatorFactory;
  protected final GeneratorSettings _generatorSettings;
  protected final Prefetch _prefetch;
  protected final SerializerFactory _serializerFactory;
  protected final DefaultSerializerProvider _serializerProvider;
  
  protected ObjectWriter(ObjectMapper paramObjectMapper, SerializationConfig paramSerializationConfig)
  {
    _config = paramSerializationConfig;
    _serializerProvider = _serializerProvider;
    _serializerFactory = _serializerFactory;
    _generatorFactory = _jsonFactory;
    _prefetch = Prefetch.empty;
    _generatorSettings = GeneratorSettings.empty;
  }
  
  protected ObjectWriter(ObjectMapper paramObjectMapper, SerializationConfig paramSerializationConfig, FormatSchema paramFormatSchema)
  {
    _config = paramSerializationConfig;
    _serializerProvider = _serializerProvider;
    _serializerFactory = _serializerFactory;
    _generatorFactory = _jsonFactory;
    _prefetch = Prefetch.empty;
    if (paramFormatSchema == null) {}
    for (paramObjectMapper = GeneratorSettings.empty;; paramObjectMapper = new GeneratorSettings(null, paramFormatSchema, null, null))
    {
      _generatorSettings = paramObjectMapper;
      return;
    }
  }
  
  protected ObjectWriter(ObjectMapper paramObjectMapper, SerializationConfig paramSerializationConfig, JavaType paramJavaType, PrettyPrinter paramPrettyPrinter)
  {
    _config = paramSerializationConfig;
    _serializerProvider = _serializerProvider;
    _serializerFactory = _serializerFactory;
    _generatorFactory = _jsonFactory;
    if (paramPrettyPrinter == null) {}
    for (paramObjectMapper = GeneratorSettings.empty;; paramObjectMapper = new GeneratorSettings(paramPrettyPrinter, null, null, null))
    {
      _generatorSettings = paramObjectMapper;
      if ((paramJavaType != null) && (!paramJavaType.hasRawClass(Object.class))) {
        break;
      }
      _prefetch = Prefetch.empty;
      return;
    }
    _prefetch = _prefetchRootSerializer(paramSerializationConfig, paramJavaType.withStaticTyping());
  }
  
  protected ObjectWriter(ObjectWriter paramObjectWriter, JsonFactory paramJsonFactory)
  {
    _config = _config.with(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY, paramJsonFactory.requiresPropertyOrdering());
    _serializerProvider = _serializerProvider;
    _serializerFactory = _serializerFactory;
    _generatorFactory = _generatorFactory;
    _generatorSettings = _generatorSettings;
    _prefetch = _prefetch;
  }
  
  protected ObjectWriter(ObjectWriter paramObjectWriter, SerializationConfig paramSerializationConfig)
  {
    _config = paramSerializationConfig;
    _serializerProvider = _serializerProvider;
    _serializerFactory = _serializerFactory;
    _generatorFactory = _generatorFactory;
    _generatorSettings = _generatorSettings;
    _prefetch = _prefetch;
  }
  
  protected ObjectWriter(ObjectWriter paramObjectWriter, SerializationConfig paramSerializationConfig, GeneratorSettings paramGeneratorSettings, Prefetch paramPrefetch)
  {
    _config = paramSerializationConfig;
    _serializerProvider = _serializerProvider;
    _serializerFactory = _serializerFactory;
    _generatorFactory = _generatorFactory;
    _generatorSettings = paramGeneratorSettings;
    _prefetch = paramPrefetch;
  }
  
  /* Error */
  private final void _writeCloseable(JsonGenerator paramJsonGenerator, Object paramObject, SerializationConfig paramSerializationConfig)
  {
    // Byte code:
    //   0: aload_2
    //   1: checkcast 114	java/io/Closeable
    //   4: astore 4
    //   6: aload_0
    //   7: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   10: getfield 118	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:valueSerializer	Lcom/fasterxml/jackson/databind/JsonSerializer;
    //   13: ifnull +39 -> 52
    //   16: aload_0
    //   17: aload_3
    //   18: invokevirtual 121	com/fasterxml/jackson/databind/ObjectWriter:_serializerProvider	(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    //   21: aload_1
    //   22: aload_2
    //   23: aload_0
    //   24: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   27: getfield 125	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:rootType	Lcom/fasterxml/jackson/databind/JavaType;
    //   30: aload_0
    //   31: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   34: getfield 118	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:valueSerializer	Lcom/fasterxml/jackson/databind/JsonSerializer;
    //   37: invokevirtual 131	com/fasterxml/jackson/databind/ser/DefaultSerializerProvider:serializeValue	(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    //   40: aload_1
    //   41: invokevirtual 136	com/fasterxml/jackson/core/JsonGenerator:close	()V
    //   44: aload 4
    //   46: invokeinterface 137 1 0
    //   51: return
    //   52: aload_0
    //   53: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   56: getfield 141	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:typeSerializer	Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    //   59: ifnull +63 -> 122
    //   62: aload_0
    //   63: aload_3
    //   64: invokevirtual 121	com/fasterxml/jackson/databind/ObjectWriter:_serializerProvider	(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    //   67: aload_1
    //   68: aload_2
    //   69: aload_0
    //   70: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   73: getfield 141	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:typeSerializer	Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    //   76: invokevirtual 145	com/fasterxml/jackson/databind/ser/DefaultSerializerProvider:serializePolymorphic	(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    //   79: goto -39 -> 40
    //   82: astore_3
    //   83: aload 4
    //   85: astore_2
    //   86: aload_3
    //   87: astore 4
    //   89: aload_1
    //   90: astore_3
    //   91: aload 4
    //   93: astore_1
    //   94: aload_3
    //   95: ifnull +15 -> 110
    //   98: aload_3
    //   99: getstatic 151	com/fasterxml/jackson/core/JsonGenerator$Feature:AUTO_CLOSE_JSON_CONTENT	Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    //   102: invokevirtual 155	com/fasterxml/jackson/core/JsonGenerator:disable	(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    //   105: pop
    //   106: aload_3
    //   107: invokevirtual 136	com/fasterxml/jackson/core/JsonGenerator:close	()V
    //   110: aload_2
    //   111: ifnull +9 -> 120
    //   114: aload_2
    //   115: invokeinterface 137 1 0
    //   120: aload_1
    //   121: athrow
    //   122: aload_0
    //   123: aload_3
    //   124: invokevirtual 121	com/fasterxml/jackson/databind/ObjectWriter:_serializerProvider	(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    //   127: aload_1
    //   128: aload_2
    //   129: invokevirtual 158	com/fasterxml/jackson/databind/ser/DefaultSerializerProvider:serializeValue	(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    //   132: goto -92 -> 40
    //   135: astore_3
    //   136: goto -26 -> 110
    //   139: astore_2
    //   140: goto -20 -> 120
    //   143: astore_1
    //   144: aconst_null
    //   145: astore_3
    //   146: aload 4
    //   148: astore_2
    //   149: goto -55 -> 94
    //   152: astore_1
    //   153: aconst_null
    //   154: astore_2
    //   155: aconst_null
    //   156: astore_3
    //   157: goto -63 -> 94
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	160	0	this	ObjectWriter
    //   0	160	1	paramJsonGenerator	JsonGenerator
    //   0	160	2	paramObject	Object
    //   0	160	3	paramSerializationConfig	SerializationConfig
    //   4	143	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   6	40	82	finally
    //   52	79	82	finally
    //   122	132	82	finally
    //   106	110	135	java/io/IOException
    //   114	120	139	java/io/IOException
    //   40	44	143	finally
    //   44	51	152	finally
  }
  
  /* Error */
  private final void _writeCloseableValue(JsonGenerator paramJsonGenerator, Object paramObject, SerializationConfig paramSerializationConfig)
  {
    // Byte code:
    //   0: aload_2
    //   1: checkcast 114	java/io/Closeable
    //   4: astore 4
    //   6: aload_0
    //   7: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   10: getfield 118	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:valueSerializer	Lcom/fasterxml/jackson/databind/JsonSerializer;
    //   13: ifnull +54 -> 67
    //   16: aload_0
    //   17: aload_3
    //   18: invokevirtual 121	com/fasterxml/jackson/databind/ObjectWriter:_serializerProvider	(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    //   21: aload_1
    //   22: aload_2
    //   23: aload_0
    //   24: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   27: getfield 125	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:rootType	Lcom/fasterxml/jackson/databind/JavaType;
    //   30: aload_0
    //   31: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   34: getfield 118	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:valueSerializer	Lcom/fasterxml/jackson/databind/JsonSerializer;
    //   37: invokevirtual 131	com/fasterxml/jackson/databind/ser/DefaultSerializerProvider:serializeValue	(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    //   40: aload_0
    //   41: getfield 46	com/fasterxml/jackson/databind/ObjectWriter:_config	Lcom/fasterxml/jackson/databind/SerializationConfig;
    //   44: getstatic 165	com/fasterxml/jackson/databind/SerializationFeature:FLUSH_AFTER_WRITE_VALUE	Lcom/fasterxml/jackson/databind/SerializationFeature;
    //   47: invokevirtual 169	com/fasterxml/jackson/databind/SerializationConfig:isEnabled	(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    //   50: ifeq +7 -> 57
    //   53: aload_1
    //   54: invokevirtual 172	com/fasterxml/jackson/core/JsonGenerator:flush	()V
    //   57: aconst_null
    //   58: astore_3
    //   59: aload 4
    //   61: invokeinterface 137 1 0
    //   66: return
    //   67: aload_0
    //   68: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   71: getfield 141	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:typeSerializer	Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    //   74: ifnull +43 -> 117
    //   77: aload_0
    //   78: aload_3
    //   79: invokevirtual 121	com/fasterxml/jackson/databind/ObjectWriter:_serializerProvider	(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    //   82: aload_1
    //   83: aload_2
    //   84: aload_0
    //   85: getfield 64	com/fasterxml/jackson/databind/ObjectWriter:_prefetch	Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    //   88: getfield 141	com/fasterxml/jackson/databind/ObjectWriter$Prefetch:typeSerializer	Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    //   91: invokevirtual 145	com/fasterxml/jackson/databind/ser/DefaultSerializerProvider:serializePolymorphic	(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    //   94: goto -54 -> 40
    //   97: astore_2
    //   98: aload 4
    //   100: astore_1
    //   101: aload_1
    //   102: astore_3
    //   103: aload_2
    //   104: astore_1
    //   105: aload_3
    //   106: ifnull +9 -> 115
    //   109: aload_3
    //   110: invokeinterface 137 1 0
    //   115: aload_1
    //   116: athrow
    //   117: aload_0
    //   118: aload_3
    //   119: invokevirtual 121	com/fasterxml/jackson/databind/ObjectWriter:_serializerProvider	(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    //   122: aload_1
    //   123: aload_2
    //   124: invokevirtual 158	com/fasterxml/jackson/databind/ser/DefaultSerializerProvider:serializeValue	(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    //   127: goto -87 -> 40
    //   130: astore_2
    //   131: goto -16 -> 115
    //   134: astore_1
    //   135: goto -30 -> 105
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	ObjectWriter
    //   0	138	1	paramJsonGenerator	JsonGenerator
    //   0	138	2	paramObject	Object
    //   0	138	3	paramSerializationConfig	SerializationConfig
    //   4	95	4	localCloseable	Closeable
    // Exception table:
    //   from	to	target	type
    //   6	40	97	finally
    //   40	57	97	finally
    //   67	94	97	finally
    //   117	127	97	finally
    //   109	115	130	java/io/IOException
    //   59	66	134	finally
  }
  
  protected final void _configAndWriteValue(JsonGenerator paramJsonGenerator, Object paramObject)
  {
    _configureGenerator(paramJsonGenerator);
    if ((_config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE)) && ((paramObject instanceof Closeable)))
    {
      _writeCloseable(paramJsonGenerator, paramObject, _config);
      return;
    }
    int j = 0;
    int i = j;
    for (;;)
    {
      try
      {
        if (_prefetch.valueSerializer != null)
        {
          i = j;
          _serializerProvider(_config).serializeValue(paramJsonGenerator, paramObject, _prefetch.rootType, _prefetch.valueSerializer);
          i = 1;
          paramJsonGenerator.close();
          return;
        }
      }
      finally
      {
        if (i == 0) {
          paramJsonGenerator.disable(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT);
        }
      }
      try
      {
        paramJsonGenerator.close();
        throw ((Throwable)paramObject);
        i = j;
        if (_prefetch.typeSerializer != null)
        {
          i = j;
          _serializerProvider(_config).serializePolymorphic(paramJsonGenerator, paramObject, _prefetch.typeSerializer);
          continue;
        }
        i = j;
        _serializerProvider(_config).serializeValue(paramJsonGenerator, paramObject);
      }
      catch (IOException paramJsonGenerator)
      {
        for (;;) {}
      }
    }
  }
  
  protected JsonGenerator _configureGenerator(JsonGenerator paramJsonGenerator)
  {
    GeneratorSettings localGeneratorSettings = _generatorSettings;
    PrettyPrinter localPrettyPrinter = prettyPrinter;
    if (localPrettyPrinter != null) {
      if (localPrettyPrinter == NULL_PRETTY_PRINTER) {
        paramJsonGenerator.setPrettyPrinter(null);
      }
    }
    for (;;)
    {
      Object localObject = characterEscapes;
      if (localObject != null) {
        paramJsonGenerator.setCharacterEscapes((CharacterEscapes)localObject);
      }
      localObject = schema;
      if (localObject != null) {
        paramJsonGenerator.setSchema((FormatSchema)localObject);
      }
      localObject = rootValueSeparator;
      if (localObject != null) {
        paramJsonGenerator.setRootValueSeparator((SerializableString)localObject);
      }
      _config.initialize(paramJsonGenerator);
      return paramJsonGenerator;
      localObject = localPrettyPrinter;
      if ((localPrettyPrinter instanceof Instantiatable)) {
        localObject = (PrettyPrinter)((Instantiatable)localPrettyPrinter).createInstance();
      }
      paramJsonGenerator.setPrettyPrinter((PrettyPrinter)localObject);
      continue;
      if (_config.isEnabled(SerializationFeature.INDENT_OUTPUT)) {
        paramJsonGenerator.useDefaultPrettyPrinter();
      }
    }
  }
  
  @Deprecated
  protected void _configureJsonGenerator(JsonGenerator paramJsonGenerator)
  {
    _configureGenerator(paramJsonGenerator);
  }
  
  protected ObjectWriter _new(GeneratorSettings paramGeneratorSettings, Prefetch paramPrefetch)
  {
    return new ObjectWriter(this, _config, paramGeneratorSettings, paramPrefetch);
  }
  
  protected ObjectWriter _new(ObjectWriter paramObjectWriter, JsonFactory paramJsonFactory)
  {
    return new ObjectWriter(paramObjectWriter, paramJsonFactory);
  }
  
  protected ObjectWriter _new(ObjectWriter paramObjectWriter, SerializationConfig paramSerializationConfig)
  {
    return new ObjectWriter(paramObjectWriter, paramSerializationConfig);
  }
  
  protected SequenceWriter _newSequenceWriter(boolean paramBoolean1, JsonGenerator paramJsonGenerator, boolean paramBoolean2)
  {
    return new SequenceWriter(_serializerProvider(_config), _configureGenerator(paramJsonGenerator), paramBoolean2, _prefetch).init(paramBoolean1);
  }
  
  protected Prefetch _prefetchRootSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType)
  {
    if ((paramJavaType != null) && (_config.isEnabled(SerializationFeature.EAGER_SERIALIZER_FETCH))) {
      try
      {
        paramSerializationConfig = _serializerProvider(paramSerializationConfig).findTypedValueSerializer(paramJavaType, true, null);
        if ((paramSerializationConfig instanceof TypeWrappedSerializer)) {
          return Prefetch.construct(paramJavaType, ((TypeWrappedSerializer)paramSerializationConfig).typeSerializer());
        }
        paramSerializationConfig = Prefetch.construct(paramJavaType, paramSerializationConfig);
        return paramSerializationConfig;
      }
      catch (JsonProcessingException paramSerializationConfig) {}
    }
    return Prefetch.empty;
  }
  
  protected DefaultSerializerProvider _serializerProvider(SerializationConfig paramSerializationConfig)
  {
    return _serializerProvider.createInstance(paramSerializationConfig, _serializerFactory);
  }
  
  protected void _verifySchemaType(FormatSchema paramFormatSchema)
  {
    if ((paramFormatSchema != null) && (!_generatorFactory.canUseSchema(paramFormatSchema))) {
      throw new IllegalArgumentException("Can not use FormatSchema of type " + paramFormatSchema.getClass().getName() + " for format " + _generatorFactory.getFormatName());
    }
  }
  
  public void acceptJsonFormatVisitor(JavaType paramJavaType, JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper)
  {
    if (paramJavaType == null) {
      throw new IllegalArgumentException("type must be provided");
    }
    _serializerProvider(_config).acceptJsonFormatVisitor(paramJavaType, paramJsonFormatVisitorWrapper);
  }
  
  public boolean canSerialize(Class<?> paramClass)
  {
    return _serializerProvider(_config).hasSerializerFor(paramClass, null);
  }
  
  public boolean canSerialize(Class<?> paramClass, AtomicReference<Throwable> paramAtomicReference)
  {
    return _serializerProvider(_config).hasSerializerFor(paramClass, paramAtomicReference);
  }
  
  public ObjectWriter forType(TypeReference<?> paramTypeReference)
  {
    return forType(_config.getTypeFactory().constructType(paramTypeReference.getType()));
  }
  
  public ObjectWriter forType(JavaType paramJavaType)
  {
    if ((paramJavaType == null) || (paramJavaType.hasRawClass(Object.class))) {}
    for (paramJavaType = Prefetch.empty; paramJavaType == _prefetch; paramJavaType = _prefetchRootSerializer(_config, paramJavaType))
    {
      return this;
      paramJavaType = paramJavaType.withStaticTyping();
    }
    return _new(_generatorSettings, paramJavaType);
  }
  
  public ObjectWriter forType(Class<?> paramClass)
  {
    if (paramClass == Object.class) {
      return forType(null);
    }
    return forType(_config.constructType(paramClass));
  }
  
  public ContextAttributes getAttributes()
  {
    return _config.getAttributes();
  }
  
  public SerializationConfig getConfig()
  {
    return _config;
  }
  
  public JsonFactory getFactory()
  {
    return _generatorFactory;
  }
  
  @Deprecated
  public JsonFactory getJsonFactory()
  {
    return _generatorFactory;
  }
  
  public TypeFactory getTypeFactory()
  {
    return _config.getTypeFactory();
  }
  
  public boolean hasPrefetchedSerializer()
  {
    return _prefetch.hasSerializer();
  }
  
  public boolean isEnabled(JsonParser.Feature paramFeature)
  {
    return _generatorFactory.isEnabled(paramFeature);
  }
  
  public boolean isEnabled(MapperFeature paramMapperFeature)
  {
    return _config.isEnabled(paramMapperFeature);
  }
  
  public boolean isEnabled(SerializationFeature paramSerializationFeature)
  {
    return _config.isEnabled(paramSerializationFeature);
  }
  
  public Version version()
  {
    return PackageVersion.VERSION;
  }
  
  public ObjectWriter with(Base64Variant paramBase64Variant)
  {
    paramBase64Variant = _config.with(paramBase64Variant);
    if (paramBase64Variant == _config) {
      return this;
    }
    return _new(this, paramBase64Variant);
  }
  
  public ObjectWriter with(FormatSchema paramFormatSchema)
  {
    GeneratorSettings localGeneratorSettings = _generatorSettings.with(paramFormatSchema);
    if (localGeneratorSettings == _generatorSettings) {
      return this;
    }
    _verifySchemaType(paramFormatSchema);
    return _new(localGeneratorSettings, _prefetch);
  }
  
  public ObjectWriter with(JsonFactory paramJsonFactory)
  {
    if (paramJsonFactory == _generatorFactory) {
      return this;
    }
    return _new(this, paramJsonFactory);
  }
  
  public ObjectWriter with(JsonGenerator.Feature paramFeature)
  {
    paramFeature = _config.with(paramFeature);
    if (paramFeature == _config) {
      return this;
    }
    return _new(this, paramFeature);
  }
  
  public ObjectWriter with(PrettyPrinter paramPrettyPrinter)
  {
    paramPrettyPrinter = _generatorSettings.with(paramPrettyPrinter);
    if (paramPrettyPrinter == _generatorSettings) {
      return this;
    }
    return _new(paramPrettyPrinter, _prefetch);
  }
  
  public ObjectWriter with(CharacterEscapes paramCharacterEscapes)
  {
    paramCharacterEscapes = _generatorSettings.with(paramCharacterEscapes);
    if (paramCharacterEscapes == _generatorSettings) {
      return this;
    }
    return _new(paramCharacterEscapes, _prefetch);
  }
  
  public ObjectWriter with(SerializationFeature paramSerializationFeature)
  {
    paramSerializationFeature = _config.with(paramSerializationFeature);
    if (paramSerializationFeature == _config) {
      return this;
    }
    return _new(this, paramSerializationFeature);
  }
  
  public ObjectWriter with(SerializationFeature paramSerializationFeature, SerializationFeature... paramVarArgs)
  {
    paramSerializationFeature = _config.with(paramSerializationFeature, paramVarArgs);
    if (paramSerializationFeature == _config) {
      return this;
    }
    return _new(this, paramSerializationFeature);
  }
  
  public ObjectWriter with(ContextAttributes paramContextAttributes)
  {
    paramContextAttributes = _config.with(paramContextAttributes);
    if (paramContextAttributes == _config) {
      return this;
    }
    return _new(this, paramContextAttributes);
  }
  
  public ObjectWriter with(FilterProvider paramFilterProvider)
  {
    if (paramFilterProvider == _config.getFilterProvider()) {
      return this;
    }
    return _new(this, _config.withFilters(paramFilterProvider));
  }
  
  public ObjectWriter with(DateFormat paramDateFormat)
  {
    paramDateFormat = _config.with(paramDateFormat);
    if (paramDateFormat == _config) {
      return this;
    }
    return _new(this, paramDateFormat);
  }
  
  public ObjectWriter with(Locale paramLocale)
  {
    paramLocale = _config.with(paramLocale);
    if (paramLocale == _config) {
      return this;
    }
    return _new(this, paramLocale);
  }
  
  public ObjectWriter with(TimeZone paramTimeZone)
  {
    paramTimeZone = _config.with(paramTimeZone);
    if (paramTimeZone == _config) {
      return this;
    }
    return _new(this, paramTimeZone);
  }
  
  public ObjectWriter withAttribute(Object paramObject1, Object paramObject2)
  {
    paramObject1 = (SerializationConfig)_config.withAttribute(paramObject1, paramObject2);
    if (paramObject1 == _config) {
      return this;
    }
    return _new(this, (SerializationConfig)paramObject1);
  }
  
  public ObjectWriter withAttributes(Map<Object, Object> paramMap)
  {
    paramMap = (SerializationConfig)_config.withAttributes(paramMap);
    if (paramMap == _config) {
      return this;
    }
    return _new(this, paramMap);
  }
  
  public ObjectWriter withDefaultPrettyPrinter()
  {
    return with(new DefaultPrettyPrinter());
  }
  
  public ObjectWriter withFeatures(JsonGenerator.Feature... paramVarArgs)
  {
    paramVarArgs = _config.withFeatures(paramVarArgs);
    if (paramVarArgs == _config) {
      return this;
    }
    return _new(this, paramVarArgs);
  }
  
  public ObjectWriter withFeatures(SerializationFeature... paramVarArgs)
  {
    paramVarArgs = _config.withFeatures(paramVarArgs);
    if (paramVarArgs == _config) {
      return this;
    }
    return _new(this, paramVarArgs);
  }
  
  public ObjectWriter withRootName(String paramString)
  {
    paramString = _config.withRootName(paramString);
    if (paramString == _config) {
      return this;
    }
    return _new(this, paramString);
  }
  
  public ObjectWriter withRootValueSeparator(SerializableString paramSerializableString)
  {
    paramSerializableString = _generatorSettings.withRootValueSeparator(paramSerializableString);
    if (paramSerializableString == _generatorSettings) {
      return this;
    }
    return _new(paramSerializableString, _prefetch);
  }
  
  public ObjectWriter withRootValueSeparator(String paramString)
  {
    paramString = _generatorSettings.withRootValueSeparator(paramString);
    if (paramString == _generatorSettings) {
      return this;
    }
    return _new(paramString, _prefetch);
  }
  
  @Deprecated
  public ObjectWriter withSchema(FormatSchema paramFormatSchema)
  {
    return with(paramFormatSchema);
  }
  
  @Deprecated
  public ObjectWriter withType(TypeReference<?> paramTypeReference)
  {
    return forType(paramTypeReference);
  }
  
  @Deprecated
  public ObjectWriter withType(JavaType paramJavaType)
  {
    return forType(paramJavaType);
  }
  
  @Deprecated
  public ObjectWriter withType(Class<?> paramClass)
  {
    return forType(paramClass);
  }
  
  public ObjectWriter withView(Class<?> paramClass)
  {
    paramClass = _config.withView(paramClass);
    if (paramClass == _config) {
      return this;
    }
    return _new(this, paramClass);
  }
  
  public ObjectWriter without(JsonGenerator.Feature paramFeature)
  {
    paramFeature = _config.without(paramFeature);
    if (paramFeature == _config) {
      return this;
    }
    return _new(this, paramFeature);
  }
  
  public ObjectWriter without(SerializationFeature paramSerializationFeature)
  {
    paramSerializationFeature = _config.without(paramSerializationFeature);
    if (paramSerializationFeature == _config) {
      return this;
    }
    return _new(this, paramSerializationFeature);
  }
  
  public ObjectWriter without(SerializationFeature paramSerializationFeature, SerializationFeature... paramVarArgs)
  {
    paramSerializationFeature = _config.without(paramSerializationFeature, paramVarArgs);
    if (paramSerializationFeature == _config) {
      return this;
    }
    return _new(this, paramSerializationFeature);
  }
  
  public ObjectWriter withoutAttribute(Object paramObject)
  {
    paramObject = (SerializationConfig)_config.withoutAttribute(paramObject);
    if (paramObject == _config) {
      return this;
    }
    return _new(this, (SerializationConfig)paramObject);
  }
  
  public ObjectWriter withoutFeatures(JsonGenerator.Feature... paramVarArgs)
  {
    paramVarArgs = _config.withoutFeatures(paramVarArgs);
    if (paramVarArgs == _config) {
      return this;
    }
    return _new(this, paramVarArgs);
  }
  
  public ObjectWriter withoutFeatures(SerializationFeature... paramVarArgs)
  {
    paramVarArgs = _config.withoutFeatures(paramVarArgs);
    if (paramVarArgs == _config) {
      return this;
    }
    return _new(this, paramVarArgs);
  }
  
  public void writeValue(JsonGenerator paramJsonGenerator, Object paramObject)
  {
    _configureGenerator(paramJsonGenerator);
    if ((_config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE)) && ((paramObject instanceof Closeable))) {
      _writeCloseableValue(paramJsonGenerator, paramObject, _config);
    }
    for (;;)
    {
      return;
      if (_prefetch.valueSerializer != null) {
        _serializerProvider(_config).serializeValue(paramJsonGenerator, paramObject, _prefetch.rootType, _prefetch.valueSerializer);
      }
      while (_config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE))
      {
        paramJsonGenerator.flush();
        return;
        if (_prefetch.typeSerializer != null) {
          _serializerProvider(_config).serializePolymorphic(paramJsonGenerator, paramObject, _prefetch.typeSerializer);
        } else {
          _serializerProvider(_config).serializeValue(paramJsonGenerator, paramObject);
        }
      }
    }
  }
  
  public void writeValue(File paramFile, Object paramObject)
  {
    _configAndWriteValue(_generatorFactory.createGenerator(paramFile, JsonEncoding.UTF8), paramObject);
  }
  
  public void writeValue(OutputStream paramOutputStream, Object paramObject)
  {
    _configAndWriteValue(_generatorFactory.createGenerator(paramOutputStream, JsonEncoding.UTF8), paramObject);
  }
  
  public void writeValue(Writer paramWriter, Object paramObject)
  {
    _configAndWriteValue(_generatorFactory.createGenerator(paramWriter), paramObject);
  }
  
  public byte[] writeValueAsBytes(Object paramObject)
  {
    ByteArrayBuilder localByteArrayBuilder = new ByteArrayBuilder(_generatorFactory._getBufferRecycler());
    try
    {
      _configAndWriteValue(_generatorFactory.createGenerator(localByteArrayBuilder, JsonEncoding.UTF8), paramObject);
      paramObject = localByteArrayBuilder.toByteArray();
      localByteArrayBuilder.release();
      return (byte[])paramObject;
    }
    catch (JsonProcessingException paramObject)
    {
      throw ((Throwable)paramObject);
    }
    catch (IOException paramObject)
    {
      throw JsonMappingException.fromUnexpectedIOE((IOException)paramObject);
    }
  }
  
  public String writeValueAsString(Object paramObject)
  {
    SegmentedStringWriter localSegmentedStringWriter = new SegmentedStringWriter(_generatorFactory._getBufferRecycler());
    try
    {
      _configAndWriteValue(_generatorFactory.createGenerator(localSegmentedStringWriter), paramObject);
      return localSegmentedStringWriter.getAndClear();
    }
    catch (JsonProcessingException paramObject)
    {
      throw ((Throwable)paramObject);
    }
    catch (IOException paramObject)
    {
      throw JsonMappingException.fromUnexpectedIOE((IOException)paramObject);
    }
  }
  
  public SequenceWriter writeValues(JsonGenerator paramJsonGenerator)
  {
    return _newSequenceWriter(false, _configureGenerator(paramJsonGenerator), false);
  }
  
  public SequenceWriter writeValues(File paramFile)
  {
    return _newSequenceWriter(false, _generatorFactory.createGenerator(paramFile, JsonEncoding.UTF8), true);
  }
  
  public SequenceWriter writeValues(OutputStream paramOutputStream)
  {
    return _newSequenceWriter(false, _generatorFactory.createGenerator(paramOutputStream, JsonEncoding.UTF8), true);
  }
  
  public SequenceWriter writeValues(Writer paramWriter)
  {
    return _newSequenceWriter(false, _generatorFactory.createGenerator(paramWriter), true);
  }
  
  public SequenceWriter writeValuesAsArray(JsonGenerator paramJsonGenerator)
  {
    return _newSequenceWriter(true, paramJsonGenerator, false);
  }
  
  public SequenceWriter writeValuesAsArray(File paramFile)
  {
    return _newSequenceWriter(true, _generatorFactory.createGenerator(paramFile, JsonEncoding.UTF8), true);
  }
  
  public SequenceWriter writeValuesAsArray(OutputStream paramOutputStream)
  {
    return _newSequenceWriter(true, _generatorFactory.createGenerator(paramOutputStream, JsonEncoding.UTF8), true);
  }
  
  public SequenceWriter writeValuesAsArray(Writer paramWriter)
  {
    return _newSequenceWriter(true, _generatorFactory.createGenerator(paramWriter), true);
  }
  
  public static final class GeneratorSettings
    implements Serializable
  {
    public static final GeneratorSettings empty = new GeneratorSettings(null, null, null, null);
    private static final long serialVersionUID = 1L;
    public final CharacterEscapes characterEscapes;
    public final PrettyPrinter prettyPrinter;
    public final SerializableString rootValueSeparator;
    public final FormatSchema schema;
    
    public GeneratorSettings(PrettyPrinter paramPrettyPrinter, FormatSchema paramFormatSchema, CharacterEscapes paramCharacterEscapes, SerializableString paramSerializableString)
    {
      prettyPrinter = paramPrettyPrinter;
      schema = paramFormatSchema;
      characterEscapes = paramCharacterEscapes;
      rootValueSeparator = paramSerializableString;
    }
    
    public final GeneratorSettings with(FormatSchema paramFormatSchema)
    {
      if (schema == paramFormatSchema) {
        return this;
      }
      return new GeneratorSettings(prettyPrinter, paramFormatSchema, characterEscapes, rootValueSeparator);
    }
    
    public final GeneratorSettings with(PrettyPrinter paramPrettyPrinter)
    {
      PrettyPrinter localPrettyPrinter = paramPrettyPrinter;
      if (paramPrettyPrinter == null) {
        localPrettyPrinter = ObjectWriter.NULL_PRETTY_PRINTER;
      }
      if (localPrettyPrinter == prettyPrinter) {
        return this;
      }
      return new GeneratorSettings(localPrettyPrinter, schema, characterEscapes, rootValueSeparator);
    }
    
    public final GeneratorSettings with(CharacterEscapes paramCharacterEscapes)
    {
      if (characterEscapes == paramCharacterEscapes) {
        return this;
      }
      return new GeneratorSettings(prettyPrinter, schema, paramCharacterEscapes, rootValueSeparator);
    }
    
    public final GeneratorSettings withRootValueSeparator(SerializableString paramSerializableString)
    {
      if (paramSerializableString == null)
      {
        if (rootValueSeparator != null) {}
      }
      else {
        while ((rootValueSeparator != null) && (paramSerializableString.getValue().equals(rootValueSeparator.getValue()))) {
          return this;
        }
      }
      return new GeneratorSettings(prettyPrinter, schema, characterEscapes, paramSerializableString);
    }
    
    public final GeneratorSettings withRootValueSeparator(String paramString)
    {
      if (paramString == null)
      {
        if (rootValueSeparator != null) {}
      }
      else {
        while (paramString.equals(rootValueSeparator)) {
          return this;
        }
      }
      PrettyPrinter localPrettyPrinter = prettyPrinter;
      FormatSchema localFormatSchema = schema;
      CharacterEscapes localCharacterEscapes = characterEscapes;
      if (paramString == null) {}
      for (paramString = null;; paramString = new SerializedString(paramString)) {
        return new GeneratorSettings(localPrettyPrinter, localFormatSchema, localCharacterEscapes, paramString);
      }
    }
  }
  
  public static final class Prefetch
    implements Serializable
  {
    public static final Prefetch empty = new Prefetch(null, null, null);
    private static final long serialVersionUID = 1L;
    public final JavaType rootType;
    public final TypeSerializer typeSerializer;
    public final JsonSerializer<Object> valueSerializer;
    
    private Prefetch(JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer, TypeSerializer paramTypeSerializer)
    {
      rootType = paramJavaType;
      valueSerializer = paramJsonSerializer;
      typeSerializer = paramTypeSerializer;
    }
    
    public static Prefetch construct(JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer)
    {
      if ((paramJavaType == null) && (paramJsonSerializer == null)) {
        return empty;
      }
      return new Prefetch(paramJavaType, paramJsonSerializer, null);
    }
    
    public static Prefetch construct(JavaType paramJavaType, TypeSerializer paramTypeSerializer)
    {
      if ((paramJavaType == null) && (paramTypeSerializer == null)) {
        return empty;
      }
      return new Prefetch(paramJavaType, null, paramTypeSerializer);
    }
    
    public final boolean hasSerializer()
    {
      return (valueSerializer != null) || (typeSerializer != null);
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ObjectWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */