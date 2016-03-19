.class public Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static final _appendInt(I[BI)V
    .locals 2

    .prologue
    .line 113
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 114
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 117
    return-void
.end method

.method private static _appendInt(I[CI)V
    .locals 1

    .prologue
    .line 86
    shr-int/lit8 v0, p0, 0x10

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 87
    add-int/lit8 v0, p2, 0x4

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 88
    return-void
.end method

.method private static _appendShort(I[CI)V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 93
    add-int/lit8 v0, p2, 0x1

    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    .line 97
    return-void
.end method

.method private static final _asBytes(Ljava/util/UUID;)[B
    .locals 9

    .prologue
    const/16 v8, 0x20

    .line 101
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 102
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 103
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 104
    shr-long v6, v2, v8

    long-to-int v1, v6

    const/4 v6, 0x0

    invoke-static {v1, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 105
    long-to-int v1, v2

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 106
    shr-long v2, v4, v8

    long-to-int v1, v2

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 107
    long-to-int v1, v4

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 108
    return-object v0
.end method


# virtual methods
.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/UUID;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 34
    if-nez p2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->isEmpty(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Ljava/util/UUID;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 10

    .prologue
    const/16 v9, 0x24

    const/16 v8, 0x20

    const/4 v7, 0x0

    const/16 v6, 0x2d

    .line 50
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteBinaryNatively()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    instance-of v0, p2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-nez v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_asBytes(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V

    .line 82
    :goto_0
    return-void

    .line 65
    :cond_0
    new-array v0, v9, [C

    .line 66
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 67
    shr-long v4, v2, v8

    long-to-int v1, v4

    invoke-static {v1, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    .line 68
    const/16 v1, 0x8

    aput-char v6, v0, v1

    .line 69
    long-to-int v1, v2

    .line 70
    ushr-int/lit8 v2, v1, 0x10

    const/16 v3, 0x9

    invoke-static {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 71
    const/16 v2, 0xd

    aput-char v6, v0, v2

    .line 72
    const/16 v2, 0xe

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 73
    const/16 v1, 0x12

    aput-char v6, v0, v1

    .line 75
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 76
    const/16 v1, 0x30

    ushr-long v4, v2, v1

    long-to-int v1, v4

    const/16 v4, 0x13

    invoke-static {v1, v0, v4}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 77
    const/16 v1, 0x17

    aput-char v6, v0, v1

    .line 78
    ushr-long v4, v2, v8

    long-to-int v1, v4

    const/16 v4, 0x18

    invoke-static {v1, v0, v4}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 79
    long-to-int v1, v2

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    .line 81
    invoke-virtual {p2, v0, v7, v9}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V

    goto :goto_0
.end method
