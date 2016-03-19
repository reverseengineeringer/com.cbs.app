package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.core.type.ResolvedType;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.deser.DataFormatReaders;
import com.fasterxml.jackson.databind.deser.DataFormatReaders.Match;
import com.fasterxml.jackson.databind.deser.DefaultDeserializationContext;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.NullNode;
import com.fasterxml.jackson.databind.node.TreeTraversingParser;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

public class ObjectReader
  extends ObjectCodec
  implements Versioned, Serializable
{
  private static final JavaType JSON_NODE_TYPE = SimpleType.constructUnsafe(JsonNode.class);
  private static final long serialVersionUID = 1L;
  protected final DeserializationConfig _config;
  protected final DefaultDeserializationContext _context;
  protected final DataFormatReaders _dataFormatReaders;
  protected final InjectableValues _injectableValues;
  protected final JsonFactory _parserFactory;
  protected final JsonDeserializer<Object> _rootDeserializer;
  protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _rootDeserializers;
  protected final RootNameLookup _rootNames;
  protected final FormatSchema _schema;
  protected final boolean _unwrapRoot;
  protected final Object _valueToUpdate;
  protected final JavaType _valueType;
  
  protected ObjectReader(ObjectMapper paramObjectMapper, DeserializationConfig paramDeserializationConfig)
  {
    this(paramObjectMapper, paramDeserializationConfig, null, null, null, null);
  }
  
  protected ObjectReader(ObjectMapper paramObjectMapper, DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, Object paramObject, FormatSchema paramFormatSchema, InjectableValues paramInjectableValues)
  {
    _config = paramDeserializationConfig;
    _context = _deserializationContext;
    _rootDeserializers = _rootDeserializers;
    _parserFactory = _jsonFactory;
    _rootNames = _rootNames;
    _valueType = paramJavaType;
    _valueToUpdate = paramObject;
    if ((paramObject != null) && (paramJavaType.isArrayType())) {
      throw new IllegalArgumentException("Can not update an array value");
    }
    _schema = paramFormatSchema;
    _injectableValues = paramInjectableValues;
    _unwrapRoot = paramDeserializationConfig.useRootWrapping();
    _rootDeserializer = _prefetchRootDeserializer(paramDeserializationConfig, paramJavaType);
    _dataFormatReaders = null;
  }
  
  protected ObjectReader(ObjectReader paramObjectReader, JsonFactory paramJsonFactory)
  {
    _config = _config.with(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY, paramJsonFactory.requiresPropertyOrdering());
    _context = _context;
    _rootDeserializers = _rootDeserializers;
    _parserFactory = paramJsonFactory;
    _rootNames = _rootNames;
    _valueType = _valueType;
    _rootDeserializer = _rootDeserializer;
    _valueToUpdate = _valueToUpdate;
    _schema = _schema;
    _injectableValues = _injectableValues;
    _unwrapRoot = _unwrapRoot;
    _dataFormatReaders = _dataFormatReaders;
  }
  
  protected ObjectReader(ObjectReader paramObjectReader, DeserializationConfig paramDeserializationConfig)
  {
    _config = paramDeserializationConfig;
    _context = _context;
    _rootDeserializers = _rootDeserializers;
    _parserFactory = _parserFactory;
    _rootNames = _rootNames;
    _valueType = _valueType;
    _rootDeserializer = _rootDeserializer;
    _valueToUpdate = _valueToUpdate;
    _schema = _schema;
    _injectableValues = _injectableValues;
    _unwrapRoot = paramDeserializationConfig.useRootWrapping();
    _dataFormatReaders = _dataFormatReaders;
  }
  
  protected ObjectReader(ObjectReader paramObjectReader, DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, JsonDeserializer<Object> paramJsonDeserializer, Object paramObject, FormatSchema paramFormatSchema, InjectableValues paramInjectableValues, DataFormatReaders paramDataFormatReaders)
  {
    _config = paramDeserializationConfig;
    _context = _context;
    _rootDeserializers = _rootDeserializers;
    _parserFactory = _parserFactory;
    _rootNames = _rootNames;
    _valueType = paramJavaType;
    _rootDeserializer = paramJsonDeserializer;
    _valueToUpdate = paramObject;
    if ((paramObject != null) && (paramJavaType.isArrayType())) {
      throw new IllegalArgumentException("Can not update an array value");
    }
    _schema = paramFormatSchema;
    _injectableValues = paramInjectableValues;
    _unwrapRoot = paramDeserializationConfig.useRootWrapping();
    _dataFormatReaders = paramDataFormatReaders;
  }
  
  protected Object _bind(JsonParser paramJsonParser, Object paramObject)
  {
    Object localObject2 = _initForReading(paramJsonParser);
    Object localObject1;
    if (localObject2 == JsonToken.VALUE_NULL)
    {
      localObject1 = paramObject;
      if (paramObject == null) {
        localObject1 = _findRootDeserializer(createDeserializationContext(paramJsonParser, _config), _valueType).getNullValue();
      }
    }
    for (;;)
    {
      paramJsonParser.clearCurrentToken();
      return localObject1;
      localObject1 = paramObject;
      if (localObject2 != JsonToken.END_ARRAY)
      {
        localObject1 = paramObject;
        if (localObject2 != JsonToken.END_OBJECT)
        {
          localObject1 = createDeserializationContext(paramJsonParser, _config);
          localObject2 = _findRootDeserializer((DeserializationContext)localObject1, _valueType);
          if (_unwrapRoot)
          {
            localObject1 = _unwrapAndDeserialize(paramJsonParser, (DeserializationContext)localObject1, _valueType, (JsonDeserializer)localObject2);
          }
          else if (paramObject == null)
          {
            localObject1 = ((JsonDeserializer)localObject2).deserialize(paramJsonParser, (DeserializationContext)localObject1);
          }
          else
          {
            ((JsonDeserializer)localObject2).deserialize(paramJsonParser, (DeserializationContext)localObject1, paramObject);
            localObject1 = paramObject;
          }
        }
      }
    }
  }
  
  /* Error */
  protected Object _bindAndClose(JsonParser paramJsonParser, Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 141	com/fasterxml/jackson/databind/ObjectReader:_initForReading	(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;
    //   5: astore 4
    //   7: aload 4
    //   9: getstatic 147	com/fasterxml/jackson/core/JsonToken:VALUE_NULL	Lcom/fasterxml/jackson/core/JsonToken;
    //   12: if_acmpne +36 -> 48
    //   15: aload_2
    //   16: astore_3
    //   17: aload_2
    //   18: ifnonnull +24 -> 42
    //   21: aload_0
    //   22: aload_0
    //   23: aload_1
    //   24: aload_0
    //   25: getfield 61	com/fasterxml/jackson/databind/ObjectReader:_config	Lcom/fasterxml/jackson/databind/DeserializationConfig;
    //   28: invokevirtual 151	com/fasterxml/jackson/databind/ObjectReader:createDeserializationContext	(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    //   31: aload_0
    //   32: getfield 81	com/fasterxml/jackson/databind/ObjectReader:_valueType	Lcom/fasterxml/jackson/databind/JavaType;
    //   35: invokevirtual 155	com/fasterxml/jackson/databind/ObjectReader:_findRootDeserializer	(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    //   38: invokevirtual 161	com/fasterxml/jackson/databind/JsonDeserializer:getNullValue	()Ljava/lang/Object;
    //   41: astore_3
    //   42: aload_1
    //   43: invokevirtual 189	com/fasterxml/jackson/core/JsonParser:close	()V
    //   46: aload_3
    //   47: areturn
    //   48: aload_2
    //   49: astore_3
    //   50: aload 4
    //   52: getstatic 169	com/fasterxml/jackson/core/JsonToken:END_ARRAY	Lcom/fasterxml/jackson/core/JsonToken;
    //   55: if_acmpeq -13 -> 42
    //   58: aload_2
    //   59: astore_3
    //   60: aload 4
    //   62: getstatic 172	com/fasterxml/jackson/core/JsonToken:END_OBJECT	Lcom/fasterxml/jackson/core/JsonToken;
    //   65: if_acmpeq -23 -> 42
    //   68: aload_0
    //   69: aload_1
    //   70: aload_0
    //   71: getfield 61	com/fasterxml/jackson/databind/ObjectReader:_config	Lcom/fasterxml/jackson/databind/DeserializationConfig;
    //   74: invokevirtual 151	com/fasterxml/jackson/databind/ObjectReader:createDeserializationContext	(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    //   77: astore_3
    //   78: aload_0
    //   79: aload_3
    //   80: aload_0
    //   81: getfield 81	com/fasterxml/jackson/databind/ObjectReader:_valueType	Lcom/fasterxml/jackson/databind/JavaType;
    //   84: invokevirtual 155	com/fasterxml/jackson/databind/ObjectReader:_findRootDeserializer	(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    //   87: astore 4
    //   89: aload_0
    //   90: getfield 107	com/fasterxml/jackson/databind/ObjectReader:_unwrapRoot	Z
    //   93: ifeq +19 -> 112
    //   96: aload_0
    //   97: aload_1
    //   98: aload_3
    //   99: aload_0
    //   100: getfield 81	com/fasterxml/jackson/databind/ObjectReader:_valueType	Lcom/fasterxml/jackson/databind/JavaType;
    //   103: aload 4
    //   105: invokevirtual 176	com/fasterxml/jackson/databind/ObjectReader:_unwrapAndDeserialize	(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
    //   108: astore_3
    //   109: goto -67 -> 42
    //   112: aload_2
    //   113: ifnonnull +14 -> 127
    //   116: aload 4
    //   118: aload_1
    //   119: aload_3
    //   120: invokevirtual 180	com/fasterxml/jackson/databind/JsonDeserializer:deserialize	(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    //   123: astore_3
    //   124: goto -82 -> 42
    //   127: aload 4
    //   129: aload_1
    //   130: aload_3
    //   131: aload_2
    //   132: invokevirtual 183	com/fasterxml/jackson/databind/JsonDeserializer:deserialize	(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    //   135: pop
    //   136: aload_2
    //   137: astore_3
    //   138: goto -96 -> 42
    //   141: astore_2
    //   142: aload_1
    //   143: invokevirtual 189	com/fasterxml/jackson/core/JsonParser:close	()V
    //   146: aload_2
    //   147: athrow
    //   148: astore_1
    //   149: aload_3
    //   150: areturn
    //   151: astore_1
    //   152: goto -6 -> 146
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	ObjectReader
    //   0	155	1	paramJsonParser	JsonParser
    //   0	155	2	paramObject	Object
    //   16	134	3	localObject1	Object
    //   5	123	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   0	15	141	finally
    //   21	42	141	finally
    //   50	58	141	finally
    //   60	109	141	finally
    //   116	124	141	finally
    //   127	136	141	finally
    //   42	46	148	java/io/IOException
    //   142	146	151	java/io/IOException
  }
  
  /* Error */
  protected JsonNode _bindAndCloseAsTree(JsonParser paramJsonParser)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 194	com/fasterxml/jackson/databind/ObjectReader:_bindAsTree	(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/JsonNode;
    //   5: astore_2
    //   6: aload_1
    //   7: invokevirtual 189	com/fasterxml/jackson/core/JsonParser:close	()V
    //   10: aload_2
    //   11: areturn
    //   12: astore_2
    //   13: aload_1
    //   14: invokevirtual 189	com/fasterxml/jackson/core/JsonParser:close	()V
    //   17: aload_2
    //   18: athrow
    //   19: astore_1
    //   20: aload_2
    //   21: areturn
    //   22: astore_1
    //   23: goto -6 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	26	0	this	ObjectReader
    //   0	26	1	paramJsonParser	JsonParser
    //   5	6	2	localJsonNode1	JsonNode
    //   12	9	2	localJsonNode2	JsonNode
    // Exception table:
    //   from	to	target	type
    //   0	6	12	finally
    //   6	10	19	java/io/IOException
    //   13	17	22	java/io/IOException
  }
  
  protected <T> MappingIterator<T> _bindAndReadValues(JsonParser paramJsonParser, Object paramObject)
  {
    _initForMultiRead(paramJsonParser);
    paramJsonParser.nextToken();
    paramObject = createDeserializationContext(paramJsonParser, _config);
    return _newIterator(_valueType, paramJsonParser, (DeserializationContext)paramObject, _findRootDeserializer((DeserializationContext)paramObject, _valueType), true, _valueToUpdate);
  }
  
  protected JsonNode _bindAsTree(JsonParser paramJsonParser)
  {
    Object localObject = _initForReading(paramJsonParser);
    if ((localObject == JsonToken.VALUE_NULL) || (localObject == JsonToken.END_ARRAY) || (localObject == JsonToken.END_OBJECT)) {
      localObject = NullNode.instance;
    }
    for (;;)
    {
      paramJsonParser.clearCurrentToken();
      return (JsonNode)localObject;
      localObject = createDeserializationContext(paramJsonParser, _config);
      JsonDeserializer localJsonDeserializer = _findTreeDeserializer((DeserializationContext)localObject);
      if (_unwrapRoot) {
        localObject = (JsonNode)_unwrapAndDeserialize(paramJsonParser, (DeserializationContext)localObject, JSON_NODE_TYPE, localJsonDeserializer);
      } else {
        localObject = (JsonNode)localJsonDeserializer.deserialize(paramJsonParser, (DeserializationContext)localObject);
      }
    }
  }
  
  protected Object _detectBindAndClose(DataFormatReaders.Match paramMatch, boolean paramBoolean)
  {
    if (!paramMatch.hasMatch()) {
      _reportUnkownFormat(_dataFormatReaders, paramMatch);
    }
    JsonParser localJsonParser = paramMatch.createParserWithMatch();
    if (paramBoolean) {
      localJsonParser.enable(JsonParser.Feature.AUTO_CLOSE_SOURCE);
    }
    return paramMatch.getReader()._bindAndClose(localJsonParser, _valueToUpdate);
  }
  
  protected Object _detectBindAndClose(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte = _dataFormatReaders.findFormat(paramArrayOfByte, paramInt1, paramInt2);
    if (!paramArrayOfByte.hasMatch()) {
      _reportUnkownFormat(_dataFormatReaders, paramArrayOfByte);
    }
    JsonParser localJsonParser = paramArrayOfByte.createParserWithMatch();
    return paramArrayOfByte.getReader()._bindAndClose(localJsonParser, _valueToUpdate);
  }
  
  protected JsonNode _detectBindAndCloseAsTree(InputStream paramInputStream)
  {
    paramInputStream = _dataFormatReaders.findFormat(paramInputStream);
    if (!paramInputStream.hasMatch()) {
      _reportUnkownFormat(_dataFormatReaders, paramInputStream);
    }
    JsonParser localJsonParser = paramInputStream.createParserWithMatch();
    localJsonParser.enable(JsonParser.Feature.AUTO_CLOSE_SOURCE);
    return paramInputStream.getReader()._bindAndCloseAsTree(localJsonParser);
  }
  
  protected <T> MappingIterator<T> _detectBindAndReadValues(DataFormatReaders.Match paramMatch, boolean paramBoolean)
  {
    if (!paramMatch.hasMatch()) {
      _reportUnkownFormat(_dataFormatReaders, paramMatch);
    }
    JsonParser localJsonParser = paramMatch.createParserWithMatch();
    if (paramBoolean) {
      localJsonParser.enable(JsonParser.Feature.AUTO_CLOSE_SOURCE);
    }
    return paramMatch.getReader()._bindAndReadValues(localJsonParser, _valueToUpdate);
  }
  
  protected JsonDeserializer<Object> _findRootDeserializer(DeserializationContext paramDeserializationContext, JavaType paramJavaType)
  {
    Object localObject;
    if (_rootDeserializer != null) {
      localObject = _rootDeserializer;
    }
    JsonDeserializer localJsonDeserializer;
    do
    {
      return (JsonDeserializer<Object>)localObject;
      if (paramJavaType == null) {
        throw new JsonMappingException("No value type configured for ObjectReader");
      }
      localJsonDeserializer = (JsonDeserializer)_rootDeserializers.get(paramJavaType);
      localObject = localJsonDeserializer;
    } while (localJsonDeserializer != null);
    paramDeserializationContext = paramDeserializationContext.findRootValueDeserializer(paramJavaType);
    if (paramDeserializationContext == null) {
      throw new JsonMappingException("Can not find a deserializer for type " + paramJavaType);
    }
    _rootDeserializers.put(paramJavaType, paramDeserializationContext);
    return paramDeserializationContext;
  }
  
  protected JsonDeserializer<Object> _findTreeDeserializer(DeserializationContext paramDeserializationContext)
  {
    JsonDeserializer localJsonDeserializer2 = (JsonDeserializer)_rootDeserializers.get(JSON_NODE_TYPE);
    JsonDeserializer localJsonDeserializer1 = localJsonDeserializer2;
    if (localJsonDeserializer2 == null)
    {
      localJsonDeserializer1 = paramDeserializationContext.findRootValueDeserializer(JSON_NODE_TYPE);
      if (localJsonDeserializer1 == null) {
        throw new JsonMappingException("Can not find a deserializer for type " + JSON_NODE_TYPE);
      }
      _rootDeserializers.put(JSON_NODE_TYPE, localJsonDeserializer1);
    }
    return localJsonDeserializer1;
  }
  
  protected void _initForMultiRead(JsonParser paramJsonParser)
  {
    if (_schema != null) {
      paramJsonParser.setSchema(_schema);
    }
    _config.initialize(paramJsonParser);
  }
  
  protected JsonToken _initForReading(JsonParser paramJsonParser)
  {
    if (_schema != null) {
      paramJsonParser.setSchema(_schema);
    }
    _config.initialize(paramJsonParser);
    JsonToken localJsonToken2 = paramJsonParser.getCurrentToken();
    JsonToken localJsonToken1 = localJsonToken2;
    if (localJsonToken2 == null)
    {
      localJsonToken2 = paramJsonParser.nextToken();
      localJsonToken1 = localJsonToken2;
      if (localJsonToken2 == null) {
        throw JsonMappingException.from(paramJsonParser, "No content to map due to end-of-input");
      }
    }
    return localJsonToken1;
  }
  
  protected InputStream _inputStream(File paramFile)
  {
    return new FileInputStream(paramFile);
  }
  
  protected InputStream _inputStream(URL paramURL)
  {
    return paramURL.openStream();
  }
  
  protected ObjectReader _new(ObjectReader paramObjectReader, JsonFactory paramJsonFactory)
  {
    return new ObjectReader(paramObjectReader, paramJsonFactory);
  }
  
  protected ObjectReader _new(ObjectReader paramObjectReader, DeserializationConfig paramDeserializationConfig)
  {
    return new ObjectReader(paramObjectReader, paramDeserializationConfig);
  }
  
  protected ObjectReader _new(ObjectReader paramObjectReader, DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, JsonDeserializer<Object> paramJsonDeserializer, Object paramObject, FormatSchema paramFormatSchema, InjectableValues paramInjectableValues, DataFormatReaders paramDataFormatReaders)
  {
    return new ObjectReader(paramObjectReader, paramDeserializationConfig, paramJavaType, paramJsonDeserializer, paramObject, paramFormatSchema, paramInjectableValues, paramDataFormatReaders);
  }
  
  protected <T> MappingIterator<T> _newIterator(JavaType paramJavaType, JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, JsonDeserializer<?> paramJsonDeserializer, boolean paramBoolean, Object paramObject)
  {
    return new MappingIterator(paramJavaType, paramJsonParser, paramDeserializationContext, paramJsonDeserializer, paramBoolean, paramObject);
  }
  
  protected JsonDeserializer<Object> _prefetchRootDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    JsonDeserializer localJsonDeserializer = null;
    paramDeserializationConfig = localJsonDeserializer;
    if (paramJavaType != null)
    {
      if (_config.isEnabled(DeserializationFeature.EAGER_DESERIALIZER_FETCH)) {
        break label25;
      }
      paramDeserializationConfig = localJsonDeserializer;
    }
    for (;;)
    {
      return paramDeserializationConfig;
      label25:
      localJsonDeserializer = (JsonDeserializer)_rootDeserializers.get(paramJavaType);
      paramDeserializationConfig = localJsonDeserializer;
      if (localJsonDeserializer == null)
      {
        paramDeserializationConfig = localJsonDeserializer;
        try
        {
          localJsonDeserializer = createDeserializationContext(null, _config).findRootValueDeserializer(paramJavaType);
          paramDeserializationConfig = localJsonDeserializer;
          if (localJsonDeserializer != null)
          {
            paramDeserializationConfig = localJsonDeserializer;
            _rootDeserializers.put(paramJavaType, localJsonDeserializer);
            return localJsonDeserializer;
          }
        }
        catch (JsonProcessingException paramJavaType) {}
      }
    }
    return paramDeserializationConfig;
  }
  
  protected void _reportUndetectableSource(Object paramObject)
  {
    throw new JsonParseException("Can not use source of type " + paramObject.getClass().getName() + " with format auto-detection: must be byte- not char-based", JsonLocation.NA);
  }
  
  protected void _reportUnkownFormat(DataFormatReaders paramDataFormatReaders, DataFormatReaders.Match paramMatch)
  {
    throw new JsonParseException("Can not detect format from input, does not look like any of detectable formats " + paramDataFormatReaders.toString(), JsonLocation.NA);
  }
  
  protected Object _unwrapAndDeserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, JavaType paramJavaType, JsonDeserializer<Object> paramJsonDeserializer)
  {
    String str2 = _config.getRootName();
    String str1 = str2;
    if (str2 == null) {
      str1 = _rootNames.findRootName(paramJavaType, _config).getSimpleName();
    }
    if (paramJsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
      throw JsonMappingException.from(paramJsonParser, "Current token not START_OBJECT (needed to unwrap root name '" + str1 + "'), but " + paramJsonParser.getCurrentToken());
    }
    if (paramJsonParser.nextToken() != JsonToken.FIELD_NAME) {
      throw JsonMappingException.from(paramJsonParser, "Current token not FIELD_NAME (to contain expected root name '" + str1 + "'), but " + paramJsonParser.getCurrentToken());
    }
    str2 = paramJsonParser.getCurrentName();
    if (!str1.equals(str2)) {
      throw JsonMappingException.from(paramJsonParser, "Root name '" + str2 + "' does not match expected ('" + str1 + "') for type " + paramJavaType);
    }
    paramJsonParser.nextToken();
    if (_valueToUpdate == null) {}
    for (paramDeserializationContext = paramJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext); paramJsonParser.nextToken() != JsonToken.END_OBJECT; paramDeserializationContext = _valueToUpdate)
    {
      throw JsonMappingException.from(paramJsonParser, "Current token not END_OBJECT (to match wrapper object with root name '" + str1 + "'), but " + paramJsonParser.getCurrentToken());
      paramJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext, _valueToUpdate);
    }
    return paramDeserializationContext;
  }
  
  protected void _verifySchemaType(FormatSchema paramFormatSchema)
  {
    if ((paramFormatSchema != null) && (!_parserFactory.canUseSchema(paramFormatSchema))) {
      throw new IllegalArgumentException("Can not use FormatSchema of type " + paramFormatSchema.getClass().getName() + " for format " + _parserFactory.getFormatName());
    }
  }
  
  protected ObjectReader _with(DeserializationConfig paramDeserializationConfig)
  {
    if (paramDeserializationConfig == _config) {
      return this;
    }
    ObjectReader localObjectReader2 = _new(this, paramDeserializationConfig);
    ObjectReader localObjectReader1 = localObjectReader2;
    if (_dataFormatReaders != null) {
      localObjectReader1 = localObjectReader2.withFormatDetection(_dataFormatReaders.with(paramDeserializationConfig));
    }
    return localObjectReader1;
  }
  
  public JsonNode createArrayNode()
  {
    return _config.getNodeFactory().arrayNode();
  }
  
  protected DefaultDeserializationContext createDeserializationContext(JsonParser paramJsonParser, DeserializationConfig paramDeserializationConfig)
  {
    return _context.createInstance(paramDeserializationConfig, paramJsonParser, _injectableValues);
  }
  
  public JsonNode createObjectNode()
  {
    return _config.getNodeFactory().objectNode();
  }
  
  public ObjectReader forType(TypeReference<?> paramTypeReference)
  {
    return forType(_config.getTypeFactory().constructType(paramTypeReference.getType()));
  }
  
  public ObjectReader forType(JavaType paramJavaType)
  {
    if ((paramJavaType != null) && (paramJavaType.equals(_valueType))) {
      return this;
    }
    JsonDeserializer localJsonDeserializer = _prefetchRootDeserializer(_config, paramJavaType);
    DataFormatReaders localDataFormatReaders2 = _dataFormatReaders;
    DataFormatReaders localDataFormatReaders1 = localDataFormatReaders2;
    if (localDataFormatReaders2 != null) {
      localDataFormatReaders1 = localDataFormatReaders2.withType(paramJavaType);
    }
    return _new(this, _config, paramJavaType, localJsonDeserializer, _valueToUpdate, _schema, _injectableValues, localDataFormatReaders1);
  }
  
  public ObjectReader forType(Class<?> paramClass)
  {
    return forType(_config.constructType(paramClass));
  }
  
  public ContextAttributes getAttributes()
  {
    return _config.getAttributes();
  }
  
  public DeserializationConfig getConfig()
  {
    return _config;
  }
  
  public JsonFactory getFactory()
  {
    return _parserFactory;
  }
  
  @Deprecated
  public JsonFactory getJsonFactory()
  {
    return _parserFactory;
  }
  
  public TypeFactory getTypeFactory()
  {
    return _config.getTypeFactory();
  }
  
  public boolean isEnabled(JsonParser.Feature paramFeature)
  {
    return _parserFactory.isEnabled(paramFeature);
  }
  
  public boolean isEnabled(DeserializationFeature paramDeserializationFeature)
  {
    return _config.isEnabled(paramDeserializationFeature);
  }
  
  public boolean isEnabled(MapperFeature paramMapperFeature)
  {
    return _config.isEnabled(paramMapperFeature);
  }
  
  public <T extends TreeNode> T readTree(JsonParser paramJsonParser)
  {
    return _bindAsTree(paramJsonParser);
  }
  
  public JsonNode readTree(InputStream paramInputStream)
  {
    if (_dataFormatReaders != null) {
      return _detectBindAndCloseAsTree(paramInputStream);
    }
    return _bindAndCloseAsTree(_parserFactory.createParser(paramInputStream));
  }
  
  public JsonNode readTree(Reader paramReader)
  {
    if (_dataFormatReaders != null) {
      _reportUndetectableSource(paramReader);
    }
    return _bindAndCloseAsTree(_parserFactory.createParser(paramReader));
  }
  
  public JsonNode readTree(String paramString)
  {
    if (_dataFormatReaders != null) {
      _reportUndetectableSource(paramString);
    }
    return _bindAndCloseAsTree(_parserFactory.createParser(paramString));
  }
  
  public <T> T readValue(JsonParser paramJsonParser)
  {
    return (T)_bind(paramJsonParser, _valueToUpdate);
  }
  
  public <T> T readValue(JsonParser paramJsonParser, ResolvedType paramResolvedType)
  {
    return (T)withType((JavaType)paramResolvedType).readValue(paramJsonParser);
  }
  
  public <T> T readValue(JsonParser paramJsonParser, TypeReference<?> paramTypeReference)
  {
    return (T)withType(paramTypeReference).readValue(paramJsonParser);
  }
  
  public <T> T readValue(JsonParser paramJsonParser, JavaType paramJavaType)
  {
    return (T)withType(paramJavaType).readValue(paramJsonParser);
  }
  
  public <T> T readValue(JsonParser paramJsonParser, Class<T> paramClass)
  {
    return (T)withType(paramClass).readValue(paramJsonParser);
  }
  
  public <T> T readValue(JsonNode paramJsonNode)
  {
    if (_dataFormatReaders != null) {
      _reportUndetectableSource(paramJsonNode);
    }
    return (T)_bindAndClose(treeAsTokens(paramJsonNode), _valueToUpdate);
  }
  
  public <T> T readValue(File paramFile)
  {
    if (_dataFormatReaders != null) {
      return (T)_detectBindAndClose(_dataFormatReaders.findFormat(_inputStream(paramFile)), true);
    }
    return (T)_bindAndClose(_parserFactory.createParser(paramFile), _valueToUpdate);
  }
  
  public <T> T readValue(InputStream paramInputStream)
  {
    if (_dataFormatReaders != null) {
      return (T)_detectBindAndClose(_dataFormatReaders.findFormat(paramInputStream), false);
    }
    return (T)_bindAndClose(_parserFactory.createParser(paramInputStream), _valueToUpdate);
  }
  
  public <T> T readValue(Reader paramReader)
  {
    if (_dataFormatReaders != null) {
      _reportUndetectableSource(paramReader);
    }
    return (T)_bindAndClose(_parserFactory.createParser(paramReader), _valueToUpdate);
  }
  
  public <T> T readValue(String paramString)
  {
    if (_dataFormatReaders != null) {
      _reportUndetectableSource(paramString);
    }
    return (T)_bindAndClose(_parserFactory.createParser(paramString), _valueToUpdate);
  }
  
  public <T> T readValue(URL paramURL)
  {
    if (_dataFormatReaders != null) {
      return (T)_detectBindAndClose(_dataFormatReaders.findFormat(_inputStream(paramURL)), true);
    }
    return (T)_bindAndClose(_parserFactory.createParser(paramURL), _valueToUpdate);
  }
  
  public <T> T readValue(byte[] paramArrayOfByte)
  {
    if (_dataFormatReaders != null) {
      return (T)_detectBindAndClose(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    return (T)_bindAndClose(_parserFactory.createParser(paramArrayOfByte), _valueToUpdate);
  }
  
  public <T> T readValue(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (_dataFormatReaders != null) {
      return (T)_detectBindAndClose(paramArrayOfByte, paramInt1, paramInt2);
    }
    return (T)_bindAndClose(_parserFactory.createParser(paramArrayOfByte, paramInt1, paramInt2), _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(JsonParser paramJsonParser)
  {
    DefaultDeserializationContext localDefaultDeserializationContext = createDeserializationContext(paramJsonParser, _config);
    return _newIterator(_valueType, paramJsonParser, localDefaultDeserializationContext, _findRootDeserializer(localDefaultDeserializationContext, _valueType), false, _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(File paramFile)
  {
    if (_dataFormatReaders != null) {
      return _detectBindAndReadValues(_dataFormatReaders.findFormat(_inputStream(paramFile)), false);
    }
    return _bindAndReadValues(_parserFactory.createParser(paramFile), _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(InputStream paramInputStream)
  {
    if (_dataFormatReaders != null) {
      return _detectBindAndReadValues(_dataFormatReaders.findFormat(paramInputStream), false);
    }
    return _bindAndReadValues(_parserFactory.createParser(paramInputStream), _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(Reader paramReader)
  {
    if (_dataFormatReaders != null) {
      _reportUndetectableSource(paramReader);
    }
    paramReader = _parserFactory.createParser(paramReader);
    _initForMultiRead(paramReader);
    paramReader.nextToken();
    DefaultDeserializationContext localDefaultDeserializationContext = createDeserializationContext(paramReader, _config);
    return _newIterator(_valueType, paramReader, localDefaultDeserializationContext, _findRootDeserializer(localDefaultDeserializationContext, _valueType), true, _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(String paramString)
  {
    if (_dataFormatReaders != null) {
      _reportUndetectableSource(paramString);
    }
    paramString = _parserFactory.createParser(paramString);
    _initForMultiRead(paramString);
    paramString.nextToken();
    DefaultDeserializationContext localDefaultDeserializationContext = createDeserializationContext(paramString, _config);
    return _newIterator(_valueType, paramString, localDefaultDeserializationContext, _findRootDeserializer(localDefaultDeserializationContext, _valueType), true, _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(URL paramURL)
  {
    if (_dataFormatReaders != null) {
      return _detectBindAndReadValues(_dataFormatReaders.findFormat(_inputStream(paramURL)), true);
    }
    return _bindAndReadValues(_parserFactory.createParser(paramURL), _valueToUpdate);
  }
  
  public final <T> MappingIterator<T> readValues(byte[] paramArrayOfByte)
  {
    return readValues(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public <T> MappingIterator<T> readValues(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (_dataFormatReaders != null) {
      return _detectBindAndReadValues(_dataFormatReaders.findFormat(paramArrayOfByte, paramInt1, paramInt2), false);
    }
    return _bindAndReadValues(_parserFactory.createParser(paramArrayOfByte), _valueToUpdate);
  }
  
  public <T> Iterator<T> readValues(JsonParser paramJsonParser, ResolvedType paramResolvedType)
  {
    return readValues(paramJsonParser, (JavaType)paramResolvedType);
  }
  
  public <T> Iterator<T> readValues(JsonParser paramJsonParser, TypeReference<?> paramTypeReference)
  {
    return withType(paramTypeReference).readValues(paramJsonParser);
  }
  
  public <T> Iterator<T> readValues(JsonParser paramJsonParser, JavaType paramJavaType)
  {
    return withType(paramJavaType).readValues(paramJsonParser);
  }
  
  public <T> Iterator<T> readValues(JsonParser paramJsonParser, Class<T> paramClass)
  {
    return withType(paramClass).readValues(paramJsonParser);
  }
  
  public JsonParser treeAsTokens(TreeNode paramTreeNode)
  {
    return new TreeTraversingParser((JsonNode)paramTreeNode, this);
  }
  
  public <T> T treeToValue(TreeNode paramTreeNode, Class<T> paramClass)
  {
    try
    {
      paramTreeNode = readValue(treeAsTokens(paramTreeNode), paramClass);
      return paramTreeNode;
    }
    catch (JsonProcessingException paramTreeNode)
    {
      throw paramTreeNode;
    }
    catch (IOException paramTreeNode)
    {
      throw new IllegalArgumentException(paramTreeNode.getMessage(), paramTreeNode);
    }
  }
  
  public Version version()
  {
    return PackageVersion.VERSION;
  }
  
  public ObjectReader with(Base64Variant paramBase64Variant)
  {
    return _with(_config.with(paramBase64Variant));
  }
  
  public ObjectReader with(FormatSchema paramFormatSchema)
  {
    if (_schema == paramFormatSchema) {
      return this;
    }
    _verifySchemaType(paramFormatSchema);
    return _new(this, _config, _valueType, _rootDeserializer, _valueToUpdate, paramFormatSchema, _injectableValues, _dataFormatReaders);
  }
  
  public ObjectReader with(JsonFactory paramJsonFactory)
  {
    Object localObject;
    if (paramJsonFactory == _parserFactory) {
      localObject = this;
    }
    ObjectReader localObjectReader;
    do
    {
      return (ObjectReader)localObject;
      localObjectReader = _new(this, paramJsonFactory);
      localObject = localObjectReader;
    } while (paramJsonFactory.getCodec() != null);
    paramJsonFactory.setCodec(localObjectReader);
    return localObjectReader;
  }
  
  public ObjectReader with(JsonParser.Feature paramFeature)
  {
    return _with(_config.with(paramFeature));
  }
  
  public ObjectReader with(DeserializationConfig paramDeserializationConfig)
  {
    return _with(paramDeserializationConfig);
  }
  
  public ObjectReader with(DeserializationFeature paramDeserializationFeature)
  {
    return _with(_config.with(paramDeserializationFeature));
  }
  
  public ObjectReader with(DeserializationFeature paramDeserializationFeature, DeserializationFeature... paramVarArgs)
  {
    return _with(_config.with(paramDeserializationFeature, paramVarArgs));
  }
  
  public ObjectReader with(InjectableValues paramInjectableValues)
  {
    if (_injectableValues == paramInjectableValues) {
      return this;
    }
    return _new(this, _config, _valueType, _rootDeserializer, _valueToUpdate, _schema, paramInjectableValues, _dataFormatReaders);
  }
  
  public ObjectReader with(ContextAttributes paramContextAttributes)
  {
    return _with(_config.with(paramContextAttributes));
  }
  
  public ObjectReader with(JsonNodeFactory paramJsonNodeFactory)
  {
    return _with(_config.with(paramJsonNodeFactory));
  }
  
  public ObjectReader with(Locale paramLocale)
  {
    return _with(_config.with(paramLocale));
  }
  
  public ObjectReader with(TimeZone paramTimeZone)
  {
    return _with(_config.with(paramTimeZone));
  }
  
  public ObjectReader withAttribute(Object paramObject1, Object paramObject2)
  {
    return _with((DeserializationConfig)_config.withAttribute(paramObject1, paramObject2));
  }
  
  public ObjectReader withAttributes(Map<Object, Object> paramMap)
  {
    return _with((DeserializationConfig)_config.withAttributes(paramMap));
  }
  
  public ObjectReader withFeatures(JsonParser.Feature... paramVarArgs)
  {
    return _with(_config.withFeatures(paramVarArgs));
  }
  
  public ObjectReader withFeatures(DeserializationFeature... paramVarArgs)
  {
    return _with(_config.withFeatures(paramVarArgs));
  }
  
  public ObjectReader withFormatDetection(DataFormatReaders paramDataFormatReaders)
  {
    return _new(this, _config, _valueType, _rootDeserializer, _valueToUpdate, _schema, _injectableValues, paramDataFormatReaders);
  }
  
  public ObjectReader withFormatDetection(ObjectReader... paramVarArgs)
  {
    return withFormatDetection(new DataFormatReaders(paramVarArgs));
  }
  
  public ObjectReader withHandler(DeserializationProblemHandler paramDeserializationProblemHandler)
  {
    return _with(_config.withHandler(paramDeserializationProblemHandler));
  }
  
  public ObjectReader withRootName(String paramString)
  {
    return _with(_config.withRootName(paramString));
  }
  
  @Deprecated
  public ObjectReader withType(TypeReference<?> paramTypeReference)
  {
    return forType(_config.getTypeFactory().constructType(paramTypeReference.getType()));
  }
  
  @Deprecated
  public ObjectReader withType(JavaType paramJavaType)
  {
    return forType(paramJavaType);
  }
  
  @Deprecated
  public ObjectReader withType(Class<?> paramClass)
  {
    return forType(_config.constructType(paramClass));
  }
  
  @Deprecated
  public ObjectReader withType(Type paramType)
  {
    return forType(_config.getTypeFactory().constructType(paramType));
  }
  
  public ObjectReader withValueToUpdate(Object paramObject)
  {
    if (paramObject == _valueToUpdate) {
      return this;
    }
    if (paramObject == null) {
      throw new IllegalArgumentException("cat not update null value");
    }
    if (_valueType == null) {}
    for (JavaType localJavaType = _config.constructType(paramObject.getClass());; localJavaType = _valueType) {
      return _new(this, _config, localJavaType, _rootDeserializer, paramObject, _schema, _injectableValues, _dataFormatReaders);
    }
  }
  
  public ObjectReader withView(Class<?> paramClass)
  {
    return _with(_config.withView(paramClass));
  }
  
  public ObjectReader without(JsonParser.Feature paramFeature)
  {
    return _with(_config.without(paramFeature));
  }
  
  public ObjectReader without(DeserializationFeature paramDeserializationFeature)
  {
    return _with(_config.without(paramDeserializationFeature));
  }
  
  public ObjectReader without(DeserializationFeature paramDeserializationFeature, DeserializationFeature... paramVarArgs)
  {
    return _with(_config.without(paramDeserializationFeature, paramVarArgs));
  }
  
  public ObjectReader withoutAttribute(Object paramObject)
  {
    return _with((DeserializationConfig)_config.withoutAttribute(paramObject));
  }
  
  public ObjectReader withoutFeatures(JsonParser.Feature... paramVarArgs)
  {
    return _with(_config.withoutFeatures(paramVarArgs));
  }
  
  public ObjectReader withoutFeatures(DeserializationFeature... paramVarArgs)
  {
    return _with(_config.withoutFeatures(paramVarArgs));
  }
  
  public void writeTree(JsonGenerator paramJsonGenerator, TreeNode paramTreeNode)
  {
    throw new UnsupportedOperationException();
  }
  
  public void writeValue(JsonGenerator paramJsonGenerator, Object paramObject)
  {
    throw new UnsupportedOperationException("Not implemented for ObjectReader");
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ObjectReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */