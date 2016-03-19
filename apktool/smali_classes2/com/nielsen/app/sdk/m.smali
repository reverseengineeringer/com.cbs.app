.class final Lcom/nielsen/app/sdk/m;
.super Lcom/nielsen/app/sdk/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/m$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field c:Lcom/nielsen/app/sdk/h;

.field private d:Lcom/nielsen/app/sdk/AppNative;

.field private e:Lcom/nielsen/app/sdk/b;

.field private f:Lcom/nielsen/app/sdk/w;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nielsen/app/sdk/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/k;JLjava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v8, 0x0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "AppUpload"

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v6

    if-lez v0, :cond_0

    move-wide v6, p2

    :cond_0
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/nielsen/app/sdk/k$a;-><init>(Lcom/nielsen/app/sdk/k;Ljava/lang/String;JJ)V

    .line 47
    iput-object v8, p0, Lcom/nielsen/app/sdk/m;->d:Lcom/nielsen/app/sdk/AppNative;

    .line 48
    iput-object v8, p0, Lcom/nielsen/app/sdk/m;->e:Lcom/nielsen/app/sdk/b;

    .line 49
    iput-object v8, p0, Lcom/nielsen/app/sdk/m;->f:Lcom/nielsen/app/sdk/w;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/m;->a:Ljava/lang/String;

    .line 196
    iput-object v8, p0, Lcom/nielsen/app/sdk/m;->g:Ljava/util/Map;

    .line 198
    iput-object v8, p0, Lcom/nielsen/app/sdk/m;->c:Lcom/nielsen/app/sdk/h;

    .line 367
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/m;->h:Ljava/util/concurrent/locks/Lock;

    .line 68
    invoke-static {}, Lcom/nielsen/app/sdk/o;->o()Lcom/nielsen/app/sdk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/m;->c:Lcom/nielsen/app/sdk/h;

    .line 70
    invoke-static {}, Lcom/nielsen/app/sdk/o;->l()Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/m;->d:Lcom/nielsen/app/sdk/AppNative;

    .line 71
    invoke-static {}, Lcom/nielsen/app/sdk/o;->i()Lcom/nielsen/app/sdk/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/m;->e:Lcom/nielsen/app/sdk/b;

    .line 72
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/m;->f:Lcom/nielsen/app/sdk/w;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/m;->g:Ljava/util/Map;

    .line 76
    iput-object p4, p0, Lcom/nielsen/app/sdk/m;->a:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/m;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nielsen/app/sdk/m;->g:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 18

    .prologue
    .line 212
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    invoke-static {}, Lcom/nielsen/app/sdk/o;->j()Lcom/nielsen/app/sdk/a;

    move-result-object v14

    .line 216
    invoke-virtual {v14}, Lcom/nielsen/app/sdk/a;->d()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 219
    const/4 v2, 0x1

    .line 365
    :goto_0
    return v2

    .line 221
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/w;->r()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 224
    const/4 v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->e:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/b;->e()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 229
    const/4 v2, 0x1

    goto :goto_0

    .line 232
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/w;->d()Z

    move-result v2

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nielsen/app/sdk/m;->f:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v3}, Lcom/nielsen/app/sdk/w;->g()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .line 235
    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    .line 363
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 236
    const/4 v2, 0x1

    goto :goto_0

    .line 238
    :cond_4
    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {v14, v2}, Lcom/nielsen/app/sdk/a;->a(I)Ljava/util/List;

    move-result-object v2

    .line 239
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 241
    invoke-static {}, Lcom/nielsen/app/sdk/t;->a()Lcom/nielsen/app/sdk/t;

    move-result-object v16

    .line 243
    const/4 v9, 0x0

    .line 245
    const/4 v7, -0x1

    .line 246
    const-wide/16 v4, 0x0

    .line 248
    const-string v6, ""

    .line 250
    const-wide/16 v2, -0x1

    move-wide v10, v2

    move-object v3, v6

    .line 251
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 253
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nielsen/app/sdk/a$b;

    move-object v8, v0

    .line 255
    const-string v2, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    :try_start_5
    invoke-virtual {v8}, Lcom/nielsen/app/sdk/a$b;->c()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v6

    .line 260
    packed-switch v6, :pswitch_data_0

    move v6, v7

    move-object v7, v9

    .line 329
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 330
    :cond_6
    invoke-virtual {v8}, Lcom/nielsen/app/sdk/a$b;->e()Ljava/lang/String;

    move-result-object v2

    .line 332
    :cond_7
    new-instance v9, Lcom/nielsen/app/sdk/m$a;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Lcom/nielsen/app/sdk/m$a;-><init>(Lcom/nielsen/app/sdk/m;Ljava/lang/String;)V

    .line 1192
    const/16 v2, 0x49

    const-string v10, "Sending Message: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v9, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v2, v10, v11}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    iget-object v2, v9, Lcom/nielsen/app/sdk/m$a;->b:Lcom/nielsen/app/sdk/h$c;

    iget-object v10, v9, Lcom/nielsen/app/sdk/m$a;->e:Lcom/nielsen/app/sdk/m;

    iget-object v10, v10, Lcom/nielsen/app/sdk/m;->a:Ljava/lang/String;

    iget-object v9, v9, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v10, v9}, Lcom/nielsen/app/sdk/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v9, v7

    move v7, v6

    move-object v6, v3

    .line 342
    :goto_3
    :try_start_7
    invoke-virtual {v8}, Lcom/nielsen/app/sdk/a$b;->f()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v2

    move-wide v10, v2

    move-object v3, v6

    .line 343
    goto :goto_1

    .line 264
    :pswitch_0
    const/16 v6, 0x49

    :try_start_8
    const-string v12, "parsing PING on Uploader"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v6, v12, v13}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v8}, Lcom/nielsen/app/sdk/a$b;->b()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v6

    .line 267
    if-eq v7, v6, :cond_f

    .line 271
    :try_start_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/t;->a(I)Lcom/nielsen/app/sdk/s;

    move-result-object v12

    .line 272
    if-nez v12, :cond_8

    move v7, v6

    .line 273
    goto :goto_1

    .line 275
    :cond_8
    if-eqz v9, :cond_a

    .line 277
    invoke-virtual {v9}, Lcom/nielsen/app/sdk/b$c;->a()V

    .line 279
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-eqz v7, :cond_9

    .line 280
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nielsen/app/sdk/m;->d:Lcom/nielsen/app/sdk/AppNative;

    invoke-virtual {v7, v4, v5}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 282
    :cond_9
    const/4 v9, 0x0

    .line 283
    const-wide/16 v4, 0x0

    .line 286
    :cond_a
    invoke-virtual {v12}, Lcom/nielsen/app/sdk/s;->c()Ljava/util/Map;

    move-result-object v10

    .line 287
    new-instance v7, Lcom/nielsen/app/sdk/b$c;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nielsen/app/sdk/m;->e:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    invoke-direct {v7, v11, v13, v10}, Lcom/nielsen/app/sdk/b$c;-><init>(Lcom/nielsen/app/sdk/b;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 290
    :try_start_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nielsen/app/sdk/m;->d:Lcom/nielsen/app/sdk/AppNative;

    invoke-virtual {v9}, Lcom/nielsen/app/sdk/AppNative;->a()J

    move-result-wide v4

    .line 291
    invoke-virtual {v7, v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(J)V

    .line 294
    invoke-virtual {v12}, Lcom/nielsen/app/sdk/s;->d()Ljava/lang/String;

    move-result-object v3

    .line 297
    :goto_4
    if-eqz v7, :cond_5

    .line 299
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v8}, Lcom/nielsen/app/sdk/a$b;->e()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v7, v2}, Lcom/nielsen/app/sdk/b$c;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 302
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 304
    const/4 v2, 0x1

    new-array v2, v2, [Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v10, v2, v9

    .line 305
    invoke-virtual {v7, v3, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v9

    .line 307
    const/4 v10, 0x0

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_b

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "&rnd="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/nielsen/app/sdk/w;->s()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    const/16 v9, 0x49

    const-string v10, "generate PING on Uploader"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 339
    :catch_0
    move-exception v2

    move-wide v10, v4

    move-object v9, v3

    move v12, v6

    move-object v13, v7

    :goto_5
    const/4 v3, 0x1

    const/16 v4, 0xa

    const/16 v5, 0x45

    :try_start_b
    const-string v6, "Failed sending ping: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v9, v7, v17

    invoke-static/range {v2 .. v7}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-wide v4, v10

    move-object v6, v9

    move v7, v12

    move-object v9, v13

    goto/16 :goto_3

    .line 315
    :cond_b
    const/16 v2, 0x49

    :try_start_c
    const-string v9, "parsing failed. Can\'t send PING"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v9, v10}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    move-object v9, v7

    move v7, v6

    move-object v6, v3

    .line 316
    goto/16 :goto_3

    .line 321
    :cond_c
    const/16 v2, 0x49

    const-string v9, "no URL to parse. Can\'t send PING"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v9, v10}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v9, v7

    move v7, v6

    move-object v6, v3

    .line 322
    goto/16 :goto_3

    .line 344
    :cond_d
    const/4 v2, 0x1

    :try_start_d
    invoke-virtual {v14, v2, v10, v11}, Lcom/nielsen/app/sdk/a;->a(IJ)J

    .line 346
    if-eqz v9, :cond_e

    .line 348
    invoke-virtual {v9}, Lcom/nielsen/app/sdk/b$c;->a()V

    .line 350
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_e

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->d:Lcom/nielsen/app/sdk/AppNative;

    invoke-virtual {v2, v4, v5}, Lcom/nielsen/app/sdk/AppNative;->a(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 363
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->h:Ljava/util/concurrent/locks/Lock;

    :goto_6
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 365
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 359
    :catch_1
    move-exception v2

    const/4 v3, 0x1

    const/16 v4, 0x57

    :try_start_e
    const-string v5, "Error while UPLOADING pings to Census"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/m;->h:Ljava/util/concurrent/locks/Lock;

    goto :goto_6

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nielsen/app/sdk/m;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 339
    :catch_2
    move-exception v2

    move-wide v10, v4

    move v12, v7

    move-object v13, v9

    move-object v9, v3

    goto :goto_5

    :catch_3
    move-exception v2

    move-wide v10, v4

    move v12, v6

    move-object v13, v9

    move-object v9, v3

    goto :goto_5

    :cond_f
    move v6, v7

    move-object v7, v9

    goto/16 :goto_4

    .line 260
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
