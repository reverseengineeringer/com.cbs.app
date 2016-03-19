.class public Lcom/flurry/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/j$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/sdk/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/j;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/flurry/sdk/j;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/k;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v3, 0x0

    .line 95
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 98
    const/4 v2, 0x5

    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 99
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->b()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 101
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->c()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 102
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->d()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 105
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->e()Ljava/util/Map;

    move-result-object v2

    .line 106
    if-nez v2, :cond_3

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->h()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 120
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->i()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 121
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->k()Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_4

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 132
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->l()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 133
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 134
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 135
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->m()B

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 136
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->n()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_5

    .line 137
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 143
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->o()Ljava/util/Map;

    move-result-object v2

    .line 144
    if-nez v2, :cond_6

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->p()Ljava/util/List;

    move-result-object v2

    .line 155
    if-nez v2, :cond_7

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 163
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->q()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 168
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->s()Ljava/util/List;

    move-result-object v9

    .line 169
    if-eqz v9, :cond_b

    move v6, v5

    move v7, v5

    move v3, v5

    .line 170
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_a

    .line 171
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/e;

    .line 1031
    invoke-virtual {v2}, Lcom/flurry/sdk/e;->a()[B

    move-result-object v2

    array-length v2, v2

    .line 171
    add-int/2addr v7, v2

    .line 172
    const v2, 0x27100

    if-le v7, v2, :cond_8

    .line 173
    const/4 v2, 0x5

    sget-object v6, Lcom/flurry/sdk/j;->b:Ljava/lang/String;

    const-string v7, "Error Log size exceeded. No more event details logged."

    invoke-static {v2, v6, v7}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 182
    :goto_3
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->r()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 183
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v3, v5

    .line 184
    :goto_4
    if-ge v3, v6, :cond_9

    .line 185
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/e;

    invoke-virtual {v2}, Lcom/flurry/sdk/e;->a()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 184
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 109
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 110
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    .line 211
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 212
    :goto_6
    const/4 v4, 0x6

    :try_start_2
    sget-object v5, Lcom/flurry/sdk/j;->b:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v4, v5, v6, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :catchall_0
    move-exception v2

    move-object v4, v3

    :goto_7
    invoke-static {v4}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    throw v2

    .line 126
    :cond_4
    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 127
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->k()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/flurry/sdk/bs;->a(D)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 128
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->k()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/flurry/sdk/bs;->a(D)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 129
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->k()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto/16 :goto_0

    .line 215
    :catchall_1
    move-exception v2

    goto :goto_7

    .line 139
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 140
    invoke-virtual {p1}, Lcom/flurry/sdk/k;->n()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_1

    .line 147
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 148
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 149
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 150
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/f;

    iget v2, v2, Lcom/flurry/sdk/f;->a:I

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_8

    .line 158
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 159
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/g;

    .line 160
    invoke-virtual {v2}, Lcom/flurry/sdk/g;->c()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_9

    .line 177
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 170
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_2

    .line 201
    :cond_9
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 202
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 208
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 210
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/sdk/j;->a:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    invoke-static {v4}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    .line 216
    return-void

    .line 215
    :catchall_2
    move-exception v2

    move-object v4, v3

    goto/16 :goto_7

    .line 211
    :catch_1
    move-exception v2

    goto/16 :goto_6

    :cond_a
    move v6, v3

    goto/16 :goto_3

    :cond_b
    move v6, v5

    goto/16 :goto_3
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/flurry/sdk/j;->a:[B

    .line 90
    return-void
.end method
