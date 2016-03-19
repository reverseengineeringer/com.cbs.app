.class public final Lcom/flurry/sdk/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bw$a;
    }
.end annotation


# static fields
.field private static a:Lcom/flurry/sdk/bw;


# instance fields
.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bw;->c:Ljava/util/Map;

    .line 74
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bw;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 75
    new-instance v0, Lcom/flurry/sdk/bw$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/bw$a;-><init>(Lcom/flurry/sdk/bw;B)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 76
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/bw;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/flurry/sdk/bw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/bw;->a:Lcom/flurry/sdk/bw;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/flurry/sdk/bw;

    invoke-direct {v0}, Lcom/flurry/sdk/bw;-><init>()V

    sput-object v0, Lcom/flurry/sdk/bw;->a:Lcom/flurry/sdk/bw;

    .line 27
    :cond_0
    sget-object v0, Lcom/flurry/sdk/bw;->a:Lcom/flurry/sdk/bw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/bw;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 19
    .line 1083
    invoke-direct {p0}, Lcom/flurry/sdk/bw;->b()Ljava/util/Set;

    move-result-object v0

    .line 1084
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1086
    :try_start_0
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1090
    :catch_0
    move-exception v0

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method private b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/flurry/sdk/bw;->c:Ljava/util/Map;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bw;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/flurry/sdk/bw;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 19
    .line 1094
    iget-object v0, p0, Lcom/flurry/sdk/bw;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bw;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/flurry/sdk/bw;->c:Ljava/util/Map;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/bw;->c:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
