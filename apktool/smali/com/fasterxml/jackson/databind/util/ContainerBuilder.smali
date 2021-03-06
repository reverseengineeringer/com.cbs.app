.class public final Lcom/fasterxml/jackson/databind/util/ContainerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_BUF:I = 0x3e8


# instance fields
.field private b:[Ljava/lang/Object;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private start:I

.field private tail:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    and-int/lit8 v0, p1, -0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private _buildList(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    const/4 v0, 0x2

    .line 186
    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    sub-int/2addr v1, v3

    .line 187
    if-eqz p1, :cond_0

    .line 188
    if-ge v1, v0, :cond_4

    .line 200
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    if-ge v0, v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_0
    if-ge v1, v2, :cond_1

    move v0, v2

    .line 193
    goto :goto_0

    .line 194
    :cond_1
    const/16 v0, 0x3e8

    if-ge v1, v0, :cond_2

    .line 195
    shr-int/lit8 v0, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    .line 197
    :cond_2
    shr-int/lit8 v0, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 204
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    .line 205
    return-object v1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private _buildMap(Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    .line 222
    if-eqz p1, :cond_2

    .line 223
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 224
    const/4 v0, 0x4

    .line 239
    :goto_0
    new-instance v2, Ljava/util/LinkedHashMap;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 240
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    if-ge v1, v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_1

    .line 225
    :cond_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 226
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    .line 228
    :cond_1
    shr-int/lit8 v1, v0, 0x2

    shr-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 231
    :cond_2
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    .line 232
    const/16 v0, 0x10

    goto :goto_0

    .line 233
    :cond_3
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_4

    .line 234
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    .line 236
    :cond_4
    div-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    goto :goto_0

    .line 243
    :cond_5
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    .line 244
    return-object v2
.end method

.method private _expandList(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    aput-object p1, v0, v1

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->_buildList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private _expandMap(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    aput-object p1, v0, v1

    .line 212
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    aput-object p2, v0, v1

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->_buildMap(Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    .line 215
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 97
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->_expandList(Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public final bufferLength()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final canReuse()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final finishArray(I)[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .line 135
    :goto_0
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 136
    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public final finishArray(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 141
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    sub-int v1, v0, v1

    .line 143
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    :goto_0
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 152
    return-object v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public final finishList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    .line 117
    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->_buildList(Z)Ljava/util/List;

    move-result-object v0

    .line 122
    :goto_0
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 123
    return-object v0

    .line 120
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public final finishMap(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    .line 159
    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->_buildMap(Z)Ljava/util/Map;

    move-result-object v0

    .line 164
    :goto_0
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 165
    return-object v0

    .line 162
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    goto :goto_0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->_expandMap(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    aput-object p1, v0, v1

    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    aput-object p2, v0, v1

    goto :goto_0
.end method

.method public final start()I
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 68
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 69
    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 70
    return v0
.end method

.method public final startList(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 77
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 78
    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 79
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->add(Ljava/lang/Object;)V

    .line 80
    return v0
.end method

.method public final startMap(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->list:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 87
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 88
    iget v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->tail:I

    iput v1, p0, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->start:I

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/ContainerBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return v0
.end method
