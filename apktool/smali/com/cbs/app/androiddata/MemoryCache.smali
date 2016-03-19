.class public Lcom/cbs/app/androiddata/MemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/cbs/app/androiddata/CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v0, 0x3e8

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/cbs/app/androiddata/MemoryCache;->a:Ljava/lang/Object;

    .line 9
    const/4 v1, 0x0

    sput-object v1, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x47480000    # 51200.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 13
    if-le v1, v0, :cond_0

    .line 16
    :goto_0
    new-instance v1, Landroid/support/v4/util/LruCache;

    invoke-direct {v1, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v1, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    .line 17
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/cbs/app/androiddata/CacheEntry;
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    sget-object v1, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    .line 23
    sget-object v1, Lcom/cbs/app/androiddata/MemoryCache;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/CacheEntry;

    .line 25
    monitor-exit v1

    .line 27
    :cond_0
    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 42
    sget-object v1, Lcom/cbs/app/androiddata/MemoryCache;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 44
    sget-object v0, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 45
    monitor-exit v1

    .line 47
    :cond_0
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/cbs/app/androiddata/CacheEntry;)V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_1

    .line 32
    sget-object v1, Lcom/cbs/app/androiddata/MemoryCache;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/cbs/app/androiddata/MemoryCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    monitor-exit v1

    .line 38
    :cond_1
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
