.class public final Lcom/google/android/gms/internal/cx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cx$a;,
        Lcom/google/android/gms/internal/cx$d;,
        Lcom/google/android/gms/internal/cx$e;,
        Lcom/google/android/gms/internal/cx$c;,
        Lcom/google/android/gms/internal/cx$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private e:Lcom/google/android/gms/internal/cx$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cx$b",
            "<",
            "Lcom/google/android/gms/internal/aa;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/cx$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cx$b",
            "<",
            "Lcom/google/android/gms/internal/aa;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/cx$e;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cx;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cx;->h:I

    iput-object p3, p0, Lcom/google/android/gms/internal/cx;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cx;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cx;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/cx$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cx$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cx;->e:Lcom/google/android/gms/internal/cx$b;

    new-instance v0, Lcom/google/android/gms/internal/cx$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cx$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cx;->f:Lcom/google/android/gms/internal/cx$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/cx$b;Lcom/google/android/gms/internal/cx$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cx$b",
            "<",
            "Lcom/google/android/gms/internal/aa;",
            ">;",
            "Lcom/google/android/gms/internal/cx$b",
            "<",
            "Lcom/google/android/gms/internal/aa;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/cx;->e:Lcom/google/android/gms/internal/cx$b;

    iput-object p5, p0, Lcom/google/android/gms/internal/cx;->f:Lcom/google/android/gms/internal/cx$b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cx;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/cx;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cx$e;)Lcom/google/android/gms/internal/cx$e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/cx;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cx$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->e:Lcom/google/android/gms/internal/cx$b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/cx;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cx;->h:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/cx;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cx$e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/google/android/gms/internal/cx$e;
    .locals 3

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/cx$e;

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->f:Lcom/google/android/gms/internal/cx$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cx$e;-><init>(Lcom/google/android/gms/internal/cx$b;)V

    new-instance v1, Lcom/google/android/gms/internal/cx$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/cx$1;-><init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cx$e;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/Runnable;)V

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/cx$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/cx$2;-><init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cx$e;)V

    new-instance v2, Lcom/google/android/gms/internal/cx$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/cx$3;-><init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cx$e;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cx$e;->a(Lcom/google/android/gms/internal/hl$c;Lcom/google/android/gms/internal/hl$a;)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/cx$d;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$e;->e()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cx;->h:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->a()Lcom/google/android/gms/internal/cx$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$e;->a()Lcom/google/android/gms/internal/cx$d;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/cx;->h:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$e;->a()Lcom/google/android/gms/internal/cx$d;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/cx;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cx;->h:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->a()Lcom/google/android/gms/internal/cx$e;

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$e;->a()Lcom/google/android/gms/internal/cx$d;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/cx;->h:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$e;->a()Lcom/google/android/gms/internal/cx$d;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Lcom/google/android/gms/internal/cx$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$e;->a()Lcom/google/android/gms/internal/cx$d;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
