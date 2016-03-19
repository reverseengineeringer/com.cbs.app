.class final Lcom/adobe/mobile/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Lcom/adobe/mobile/ao;

.field private static final h:Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/mobile/ao;->g:Lcom/adobe/mobile/ao;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/ao;->h:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/ao;->f:Ljava/util/concurrent/Executor;

    .line 1087
    iget-object v0, p0, Lcom/adobe/mobile/ao;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/adobe/mobile/ao$1;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/ao$1;-><init>(Lcom/adobe/mobile/ao;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/mobile/ao;->a(Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/adobe/mobile/ao;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/mobile/ao;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/adobe/mobile/ao;J)J
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adobe/mobile/ao;->a:J

    return-wide p1
.end method

.method public static a()Lcom/adobe/mobile/ao;
    .locals 2

    .prologue
    .line 67
    sget-object v1, Lcom/adobe/mobile/ao;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/ao;->g:Lcom/adobe/mobile/ao;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/adobe/mobile/ao;

    invoke-direct {v0}, Lcom/adobe/mobile/ao;-><init>()V

    sput-object v0, Lcom/adobe/mobile/ao;->g:Lcom/adobe/mobile/ao;

    .line 72
    :cond_0
    sget-object v0, Lcom/adobe/mobile/ao;->g:Lcom/adobe/mobile/ao;

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/adobe/mobile/ao;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/mobile/ao;->c:Ljava/lang/String;

    return-object p1
.end method

.method protected static a([B)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 228
    if-nez p0, :cond_0

    .line 243
    :goto_0
    return-object v0

    .line 235
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 243
    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    const-string v2, "ID Service - Unable to decode response(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :catch_1
    move-exception v1

    .line 240
    const-string v2, "ID Service - Unable to parse response(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/adobe/mobile/ao;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/mobile/ao;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/adobe/mobile/ao;J)J
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adobe/mobile/ao;->b:J

    return-wide p1
.end method

.method static synthetic b(Lcom/adobe/mobile/ao;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/mobile/ao;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/adobe/mobile/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/mobile/ao;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/adobe/mobile/ao;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/mobile/ao;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/adobe/mobile/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/mobile/ao;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/adobe/mobile/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/mobile/ao;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 1429
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 1431
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 1432
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 1435
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%019d%019d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    cmp-long v8, v0, v10

    if-gez v8, :cond_0

    neg-long v0, v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    cmp-long v0, v2, v10

    if-gez v0, :cond_1

    neg-long v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    return-object v0

    :cond_1
    move-wide v0, v2

    .line 1435
    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/adobe/mobile/ao;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/adobe/mobile/ao$2;

    invoke-direct {v2, p0, v0}, Lcom/adobe/mobile/ao$2;-><init>(Lcom/adobe/mobile/ao;Ljava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 225
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/adobe/mobile/ao$3;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/ao$3;-><init>(Lcom/adobe/mobile/ao;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 255
    iget-object v1, p0, Lcom/adobe/mobile/ao;->f:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 258
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string v1, "ID Service - Unable to retrieve marketing cloud id from queue(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/adobe/mobile/ao$4;

    invoke-direct {v2, p0, v0}, Lcom/adobe/mobile/ao$4;-><init>(Lcom/adobe/mobile/ao;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 287
    iget-object v2, p0, Lcom/adobe/mobile/ao;->f:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 290
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    const-string v2, "ID Service - Unable to retrieve analytics id parameters from queue(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final d()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/adobe/mobile/ao$5;

    invoke-direct {v2, p0, v0}, Lcom/adobe/mobile/ao$5;-><init>(Lcom/adobe/mobile/ao;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 322
    iget-object v2, p0, Lcom/adobe/mobile/ao;->f:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 325
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-object v0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    const-string v2, "ID Service - Unable to retrieve analytics parameters from queue(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/adobe/mobile/ao$6;

    invoke-direct {v2, p0, v0}, Lcom/adobe/mobile/ao$6;-><init>(Lcom/adobe/mobile/ao;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 365
    iget-object v2, p0, Lcom/adobe/mobile/ao;->f:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 368
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    const-string v2, "ID Service - Unable to retrieve audience manager parameters from queue(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
