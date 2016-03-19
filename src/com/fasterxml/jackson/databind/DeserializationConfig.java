package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.LinkedNode;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Collection;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class DeserializationConfig
  extends MapperConfigBase<DeserializationFeature, DeserializationConfig>
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected final int _deserFeatures;
  protected final JsonNodeFactory _nodeFactory;
  protected final int _parserFeatures;
  protected final int _parserFeaturesToChange;
  protected final LinkedNode<DeserializationProblemHandler> _problemHandlers;
  
  private DeserializationConfig(DeserializationConfig paramDeserializationConfig, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramDeserializationConfig, paramInt1);
    _deserFeatures = paramInt2;
    _nodeFactory = _nodeFactory;
    _problemHandlers = _problemHandlers;
    _parserFeatures = paramInt3;
    _parserFeaturesToChange = paramInt4;
  }
  
  private DeserializationConfig(DeserializationConfig paramDeserializationConfig, BaseSettings paramBaseSettings)
  {
    super(paramDeserializationConfig, paramBaseSettings);
    _deserFeatures = _deserFeatures;
    _nodeFactory = _nodeFactory;
    _problemHandlers = _problemHandlers;
    _parserFeatures = _parserFeatures;
    _parserFeaturesToChange = _parserFeaturesToChange;
  }
  
  protected DeserializationConfig(DeserializationConfig paramDeserializationConfig, ContextAttributes paramContextAttributes)
  {
    super(paramDeserializationConfig, paramContextAttributes);
    _deserFeatures = _deserFeatures;
    _problemHandlers = _problemHandlers;
    _nodeFactory = _nodeFactory;
    _parserFeatures = _parserFeatures;
    _parserFeaturesToChange = _parserFeaturesToChange;
  }
  
  private DeserializationConfig(DeserializationConfig paramDeserializationConfig, SubtypeResolver paramSubtypeResolver)
  {
    super(paramDeserializationConfig, paramSubtypeResolver);
    _deserFeatures = _deserFeatures;
    _nodeFactory = _nodeFactory;
    _problemHandlers = _problemHandlers;
    _parserFeatures = _parserFeatures;
    _parserFeaturesToChange = _parserFeaturesToChange;
  }
  
  private DeserializationConfig(DeserializationConfig paramDeserializationConfig, JsonNodeFactory paramJsonNodeFactory)
  {
    super(paramDeserializationConfig);
    _deserFeatures = _deserFeatures;
    _problemHandlers = _problemHandlers;
    _nodeFactory = paramJsonNodeFactory;
    _parserFeatures = _parserFeatures;
    _parserFeaturesToChange = _parserFeaturesToChange;
  }
  
  private DeserializationConfig(DeserializationConfig paramDeserializationConfig, LinkedNode<DeserializationProblemHandler> paramLinkedNode)
  {
    super(paramDeserializationConfig);
    _deserFeatures = _deserFeatures;
    _problemHandlers = paramLinkedNode;
    _nodeFactory = _nodeFactory;
    _parserFeatures = _parserFeatures;
    _parserFeaturesToChange = _parserFeaturesToChange;
  }
  
  private DeserializationConfig(DeserializationConfig paramDeserializationConfig, Class<?> paramClass)
  {
    super(paramDeserializationConfig, paramClass);
    _deserFeatures = _deserFeatures;
    _problemHandlers = _problemHandlers;
    _nodeFactory = _nodeFactory;
    _parserFeatures = _parserFeatures;
    _parserFeaturesToChange = _parserFeaturesToChange;
  }
  
  private DeserializationConfig(DeserializationConfig paramDeserializationConfig, String paramString)
  {
    super(paramDeserializationConfig, paramString);
    _deserFeatures = _deserFeatures;
    _problemHandlers = _problemHandlers;
    _nodeFactory = _nodeFactory;
    _parserFeatures = _parserFeatures;
    _parserFeaturesToChange = _parserFeaturesToChange;
  }
  
  protected DeserializationConfig(DeserializationConfig paramDeserializationConfig, Map<ClassKey, Class<?>> paramMap)
  {
    super(paramDeserializationConfig, paramMap);
    _deserFeatures = _deserFeatures;
    _problemHandlers = _problemHandlers;
    _nodeFactory = _nodeFactory;
    _parserFeatures = _parserFeatures;
    _parserFeaturesToChange = _parserFeaturesToChange;
  }
  
  public DeserializationConfig(BaseSettings paramBaseSettings, SubtypeResolver paramSubtypeResolver, Map<ClassKey, Class<?>> paramMap)
  {
    super(paramBaseSettings, paramSubtypeResolver, paramMap);
    _deserFeatures = collectFeatureDefaults(DeserializationFeature.class);
    _nodeFactory = JsonNodeFactory.instance;
    _problemHandlers = null;
    _parserFeatures = 0;
    _parserFeaturesToChange = 0;
  }
  
  private final DeserializationConfig _withBase(BaseSettings paramBaseSettings)
  {
    if (_base == paramBaseSettings) {
      return this;
    }
    return new DeserializationConfig(this, paramBaseSettings);
  }
  
  public final TypeDeserializer findTypeDeserializer(JavaType paramJavaType)
  {
    Collection localCollection = null;
    Object localObject2 = introspectClassAnnotations(paramJavaType.getRawClass()).getClassInfo();
    Object localObject1 = getAnnotationIntrospector().findTypeResolver(this, (AnnotatedClass)localObject2, paramJavaType);
    if (localObject1 == null)
    {
      localObject2 = getDefaultTyper(paramJavaType);
      localObject1 = localObject2;
      if (localObject2 == null) {
        return null;
      }
    }
    else
    {
      localCollection = getSubtypeResolver().collectAndResolveSubtypes((AnnotatedClass)localObject2, this, getAnnotationIntrospector());
    }
    return ((TypeResolverBuilder)localObject1).buildTypeDeserializer(this, paramJavaType, localCollection);
  }
  
  public final AnnotationIntrospector getAnnotationIntrospector()
  {
    if (isEnabled(MapperFeature.USE_ANNOTATIONS)) {
      return super.getAnnotationIntrospector();
    }
    return NopAnnotationIntrospector.instance;
  }
  
  protected final BaseSettings getBaseSettings()
  {
    return _base;
  }
  
  public final VisibilityChecker<?> getDefaultVisibilityChecker()
  {
    Object localObject2 = super.getDefaultVisibilityChecker();
    Object localObject1 = localObject2;
    if (!isEnabled(MapperFeature.AUTO_DETECT_SETTERS)) {
      localObject1 = ((VisibilityChecker)localObject2).withSetterVisibility(JsonAutoDetect.Visibility.NONE);
    }
    localObject2 = localObject1;
    if (!isEnabled(MapperFeature.AUTO_DETECT_CREATORS)) {
      localObject2 = ((VisibilityChecker)localObject1).withCreatorVisibility(JsonAutoDetect.Visibility.NONE);
    }
    localObject1 = localObject2;
    if (!isEnabled(MapperFeature.AUTO_DETECT_FIELDS)) {
      localObject1 = ((VisibilityChecker)localObject2).withFieldVisibility(JsonAutoDetect.Visibility.NONE);
    }
    return (VisibilityChecker<?>)localObject1;
  }
  
  public final int getDeserializationFeatures()
  {
    return _deserFeatures;
  }
  
  public final JsonNodeFactory getNodeFactory()
  {
    return _nodeFactory;
  }
  
  public final LinkedNode<DeserializationProblemHandler> getProblemHandlers()
  {
    return _problemHandlers;
  }
  
  public final boolean hasDeserializationFeatures(int paramInt)
  {
    return (_deserFeatures & paramInt) == paramInt;
  }
  
  public final void initialize(JsonParser paramJsonParser)
  {
    if (_parserFeaturesToChange != 0)
    {
      int i = paramJsonParser.getFeatureMask();
      int j = (_parserFeaturesToChange ^ 0xFFFFFFFF) & i | _parserFeatures;
      if (i != j) {
        paramJsonParser.setFeatureMask(j);
      }
    }
  }
  
  public final <T extends BeanDescription> T introspect(JavaType paramJavaType)
  {
    return getClassIntrospector().forDeserialization(this, paramJavaType, this);
  }
  
  public final BeanDescription introspectClassAnnotations(JavaType paramJavaType)
  {
    return getClassIntrospector().forClassAnnotations(this, paramJavaType, this);
  }
  
  public final BeanDescription introspectDirectClassAnnotations(JavaType paramJavaType)
  {
    return getClassIntrospector().forDirectClassAnnotations(this, paramJavaType, this);
  }
  
  public final <T extends BeanDescription> T introspectForBuilder(JavaType paramJavaType)
  {
    return getClassIntrospector().forDeserializationWithBuilder(this, paramJavaType, this);
  }
  
  public final <T extends BeanDescription> T introspectForCreation(JavaType paramJavaType)
  {
    return getClassIntrospector().forCreation(this, paramJavaType, this);
  }
  
  public final boolean isEnabled(JsonParser.Feature paramFeature, JsonFactory paramJsonFactory)
  {
    if ((paramFeature.getMask() & _parserFeaturesToChange) != 0) {
      return (_parserFeatures & paramFeature.getMask()) != 0;
    }
    return paramJsonFactory.isEnabled(paramFeature);
  }
  
  public final boolean isEnabled(DeserializationFeature paramDeserializationFeature)
  {
    return (_deserFeatures & paramDeserializationFeature.getMask()) != 0;
  }
  
  public final boolean useRootWrapping()
  {
    if (_rootName != null) {
      return _rootName.length() > 0;
    }
    return isEnabled(DeserializationFeature.UNWRAP_ROOT_VALUE);
  }
  
  public final DeserializationConfig with(Base64Variant paramBase64Variant)
  {
    return _withBase(_base.with(paramBase64Variant));
  }
  
  public final DeserializationConfig with(JsonParser.Feature paramFeature)
  {
    int i = _parserFeatures | paramFeature.getMask();
    int j = _parserFeaturesToChange | paramFeature.getMask();
    if ((_parserFeatures == i) && (_parserFeaturesToChange == j)) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, _deserFeatures, i, j);
  }
  
  public final DeserializationConfig with(AnnotationIntrospector paramAnnotationIntrospector)
  {
    return _withBase(_base.withAnnotationIntrospector(paramAnnotationIntrospector));
  }
  
  public final DeserializationConfig with(DeserializationFeature paramDeserializationFeature)
  {
    int i = _deserFeatures | paramDeserializationFeature.getMask();
    if (i == _deserFeatures) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, i, _parserFeatures, _parserFeaturesToChange);
  }
  
  public final DeserializationConfig with(DeserializationFeature paramDeserializationFeature, DeserializationFeature... paramVarArgs)
  {
    int j = _deserFeatures | paramDeserializationFeature.getMask();
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j |= paramVarArgs[i].getMask();
      i += 1;
    }
    if (j == _deserFeatures) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, j, _parserFeatures, _parserFeaturesToChange);
  }
  
  public final DeserializationConfig with(MapperFeature paramMapperFeature, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = _mapperFeatures | paramMapperFeature.getMask(); i == _mapperFeatures; i = _mapperFeatures & (paramMapperFeature.getMask() ^ 0xFFFFFFFF)) {
      return this;
    }
    return new DeserializationConfig(this, i, _deserFeatures, _parserFeatures, _parserFeaturesToChange);
  }
  
  public final DeserializationConfig with(PropertyNamingStrategy paramPropertyNamingStrategy)
  {
    return _withBase(_base.withPropertyNamingStrategy(paramPropertyNamingStrategy));
  }
  
  public final DeserializationConfig with(ContextAttributes paramContextAttributes)
  {
    if (paramContextAttributes == _attributes) {
      return this;
    }
    return new DeserializationConfig(this, paramContextAttributes);
  }
  
  public final DeserializationConfig with(HandlerInstantiator paramHandlerInstantiator)
  {
    return _withBase(_base.withHandlerInstantiator(paramHandlerInstantiator));
  }
  
  public final DeserializationConfig with(ClassIntrospector paramClassIntrospector)
  {
    return _withBase(_base.withClassIntrospector(paramClassIntrospector));
  }
  
  public final DeserializationConfig with(VisibilityChecker<?> paramVisibilityChecker)
  {
    return _withBase(_base.withVisibilityChecker(paramVisibilityChecker));
  }
  
  public final DeserializationConfig with(SubtypeResolver paramSubtypeResolver)
  {
    if (_subtypeResolver == paramSubtypeResolver) {
      return this;
    }
    return new DeserializationConfig(this, paramSubtypeResolver);
  }
  
  public final DeserializationConfig with(TypeResolverBuilder<?> paramTypeResolverBuilder)
  {
    return _withBase(_base.withTypeResolverBuilder(paramTypeResolverBuilder));
  }
  
  public final DeserializationConfig with(JsonNodeFactory paramJsonNodeFactory)
  {
    if (_nodeFactory == paramJsonNodeFactory) {
      return this;
    }
    return new DeserializationConfig(this, paramJsonNodeFactory);
  }
  
  public final DeserializationConfig with(TypeFactory paramTypeFactory)
  {
    return _withBase(_base.withTypeFactory(paramTypeFactory));
  }
  
  public final DeserializationConfig with(DateFormat paramDateFormat)
  {
    return _withBase(_base.withDateFormat(paramDateFormat));
  }
  
  public final DeserializationConfig with(Locale paramLocale)
  {
    return _withBase(_base.with(paramLocale));
  }
  
  public final DeserializationConfig with(TimeZone paramTimeZone)
  {
    return _withBase(_base.with(paramTimeZone));
  }
  
  public final DeserializationConfig with(MapperFeature... paramVarArgs)
  {
    int j = _mapperFeatures;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j |= paramVarArgs[i].getMask();
      i += 1;
    }
    if (j == _mapperFeatures) {
      return this;
    }
    return new DeserializationConfig(this, j, _deserFeatures, _parserFeatures, _parserFeaturesToChange);
  }
  
  public final DeserializationConfig withAppendedAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    return _withBase(_base.withAppendedAnnotationIntrospector(paramAnnotationIntrospector));
  }
  
  public final DeserializationConfig withFeatures(JsonParser.Feature... paramVarArgs)
  {
    int k = _parserFeatures;
    int i = _parserFeaturesToChange;
    int m = paramVarArgs.length;
    int j = 0;
    while (j < m)
    {
      int n = paramVarArgs[j].getMask();
      k |= n;
      i |= n;
      j += 1;
    }
    if ((_parserFeatures == k) && (_parserFeaturesToChange == i)) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, _deserFeatures, k, i);
  }
  
  public final DeserializationConfig withFeatures(DeserializationFeature... paramVarArgs)
  {
    int j = _deserFeatures;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j |= paramVarArgs[i].getMask();
      i += 1;
    }
    if (j == _deserFeatures) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, j, _parserFeatures, _parserFeaturesToChange);
  }
  
  public final DeserializationConfig withHandler(DeserializationProblemHandler paramDeserializationProblemHandler)
  {
    if (LinkedNode.contains(_problemHandlers, paramDeserializationProblemHandler)) {
      return this;
    }
    return new DeserializationConfig(this, new LinkedNode(paramDeserializationProblemHandler, _problemHandlers));
  }
  
  public final DeserializationConfig withInsertedAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    return _withBase(_base.withInsertedAnnotationIntrospector(paramAnnotationIntrospector));
  }
  
  public final DeserializationConfig withNoProblemHandlers()
  {
    if (_problemHandlers == null) {
      return this;
    }
    return new DeserializationConfig(this, null);
  }
  
  public final DeserializationConfig withRootName(String paramString)
  {
    if (paramString == null)
    {
      if (_rootName != null) {}
    }
    else {
      while (paramString.equals(_rootName)) {
        return this;
      }
    }
    return new DeserializationConfig(this, paramString);
  }
  
  public final DeserializationConfig withView(Class<?> paramClass)
  {
    if (_view == paramClass) {
      return this;
    }
    return new DeserializationConfig(this, paramClass);
  }
  
  public final DeserializationConfig withVisibility(PropertyAccessor paramPropertyAccessor, JsonAutoDetect.Visibility paramVisibility)
  {
    return _withBase(_base.withVisibility(paramPropertyAccessor, paramVisibility));
  }
  
  public final DeserializationConfig without(JsonParser.Feature paramFeature)
  {
    int i = _parserFeatures & (paramFeature.getMask() ^ 0xFFFFFFFF);
    int j = _parserFeaturesToChange | paramFeature.getMask();
    if ((_parserFeatures == i) && (_parserFeaturesToChange == j)) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, _deserFeatures, i, j);
  }
  
  public final DeserializationConfig without(DeserializationFeature paramDeserializationFeature)
  {
    int i = _deserFeatures & (paramDeserializationFeature.getMask() ^ 0xFFFFFFFF);
    if (i == _deserFeatures) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, i, _parserFeatures, _parserFeaturesToChange);
  }
  
  public final DeserializationConfig without(DeserializationFeature paramDeserializationFeature, DeserializationFeature... paramVarArgs)
  {
    int j = _deserFeatures & (paramDeserializationFeature.getMask() ^ 0xFFFFFFFF);
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j &= (paramVarArgs[i].getMask() ^ 0xFFFFFFFF);
      i += 1;
    }
    if (j == _deserFeatures) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, j, _parserFeatures, _parserFeaturesToChange);
  }
  
  public final DeserializationConfig without(MapperFeature... paramVarArgs)
  {
    int j = _mapperFeatures;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j &= (paramVarArgs[i].getMask() ^ 0xFFFFFFFF);
      i += 1;
    }
    if (j == _mapperFeatures) {
      return this;
    }
    return new DeserializationConfig(this, j, _deserFeatures, _parserFeatures, _parserFeaturesToChange);
  }
  
  public final DeserializationConfig withoutFeatures(JsonParser.Feature... paramVarArgs)
  {
    int k = _parserFeatures;
    int i = _parserFeaturesToChange;
    int m = paramVarArgs.length;
    int j = 0;
    while (j < m)
    {
      int n = paramVarArgs[j].getMask();
      k &= (n ^ 0xFFFFFFFF);
      i |= n;
      j += 1;
    }
    if ((_parserFeatures == k) && (_parserFeaturesToChange == i)) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, _deserFeatures, k, i);
  }
  
  public final DeserializationConfig withoutFeatures(DeserializationFeature... paramVarArgs)
  {
    int j = _deserFeatures;
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      j &= (paramVarArgs[i].getMask() ^ 0xFFFFFFFF);
      i += 1;
    }
    if (j == _deserFeatures) {
      return this;
    }
    return new DeserializationConfig(this, _mapperFeatures, j, _parserFeatures, _parserFeaturesToChange);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.DeserializationConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */