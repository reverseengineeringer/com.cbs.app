.class public final Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field static final primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

.field private static final serialVersionUID:J = 0x1L

.field static final wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 309
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    const-class v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    .line 310
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 315
    return-void
.end method


# virtual methods
.method public final deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->_parseLong(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
