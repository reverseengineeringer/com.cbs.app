.class final Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/controllers/SignInSignUpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/cbs/app/view/fragments/TOUDialogFragment;

.field final synthetic f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/TOUDialogFragment;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iput-object p2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->c:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    iput-object p5, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->e:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    .line 438
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    .line 442
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    .line 411
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    if-eqz p1, :cond_2

    .line 413
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->c:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->e:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->dismiss()V

    .line 416
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    const/16 v1, 0x3ec

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    .line 429
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 431
    :cond_1
    return-void

    .line 420
    :cond_2
    sget-object v0, Lcom/cbs/app/analytics/Action;->bm:Lcom/cbs/app/analytics/Action;

    .line 421
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 422
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v4}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v2, "events"

    const-string v3, "event20"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v2, "pageTitle"

    const-string v3, "setting"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v2, "evar_70"

    const-string v3, "You need to accept our terms in order to continue."

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v2, "prop_70"

    const-string v3, "You need to accept our terms in order to continue."

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$6;->f:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0
.end method
