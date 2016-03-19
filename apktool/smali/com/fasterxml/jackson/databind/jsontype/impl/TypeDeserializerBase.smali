.class public abstract Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;
.super Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _baseType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

.field protected _defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _deserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected final _typeIdVisible:Z

.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 72
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    .line 73
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typePropertyName:Ljava/lang/String;

    .line 74
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typeIdVisible:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    .line 76
    if-nez p5, :cond_0

    .line 77
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    .line 86
    :goto_0
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 87
    return-void

    .line 83
    :cond_0
    invoke-virtual {p1, p5}, Lcom/fasterxml/jackson/databind/JavaType;->forcedNarrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;-><init>()V

    .line 91
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 92
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    .line 93
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typePropertyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typePropertyName:Ljava/lang/String;

    .line 94
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typeIdVisible:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typeIdVisible:Z

    .line 95
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    .line 96
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    .line 97
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 99
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 100
    return-void
.end method


# virtual methods
.method protected _deserializeWithNativeTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTypeId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializeWithNativeTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected _deserializeWithNativeTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    if-nez p3, :cond_0

    .line 236
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_findDefaultImplDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 237
    if-nez v0, :cond_1

    .line 238
    const-string v0, "No (native) type id found when one was expected for polymorphic type handling"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 241
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p3, Ljava/lang/String;

    .line 242
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 244
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 241
    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method protected final _findDefaultImplDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_1

    .line 191
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;

    .line 206
    :goto_0
    return-object v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    monitor-exit v1

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final _findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 151
    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->typeFromId(Lcom/fasterxml/jackson/databind/DatabindContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 158
    if-nez v0, :cond_2

    .line 160
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_findDefaultImplDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 161
    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_handleUnknownTypeId(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 178
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    monitor-exit v1

    .line 181
    return-object v0

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 174
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected _handleUnknownTypeId(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    instance-of v0, p3, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;

    if-eqz v0, :cond_1

    .line 266
    check-cast p3, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->getDescForKnownTypeIds()Ljava/lang/String;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 268
    const-string v0, "known type ids are not statically known"

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->unknownTypeException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 270
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "known type ids = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public baseTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.end method

.method public getDefaultImpl()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeIdResolver()Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    return-object v0
.end method

.method public abstract getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "; base-type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "; id-resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
