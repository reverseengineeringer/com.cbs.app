.class public Lcom/flurry/sdk/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bi;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide v2, p0, Lcom/flurry/sdk/x;->b:J

    .line 30
    iput-wide v2, p0, Lcom/flurry/sdk/x;->c:J

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/x;->d:J

    .line 32
    iput-wide v2, p0, Lcom/flurry/sdk/x;->e:J

    .line 34
    iput-wide v2, p0, Lcom/flurry/sdk/x;->f:J

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 56
    invoke-static {}, Lcom/flurry/sdk/bf;->a()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->b()J

    move-result-wide v0

    .line 59
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 60
    iget-wide v2, p0, Lcom/flurry/sdk/x;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/x;->e:J

    .line 62
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/x;->b:J

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/x;->c:J

    .line 46
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/x$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/x$1;-><init>(Lcom/flurry/sdk/x;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->b(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/x;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/x;->d:J

    .line 67
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/flurry/sdk/x;->b:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/flurry/sdk/x;->c:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/flurry/sdk/x;->d:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/flurry/sdk/x;->e:J

    return-wide v0
.end method
