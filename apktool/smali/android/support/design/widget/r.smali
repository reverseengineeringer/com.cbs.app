.class final Landroid/support/design/widget/r;
.super Landroid/support/design/widget/q$e;
.source "SourceFile"


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private b:J

.field private c:Z

.field private final d:[I

.field private final e:[F

.field private f:I

.field private g:Landroid/view/animation/Interpolator;

.field private h:Landroid/support/design/widget/q$e$a;

.field private i:Landroid/support/design/widget/q$e$b;

.field private j:F

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/design/widget/r;->a:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 28
    invoke-direct {p0}, Landroid/support/design/widget/q$e;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/design/widget/r;->d:[I

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/design/widget/r;->e:[F

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Landroid/support/design/widget/r;->f:I

    .line 185
    new-instance v0, Landroid/support/design/widget/r$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/r$1;-><init>(Landroid/support/design/widget/r;)V

    iput-object v0, p0, Landroid/support/design/widget/r;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/r;)V
    .locals 6

    .prologue
    .line 28
    .line 2156
    iget-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    if-eqz v0, :cond_2

    .line 2158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/design/widget/r;->b:J

    sub-long/2addr v0, v2

    .line 2159
    long-to-float v0, v0

    iget v1, p0, Landroid/support/design/widget/r;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2160
    iget-object v1, p0, Landroid/support/design/widget/r;->g:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/r;->g:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    iput v0, p0, Landroid/support/design/widget/r;->j:F

    .line 2165
    iget-object v0, p0, Landroid/support/design/widget/r;->i:Landroid/support/design/widget/q$e$b;

    if-eqz v0, :cond_1

    .line 2166
    iget-object v0, p0, Landroid/support/design/widget/r;->i:Landroid/support/design/widget/q$e$b;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$b;->a()V

    .line 2170
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/design/widget/r;->b:J

    iget v4, p0, Landroid/support/design/widget/r;->f:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 2171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    .line 2173
    iget-object v0, p0, Landroid/support/design/widget/r;->h:Landroid/support/design/widget/q$e$a;

    if-eqz v0, :cond_2

    .line 2174
    iget-object v0, p0, Landroid/support/design/widget/r;->h:Landroid/support/design/widget/q$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$a;->a()V

    .line 2179
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    if-eqz v0, :cond_3

    .line 2181
    sget-object v0, Landroid/support/design/widget/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/r;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/r;->g:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/r;->g:Landroid/view/animation/Interpolator;

    .line 59
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/design/widget/r;->b:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    .line 66
    sget-object v0, Landroid/support/design/widget/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/r;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/design/widget/r;->e:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 103
    iget-object v0, p0, Landroid/support/design/widget/r;->e:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 104
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Landroid/support/design/widget/r;->f:I

    .line 114
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/design/widget/r;->d:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 92
    iget-object v0, p0, Landroid/support/design/widget/r;->d:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 93
    return-void
.end method

.method public final a(Landroid/support/design/widget/q$e$a;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Landroid/support/design/widget/r;->h:Landroid/support/design/widget/q$e$a;

    .line 82
    return-void
.end method

.method public final a(Landroid/support/design/widget/q$e$b;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/design/widget/r;->i:Landroid/support/design/widget/q$e$b;

    .line 87
    return-void
.end method

.method public final a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Landroid/support/design/widget/r;->g:Landroid/view/animation/Interpolator;

    .line 77
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    return v0
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/design/widget/r;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/r;->d:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1128
    iget v2, p0, Landroid/support/design/widget/r;->j:F

    .line 97
    invoke-static {v0, v1, v2}, Landroid/support/design/widget/a;->a(IIF)I

    move-result v0

    return v0
.end method

.method public final d()F
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/design/widget/r;->e:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/r;->e:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 2128
    iget v2, p0, Landroid/support/design/widget/r;->j:F

    .line 108
    invoke-static {v0, v1, v2}, Landroid/support/design/widget/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/r;->c:Z

    .line 119
    sget-object v0, Landroid/support/design/widget/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/r;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Landroid/support/design/widget/r;->h:Landroid/support/design/widget/q$e$a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/design/widget/r;->h:Landroid/support/design/widget/q$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/q$e$a;->b()V

    .line 124
    :cond_0
    return-void
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/support/design/widget/r;->j:F

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Landroid/support/design/widget/r;->f:I

    int-to-long v0, v0

    return-wide v0
.end method
