.class final Lcom/cbs/app/view/SplashActivity2$11$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SplashActivity2$11$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SplashActivity2$11$1$1;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2$11$1$1;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$11$1$1$1;->a:Lcom/cbs/app/view/SplashActivity2$11$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$11$1$1$1;->a:Lcom/cbs/app/view/SplashActivity2$11$1$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$11$1$1;->a:Lcom/cbs/app/view/SplashActivity2$11$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$11$1;->b:Lcom/cbs/app/view/SplashActivity2$11;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$11;->d:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$11$1$1$1;->a:Lcom/cbs/app/view/SplashActivity2$11$1$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$11$1$1;->a:Lcom/cbs/app/view/SplashActivity2$11$1;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$11$1;->a:Landroid/app/Activity;

    new-instance v1, Lcom/cbs/app/view/SplashActivity2$11$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/SplashActivity2$11$1$1$1$1;-><init>(Lcom/cbs/app/view/SplashActivity2$11$1$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 906
    :cond_0
    return-void
.end method
