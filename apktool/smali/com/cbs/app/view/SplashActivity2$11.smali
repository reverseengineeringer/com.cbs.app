.class final Lcom/cbs/app/view/SplashActivity2$11;
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
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/cbs/app/view/SplashActivity2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/SplashActivity2;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$11;->d:Lcom/cbs/app/view/SplashActivity2;

    iput p2, p0, Lcom/cbs/app/view/SplashActivity2$11;->a:I

    iput-object p3, p0, Lcom/cbs/app/view/SplashActivity2$11;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/cbs/app/view/SplashActivity2$11;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$11;->d:Lcom/cbs/app/view/SplashActivity2;

    .line 870
    iget-object v1, p0, Lcom/cbs/app/view/SplashActivity2$11;->d:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v1}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    new-instance v1, Lcom/cbs/app/view/SplashActivity2$11$1;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/SplashActivity2$11$1;-><init>(Lcom/cbs/app/view/SplashActivity2$11;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 918
    :cond_0
    return-void
.end method
