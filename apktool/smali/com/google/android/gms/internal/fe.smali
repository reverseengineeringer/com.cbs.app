.class public final Lcom/google/android/gms/internal/fe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fe$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/hs;

.field protected b:Z

.field protected c:Z

.field private final d:Landroid/os/Handler;

.field private final e:J

.field private f:J

.field private g:Lcom/google/android/gms/internal/hu$a;

.field private final h:I

.field private final i:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/hu$a;Lcom/google/android/gms/internal/hs;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/google/android/gms/internal/fe;->e:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/google/android/gms/internal/fe;->f:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fe;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/internal/hs;

    iput-object p1, p0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/hu$a;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/fe;->b:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/fe;->c:Z

    iput p4, p0, Lcom/google/android/gms/internal/fe;->h:I

    iput p3, p0, Lcom/google/android/gms/internal/fe;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/hu$a;Lcom/google/android/gms/internal/hs;IIB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fe;-><init>(Lcom/google/android/gms/internal/hu$a;Lcom/google/android/gms/internal/hs;II)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fe;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fe;->i:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fe;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fe;->h:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/fe;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/fe;->f:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/fe;->f:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/fe;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/fe;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/fe;)Lcom/google/android/gms/internal/hu$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/hu$a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/fe;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/fe;->e:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/fe;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/android/gms/internal/fe;->e:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ic;

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/internal/hs;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->q:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ic;-><init>(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/hs;Ljava/lang/String;)V

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/hs;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/internal/hs;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v5

    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hs;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    return-void

    .line 1000
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fe;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fe;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fe;->c:Z

    return v0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fe;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->g:Lcom/google/android/gms/internal/hu$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/internal/hs;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/hu$a;->a(Lcom/google/android/gms/internal/hs;Z)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fe$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fe$a;-><init>(Lcom/google/android/gms/internal/fe;Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fe$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
