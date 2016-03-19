.class public final Lorg/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Lorg/a/a/a/c;

.field private c:Lorg/a/a/a/d;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/a/a/a/c;

    invoke-direct {v0}, Lorg/a/a/a/c;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a;->b:Lorg/a/a/a/c;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/a;->d:I

    return-void
.end method

.method private static a(Ljava/util/LinkedList;)I
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, -0x1

    .line 42
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 112
    .line 1063
    iget-object v0, p0, Lorg/a/a/a/a;->b:Lorg/a/a/a/c;

    invoke-virtual {v0, p1}, Lorg/a/a/a/c;->a(Ljava/io/Reader;)V

    .line 2050
    iput-object v1, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    .line 2051
    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/a;->d:I

    .line 2052
    iput-object v1, p0, Lorg/a/a/a/a;->a:Ljava/util/LinkedList;

    .line 113
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 114
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 2269
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/a/a/a/a;->b:Lorg/a/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/a/c;->b()Lorg/a/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    .line 2270
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    if-nez v0, :cond_1

    .line 2271
    new-instance v0, Lorg/a/a/a/d;

    const/4 v1, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lorg/a/a/a/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    .line 119
    :cond_1
    iget v0, p0, Lorg/a/a/a/a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    :pswitch_0
    iget v0, p0, Lorg/a/a/a/a;->d:I

    if-ne v0, v5, :cond_6

    .line 257
    new-instance v0, Lorg/a/a/a/b;

    .line 7071
    iget-object v1, p0, Lorg/a/a/a/a;->b:Lorg/a/a/a/c;

    invoke-virtual {v1}, Lorg/a/a/a/c;->a()I

    move-result v1

    .line 257
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/a/b;-><init>(IILjava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :catch_0
    move-exception v0

    throw v0

    .line 121
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget v0, v0, Lorg/a/a/a/d;->a:I

    packed-switch v0, :pswitch_data_1

    .line 138
    :pswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto :goto_0

    .line 123
    :pswitch_3
    const/4 v0, 0x1

    iput v0, p0, Lorg/a/a/a/a;->d:I

    .line 124
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/a/a/a/a;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget-object v0, v0, Lorg/a/a/a/d;->b:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :pswitch_4
    const/4 v0, 0x2

    iput v0, p0, Lorg/a/a/a/a;->d:I

    .line 129
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/a/a/a/a;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2276
    new-instance v0, Lorg/a/a/c;

    invoke-direct {v0}, Lorg/a/a/c;-><init>()V

    .line 130
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :pswitch_5
    const/4 v0, 0x3

    iput v0, p0, Lorg/a/a/a/a;->d:I

    .line 134
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/a/a/a/a;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2286
    new-instance v0, Lorg/a/a/a;

    invoke-direct {v0}, Lorg/a/a/a;-><init>()V

    .line 135
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :pswitch_6
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget v0, v0, Lorg/a/a/a/d;->a:I

    if-ne v0, v5, :cond_2

    .line 144
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 146
    :cond_2
    new-instance v0, Lorg/a/a/a/b;

    .line 3071
    iget-object v1, p0, Lorg/a/a/a/a;->b:Lorg/a/a/a/c;

    invoke-virtual {v1}, Lorg/a/a/a/c;->a()I

    move-result v1

    .line 146
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/a/b;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 149
    :pswitch_7
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget v0, v0, Lorg/a/a/a/d;->a:I

    packed-switch v0, :pswitch_data_2

    .line 174
    :pswitch_8
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto/16 :goto_0

    .line 153
    :pswitch_9
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget-object v0, v0, Lorg/a/a/a/d;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget-object v0, v0, Lorg/a/a/a/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 156
    const/4 v0, 0x4

    iput v0, p0, Lorg/a/a/a/a;->d:I

    .line 157
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/a/a/a/a;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 160
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto/16 :goto_0

    .line 164
    :pswitch_a
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v6, :cond_4

    .line 165
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 166
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 167
    invoke-static {v2}, Lorg/a/a/a/a;->a(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto/16 :goto_0

    .line 170
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto/16 :goto_0

    .line 180
    :pswitch_b
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget v0, v0, Lorg/a/a/a/d;->a:I

    packed-switch v0, :pswitch_data_3

    .line 211
    :pswitch_c
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto/16 :goto_0

    .line 184
    :pswitch_d
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 185
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 187
    iget-object v4, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget-object v4, v4, Lorg/a/a/a/d;->b:Ljava/lang/Object;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {v2}, Lorg/a/a/a/a;->a(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto/16 :goto_0

    .line 191
    :pswitch_e
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 192
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3286
    new-instance v4, Lorg/a/a/a;

    invoke-direct {v4}, Lorg/a/a/a;-><init>()V

    .line 195
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lorg/a/a/a/a;->d:I

    .line 197
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/a/a/a/a;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 201
    :pswitch_f
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 202
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 4276
    new-instance v4, Lorg/a/a/c;

    invoke-direct {v4}, Lorg/a/a/c;-><init>()V

    .line 205
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/4 v0, 0x2

    iput v0, p0, Lorg/a/a/a/a;->d:I

    .line 207
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/a/a/a/a;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 216
    :pswitch_10
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget v0, v0, Lorg/a/a/a/d;->a:I

    packed-switch v0, :pswitch_data_4

    .line 250
    :pswitch_11
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto/16 :goto_0

    .line 220
    :pswitch_12
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 221
    iget-object v1, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget-object v1, v1, Lorg/a/a/a/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 224
    :pswitch_13
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v6, :cond_5

    .line 225
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 226
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 227
    invoke-static {v2}, Lorg/a/a/a/a;->a(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto/16 :goto_0

    .line 230
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lorg/a/a/a/a;->d:I

    goto/16 :goto_0

    .line 234
    :pswitch_14
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5276
    new-instance v1, Lorg/a/a/c;

    invoke-direct {v1}, Lorg/a/a/c;-><init>()V

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lorg/a/a/a/a;->d:I

    .line 238
    new-instance v0, Ljava/lang/Integer;

    iget v4, p0, Lorg/a/a/a/a;->d:I

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 242
    :pswitch_15
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5286
    new-instance v1, Lorg/a/a/a;

    invoke-direct {v1}, Lorg/a/a/a;-><init>()V

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const/4 v0, 0x3

    iput v0, p0, Lorg/a/a/a/a;->d:I

    .line 246
    new-instance v0, Ljava/lang/Integer;

    iget v4, p0, Lorg/a/a/a/a;->d:I

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 254
    :pswitch_16
    new-instance v0, Lorg/a/a/a/b;

    .line 6071
    iget-object v1, p0, Lorg/a/a/a/a;->b:Lorg/a/a/a/c;

    invoke-virtual {v1}, Lorg/a/a/a/c;->a()I

    move-result v1

    .line 254
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/a/b;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 259
    :cond_6
    iget-object v0, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    iget v0, v0, Lorg/a/a/a/d;->a:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v5, :cond_0

    .line 265
    new-instance v0, Lorg/a/a/a/b;

    .line 8071
    iget-object v1, p0, Lorg/a/a/a/a;->b:Lorg/a/a/a/c;

    invoke-virtual {v1}, Lorg/a/a/a/c;->a()I

    move-result v1

    .line 265
    iget-object v2, p0, Lorg/a/a/a/a;->c:Lorg/a/a/a/d;

    invoke-direct {v0, v1, v6, v2}, Lorg/a/a/a/b;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_10
        :pswitch_b
    .end packed-switch

    .line 121
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 149
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_0
    .end packed-switch

    .line 216
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_15
        :pswitch_13
        :pswitch_0
    .end packed-switch
.end method
