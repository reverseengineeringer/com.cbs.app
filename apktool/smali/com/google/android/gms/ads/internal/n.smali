.class public final Lcom/google/android/gms/ads/internal/n;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/n$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/n$a;

.field private final b:Ljava/lang/Runnable;

.field private c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/a;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/internal/n$a;

    sget-object v1, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/n$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/n;-><init>(Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/ads/internal/n$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/ads/internal/n$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/n;->f:J

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/ads/internal/n$a;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/n$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/n$1;-><init>(Lcom/google/android/gms/ads/internal/n;Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/n;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/n;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/n;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/ads/internal/n$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/n;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/n$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V
    .locals 2

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->d:Z

    if-eqz v0, :cond_1

    .line 1000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/n;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->d:Z

    iput-wide p2, p0, Lcom/google/android/gms/ads/internal/n;->f:J

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheduling ad refresh "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/ads/internal/n$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/n;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/ads/internal/n$a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/ads/internal/n$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/n;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/n$a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/n;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->d:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/n;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/n;->f:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/n;->d:Z

    return v0
.end method
