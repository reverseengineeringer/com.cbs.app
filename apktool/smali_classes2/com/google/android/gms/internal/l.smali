.class public Lcom/google/android/gms/internal/l;
.super Lcom/google/android/gms/internal/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/l$b;,
        Lcom/google/android/gms/internal/l$a;
    }
.end annotation


# static fields
.field private static e:Lcom/google/android/gms/ads/a/a;

.field private static f:Ljava/util/concurrent/CountDownLatch;

.field private static volatile g:Z


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/l;->e:Lcom/google/android/gms/ads/a/a;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/l;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/o;Lcom/google/android/gms/internal/p;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/o;Lcom/google/android/gms/internal/p;)V

    iput-boolean p4, p0, Lcom/google/android/gms/internal/l;->h:Z

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/ads/a/a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/l;->e:Lcom/google/android/gms/ads/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/a/a;)Lcom/google/android/gms/ads/a/a;
    .locals 0

    sput-object p0, Lcom/google/android/gms/internal/l;->e:Lcom/google/android/gms/ads/a/a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/l;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/g;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/o;)V

    if-eqz p2, :cond_1

    const-class v1, Lcom/google/android/gms/internal/l;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/l;->e:Lcom/google/android/gms/ads/a/a;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/gms/internal/l$b;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/l$b;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/l;

    new-instance v2, Lcom/google/android/gms/internal/r;

    invoke-direct {v2}, Lcom/google/android/gms/internal/r;-><init>()V

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/google/android/gms/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/o;Lcom/google/android/gms/internal/p;Z)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/l;->g:Z

    return v0
.end method

.method static synthetic c()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/l;->f:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private d()Lcom/google/android/gms/internal/l$a;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/l;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/l$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/l$a;-><init>(Lcom/google/android/gms/internal/l;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/l$a;

    invoke-direct {v0, p0, v5, v4}, Lcom/google/android/gms/internal/l$a;-><init>(Lcom/google/android/gms/internal/l;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-class v1, Lcom/google/android/gms/internal/l;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/l;->e:Lcom/google/android/gms/ads/a/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/l$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/internal/l$a;-><init>(Lcom/google/android/gms/internal/l;Ljava/lang/String;Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/l;->e:Lcom/google/android/gms/ads/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/a;->b()Lcom/google/android/gms/ads/a/a$a;

    move-result-object v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcom/google/android/gms/ads/a/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/l$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/a/a$a;->b()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/l$a;-><init>(Lcom/google/android/gms/internal/l;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final b(Landroid/content/Context;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/k;->b(Landroid/content/Context;)V

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/l;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/l;->h:Z

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0x18

    invoke-static {p1}, Lcom/google/android/gms/internal/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/l;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/l;->d()Lcom/google/android/gms/internal/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/l$a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x1c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/l$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1

    :goto_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/l;->a(IJ)V

    const/16 v0, 0x1a

    const-wide/16 v4, 0x5

    invoke-virtual {p0, v0, v4, v5}, Lcom/google/android/gms/internal/l;->a(IJ)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/l;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/k$a; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
