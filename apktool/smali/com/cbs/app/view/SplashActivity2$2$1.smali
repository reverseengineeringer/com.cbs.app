.class final Lcom/cbs/app/view/SplashActivity2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SplashActivity2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/SplashActivity2$2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2$2;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$2$1;->a:Lcom/cbs/app/view/SplashActivity2$2;

    iget-object v0, v0, Lcom/cbs/app/view/SplashActivity2$2;->a:Lcom/cbs/app/view/SplashActivity2;

    new-instance v1, Lcom/cbs/app/view/SplashActivity2$2$1$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/SplashActivity2$2$1$1;-><init>(Lcom/cbs/app/view/SplashActivity2$2$1;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/SplashActivity2;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 984
    return-void
.end method
