.class public Lcom/flurry/sdk/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/y;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/os/HandlerThread;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/flurry/sdk/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/flurry/sdk/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/y;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/y;->c:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/sdk/y;->d:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/y;->f:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/y;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/flurry/sdk/y;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/sdk/y;->e:Landroid/os/Handler;

    .line 74
    iput-object p2, p0, Lcom/flurry/sdk/y;->g:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/flurry/sdk/ao;

    invoke-direct {v0}, Lcom/flurry/sdk/ao;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->h:Lcom/flurry/sdk/ao;

    .line 77
    return-void
.end method

.method public static a()Lcom/flurry/sdk/y;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/y;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/flurry/sdk/y;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/y;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/y;

    .line 1098
    iget-object v0, v0, Lcom/flurry/sdk/y;->g:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Only one API key per application is supported!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 32
    :cond_0
    if-nez p0, :cond_1

    .line 33
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "API key must be specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    new-instance v0, Lcom/flurry/sdk/y;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/y;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    sput-object v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/y;

    .line 2086
    iget-object v0, v0, Lcom/flurry/sdk/y;->h:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ao;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_3
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/flurry/sdk/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/ap;",
            ">;)",
            "Lcom/flurry/sdk/ap;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/sdk/y;->h:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ao;->b(Ljava/lang/Class;)Lcom/flurry/sdk/ap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/y;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/y;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/sdk/y;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/y;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/y;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
