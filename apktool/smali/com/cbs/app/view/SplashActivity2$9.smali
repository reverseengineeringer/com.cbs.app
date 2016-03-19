.class final Lcom/cbs/app/view/SplashActivity2$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 306
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$9;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$9;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->j(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$9;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-boolean v0, v0, Lcom/cbs/app/view/SplashActivity2;->c:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$9;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-boolean v0, v0, Lcom/cbs/app/view/SplashActivity2;->a:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$9;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->getHomeData()V

    .line 323
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$9;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->getTonightData()V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$9;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->getUserStatus()V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$9;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$9;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v1, v1, Lcom/cbs/app/view/SplashActivity2;->g:Lcom/cbs/app/manager/StatusManager$StatusResponseListener;

    invoke-static {v0, v1}, Lcom/cbs/app/manager/StatusManager;->a(Landroid/content/Context;Lcom/cbs/app/manager/StatusManager$StatusResponseListener;)V

    goto :goto_0
.end method
