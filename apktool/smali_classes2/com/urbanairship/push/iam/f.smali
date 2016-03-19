.class abstract Lcom/urbanairship/push/iam/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:J

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/f;->e:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/urbanairship/push/iam/f$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/f$1;-><init>(Lcom/urbanairship/push/iam/f;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/f;->f:Ljava/lang/Runnable;

    .line 58
    iput-wide p1, p0, Lcom/urbanairship/push/iam/f;->c:J

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/push/iam/f;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/f;->a:Z

    return v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method final b()V
    .locals 4

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/f;->a:Z

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/f;->a:Z

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/push/iam/f;->b:J

    .line 72
    iget-wide v0, p0, Lcom/urbanairship/push/iam/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/urbanairship/push/iam/f;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/f;->f:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/urbanairship/push/iam/f;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/f;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/f;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final c()V
    .locals 8

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/f;->a:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/urbanairship/push/iam/f;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/urbanairship/push/iam/f;->d:J

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/f;->a:Z

    .line 90
    iget-object v0, p0, Lcom/urbanairship/push/iam/f;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/f;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/urbanairship/push/iam/f;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/urbanairship/push/iam/f;->b:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/push/iam/f;->c:J

    goto :goto_0
.end method

.method final d()J
    .locals 4

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/f;->a:Z

    if-eqz v0, :cond_0

    .line 101
    iget-wide v0, p0, Lcom/urbanairship/push/iam/f;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/urbanairship/push/iam/f;->b:J

    sub-long/2addr v0, v2

    .line 104
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/urbanairship/push/iam/f;->d:J

    goto :goto_0
.end method
