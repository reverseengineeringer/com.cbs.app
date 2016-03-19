.class final Lcom/cbs/app/view/SplashActivity2$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SplashActivity2;
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
    .line 709
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$10;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 713
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$10;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v1}, Lcom/cbs/app/view/SplashActivity2;->k(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 715
    const-wide/16 v2, 0x190

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$10;->a:Lcom/cbs/app/view/SplashActivity2;

    .line 722
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$10;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v1}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    new-instance v1, Lcom/cbs/app/view/SplashActivity2$10$1;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/SplashActivity2$10$1;-><init>(Lcom/cbs/app/view/SplashActivity2$10;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 740
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method
