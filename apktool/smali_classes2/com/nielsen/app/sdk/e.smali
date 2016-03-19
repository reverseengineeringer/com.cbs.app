.class final Lcom/nielsen/app/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/e$a;
    }
.end annotation


# static fields
.field private static j:Lcom/nielsen/app/sdk/e;


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/nielsen/app/sdk/h$c;

.field private d:Lcom/nielsen/app/sdk/h;

.field private e:Lcom/nielsen/app/sdk/p;

.field private f:Lcom/nielsen/app/sdk/AppNative;

.field private g:Lcom/nielsen/app/sdk/b;

.field private h:Lcom/nielsen/app/sdk/a;

.field private i:Lcom/nielsen/app/sdk/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/e;->j:Lcom/nielsen/app/sdk/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide v2, p0, Lcom/nielsen/app/sdk/e;->a:J

    .line 47
    iput-wide v2, p0, Lcom/nielsen/app/sdk/e;->b:J

    .line 251
    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->c:Lcom/nielsen/app/sdk/h$c;

    .line 283
    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->d:Lcom/nielsen/app/sdk/h;

    .line 284
    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->e:Lcom/nielsen/app/sdk/p;

    .line 285
    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->f:Lcom/nielsen/app/sdk/AppNative;

    .line 287
    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->g:Lcom/nielsen/app/sdk/b;

    .line 288
    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->h:Lcom/nielsen/app/sdk/a;

    .line 289
    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->i:Lcom/nielsen/app/sdk/w;

    .line 261
    invoke-static {}, Lcom/nielsen/app/sdk/o;->o()Lcom/nielsen/app/sdk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->d:Lcom/nielsen/app/sdk/h;

    .line 262
    invoke-static {}, Lcom/nielsen/app/sdk/o;->p()Lcom/nielsen/app/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->e:Lcom/nielsen/app/sdk/p;

    .line 263
    invoke-static {}, Lcom/nielsen/app/sdk/o;->i()Lcom/nielsen/app/sdk/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->g:Lcom/nielsen/app/sdk/b;

    .line 265
    invoke-static {}, Lcom/nielsen/app/sdk/o;->l()Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->f:Lcom/nielsen/app/sdk/AppNative;

    .line 266
    invoke-static {}, Lcom/nielsen/app/sdk/o;->j()Lcom/nielsen/app/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->h:Lcom/nielsen/app/sdk/a;

    .line 267
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/e;->i:Lcom/nielsen/app/sdk/w;

    .line 269
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->h:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a;->f()Ljava/util/List;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 273
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 275
    int-to-long v2, v0

    .line 276
    new-instance v4, Lcom/nielsen/app/sdk/a$a;

    iget-object v5, p0, Lcom/nielsen/app/sdk/e;->h:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v2, v3}, Lcom/nielsen/app/sdk/a$a;-><init>(Lcom/nielsen/app/sdk/a;J)V

    .line 278
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->h:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/a;->a(Ljava/util/List;)V

    .line 282
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->h:Lcom/nielsen/app/sdk/a;

    return-object v0
.end method

.method public static a()Lcom/nielsen/app/sdk/e;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/nielsen/app/sdk/e;->j:Lcom/nielsen/app/sdk/e;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/nielsen/app/sdk/e;

    invoke-direct {v0}, Lcom/nielsen/app/sdk/e;-><init>()V

    sput-object v0, Lcom/nielsen/app/sdk/e;->j:Lcom/nielsen/app/sdk/e;

    .line 304
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/e;->j:Lcom/nielsen/app/sdk/e;

    return-object v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/e;Lcom/nielsen/app/sdk/h$c;)Lcom/nielsen/app/sdk/h$c;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nielsen/app/sdk/e;->c:Lcom/nielsen/app/sdk/h$c;

    return-object p1
.end method

