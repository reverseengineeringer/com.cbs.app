.class final Lcom/cbs/app/view/SplashActivity2$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/manager/StatusManager$StatusResponseListener;


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
    .line 186
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->b(Lcom/cbs/app/view/SplashActivity2;)Z

    .line 205
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-virtual {v0}, Lcom/cbs/app/view/SplashActivity2;->getUserStatus()V

    .line 207
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    const-string v1, "Refresh"

    iget-object v2, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v2, v2, Lcom/cbs/app/view/SplashActivity2;->j:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "Exit"

    iget-object v4, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v4, v4, Lcom/cbs/app/view/SplashActivity2;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 215
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/manager/StatusManager;->a(Landroid/app/Activity;)V

    .line 193
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$5;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/manager/StatusManager;->b(Landroid/app/Activity;)V

    .line 200
    :cond_0
    return-void
.end method
