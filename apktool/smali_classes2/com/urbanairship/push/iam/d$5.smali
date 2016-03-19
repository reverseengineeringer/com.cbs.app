.class final Lcom/urbanairship/push/iam/d$5;
.super Lcom/urbanairship/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/d;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/urbanairship/i;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 678
    invoke-static {}, Lcom/urbanairship/push/iam/d;->i()I

    .line 680
    invoke-static {}, Lcom/urbanairship/push/iam/d;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/urbanairship/push/iam/d$5$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/push/iam/d$5$2;-><init>(Lcom/urbanairship/push/iam/d$5;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 659
    invoke-static {}, Lcom/urbanairship/push/iam/d;->g()I

    .line 661
    invoke-static {}, Lcom/urbanairship/push/iam/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->a(Z)Z

    .line 663
    invoke-static {}, Lcom/urbanairship/p;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->p()Lcom/urbanairship/push/iam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/d;->f()V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    new-instance v0, Lcom/urbanairship/push/iam/d$5$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/d$5$1;-><init>(Lcom/urbanairship/push/iam/d$5;)V

    invoke-static {v0}, Lcom/urbanairship/p;->a(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;

    goto :goto_0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 709
    invoke-static {}, Lcom/urbanairship/push/iam/d;->k()Lcom/urbanairship/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/push/iam/d;->k()Lcom/urbanairship/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/urbanairship/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    invoke-static {}, Lcom/urbanairship/push/iam/d;->k()Lcom/urbanairship/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/urbanairship/e;->a()V

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->p()Lcom/urbanairship/push/iam/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/d;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 694
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 696
    new-instance v1, Lcom/urbanairship/push/iam/d$5$3;

    invoke-direct {v1, p0, v0}, Lcom/urbanairship/push/iam/d$5$3;-><init>(Lcom/urbanairship/push/iam/d$5;Ljava/lang/ref/WeakReference;)V

    invoke-static {v1}, Lcom/urbanairship/p;->a(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/e;)Lcom/urbanairship/e;

    .line 705
    return-void
.end method
