.class final Lcom/cbs/app/view/SplashActivity2$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


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
    .line 250
    iput-object p1, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    const-string v1, "Refresh"

    iget-object v2, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v2, v2, Lcom/cbs/app/view/SplashActivity2;->j:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "Exit"

    iget-object v4, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v4, v4, Lcom/cbs/app/view/SplashActivity2;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 279
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 5

    .prologue
    .line 254
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    check-cast p1, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    invoke-static {v0, p1}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;Lcom/cbs/app/view/model/rest/TonightEndpointResponse;)Lcom/cbs/app/view/model/rest/TonightEndpointResponse;

    .line 257
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->g(Lcom/cbs/app/view/SplashActivity2;)V

    .line 258
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/SplashActivity2;->a:Z

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    invoke-static {v0}, Lcom/cbs/app/view/SplashActivity2;->a(Lcom/cbs/app/view/SplashActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    const-string v1, "Refresh"

    iget-object v2, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v2, v2, Lcom/cbs/app/view/SplashActivity2;->j:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "Exit"

    iget-object v4, p0, Lcom/cbs/app/view/SplashActivity2$7;->a:Lcom/cbs/app/view/SplashActivity2;

    iget-object v4, v4, Lcom/cbs/app/view/SplashActivity2;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
