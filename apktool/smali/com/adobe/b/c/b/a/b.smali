.class final Lcom/adobe/b/c/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:D

.field private c:I

.field private d:I

.field private e:Z

.field private f:J

.field private g:J


# direct methods
.method constructor <init>(Ljava/lang/String;DI)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p2, p0, Lcom/adobe/b/c/b/a/b;->b:D

    .line 38
    iput-object p1, p0, Lcom/adobe/b/c/b/a/b;->a:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/c/b/a/b;->e:Z

    .line 40
    iput p4, p0, Lcom/adobe/b/c/b/a/b;->c:I

    .line 42
    invoke-virtual {p0}, Lcom/adobe/b/c/b/a/b;->f()V

    .line 43
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/adobe/b/c/b/a/b;->f:J

    iget-wide v2, p0, Lcom/adobe/b/c/b/a/b;->b:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/adobe/b/c/b/a/b;->d:I

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/b/c/b/a/b;->g:J

    .line 92
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/adobe/b/c/b/a/b;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/adobe/b/c/b/a/b;->c:I

    .line 51
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/adobe/b/c/b/a/b;->e:Z

    .line 59
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/adobe/b/c/b/a/b;->e:Z

    return v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/adobe/b/c/b/a/b;->b:D

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/b/c/b/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/adobe/b/c/b/a/b;->d:I

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/b/c/b/a/b;->d:I

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/b/c/b/a/b;->f:J

    .line 76
    invoke-direct {p0}, Lcom/adobe/b/c/b/a/b;->h()V

    .line 77
    return-void
.end method

.method public final g()Z
    .locals 8

    .prologue
    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 81
    long-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/b/c/b/a/b;->g:J

    long-to-double v2, v2

    sget-wide v4, Lcom/adobe/b/c/b/a/c;->a:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 82
    iget v0, p0, Lcom/adobe/b/c/b/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/b/c/b/a/b;->d:I

    .line 83
    invoke-direct {p0}, Lcom/adobe/b/c/b/a/b;->h()V

    .line 84
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
