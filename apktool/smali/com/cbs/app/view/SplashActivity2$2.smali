.class final Lcom/cbs/app/view/SplashActivity2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SplashActivity2;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SplashActivity2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    .line 944
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v1}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    new-instance v1, Lcom/cbs/app/view/SplashActivity2$2$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/SplashActivity2$2$1;-><init>(Lcom/cbs/app/view/SplashActivity2$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 987
    :cond_0
    return-void
.end method