.method static synthetic b(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->g:Lcom/nielsen/app/sdk/b;

    return-object v0
.end method

.method static synthetic c(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/w;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->i:Lcom/nielsen/app/sdk/w;

    return-object v0
.end method

.method static synthetic d(Lcom/nielsen/app/sdk/e;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/nielsen/app/sdk/e;->b:J

    return-wide v0
.end method

.method static synthetic e(Lcom/nielsen/app/sdk/e;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/nielsen/app/sdk/e;->a:J

    return-wide v0
.end method

.method static synthetic f(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/p;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->e:Lcom/nielsen/app/sdk/p;

    return-object v0
.end method

.method static synthetic g(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/AppNative;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->f:Lcom/nielsen/app/sdk/AppNative;

    return-object v0
.end method

.method static synthetic h(Lcom/nielsen/app/sdk/e;)Lcom/nielsen/app/sdk/h;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->d:Lcom/nielsen/app/sdk/h;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 334
    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v1

    .line 339
    :cond_1
    const-string v0, "Description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    const-string v0, "Code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 342
    :goto_1
    iget-object v2, p0, Lcom/nielsen/app/sdk/e;->h:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v2, v0}, Lcom/nielsen/app/sdk/a;->b(I)Lcom/nielsen/app/sdk/a$a;

    move-result-object v2

    .line 343
    if-eqz v2, :cond_0

    .line 345
    const-string v0, ""

    .line 346
    const-string v3, "Description"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    const-string v0, "Description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    invoke-virtual {v2, v0}, Lcom/nielsen/app/sdk/a$a;->a(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->h:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/a;->a(Lcom/nielsen/app/sdk/a$a;)V

    .line 354
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final b()Z
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/16 v11, 0x49

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    .line 374
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v6

    .line 377
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->e:Lcom/nielsen/app/sdk/p;

    const-string v1, "errorSendTime"

    const-string v8, "0"

    invoke-virtual {v0, v1, v8}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 379
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 381
    :goto_0
    cmp-long v8, v6, v0

    if-ltz v8, :cond_4

    .line 383
    iget-object v8, p0, Lcom/nielsen/app/sdk/e;->e:Lcom/nielsen/app/sdk/p;

    const-string v9, "sdk_maxLogMsgLength"

    const-string v10, "140"

    invoke-virtual {v8, v9, v10}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 384
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nielsen/app/sdk/e;->b:J

    .line 386
    iget-object v8, p0, Lcom/nielsen/app/sdk/e;->e:Lcom/nielsen/app/sdk/p;

    const-string v9, "nol_maxLength"

    const-string v10, "1800"

    invoke-virtual {v8, v9, v10}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 387
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nielsen/app/sdk/e;->a:J

    .line 389
    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->h:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a;->f()Ljava/util/List;

    move-result-object v0

    .line 1441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/a$a;

    .line 1442
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/a$a;->g()I

    move-result v0

    if-lez v0, :cond_3

    .line 1443
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 1442
    goto :goto_1

    .line 391
    :cond_0
    if-lez v1, :cond_1

    .line 393
    new-instance v1, Lcom/nielsen/app/sdk/e$a;

    iget-object v0, p0, Lcom/nielsen/app/sdk/e;->d:Lcom/nielsen/app/sdk/h;

    invoke-direct {v1, p0, v0}, Lcom/nielsen/app/sdk/e$a;-><init>(Lcom/nielsen/app/sdk/e;Lcom/nielsen/app/sdk/h;)V

    .line 2243
    :try_start_0
    iget-object v0, v1, Lcom/nielsen/app/sdk/e$a;->c:Lcom/nielsen/app/sdk/e;

    .line 3041
    iget-object v0, v0, Lcom/nielsen/app/sdk/e;->c:Lcom/nielsen/app/sdk/h$c;

    .line 2243
    const-string v4, ""

    iget-object v5, v1, Lcom/nielsen/app/sdk/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/nielsen/app/sdk/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2247
    :goto_3
    const-string v0, "Posted HTTP GET Log (%s)"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/nielsen/app/sdk/e$a;->b:Ljava/lang/String;

    aput-object v1, v4, v2

    invoke-static {v11, v0, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 403
    :goto_4
    iget-object v1, p0, Lcom/nielsen/app/sdk/e;->e:Lcom/nielsen/app/sdk/p;

    const-string v4, "nol_errlogInterval"

    const-string v5, "86400"

    invoke-virtual {v1, v4, v5}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    .line 406
    add-long/2addr v4, v6

    .line 407
    iget-object v1, p0, Lcom/nielsen/app/sdk/e;->e:Lcom/nielsen/app/sdk/p;

    const-string v8, "errorSendTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    const-string v1, "UPLOADED LOG... Time to send logs now(%d), next time(%d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-static {v11, v1, v8}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 411
    :goto_5
    return v0

    .line 2244
    :catch_0
    move-exception v0

    .line 2245
    const/16 v4, 0x45

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "startRequest() failed. Exception:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v5, v8}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 399
    :cond_1
    const-string v0, "No errors to send to Census"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v2

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    move-wide v0, v4

    goto/16 :goto_0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method
