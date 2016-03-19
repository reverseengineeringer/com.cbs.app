.class final Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/controllers/SignInSignUpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/model/SocialProvider;

.field final synthetic b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Lcom/cbs/app/livetv/model/SocialProvider;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iput-object p2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->a:Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    const/16 v1, 0x7d4

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;I)V

    .line 346
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x7d4

    .line 311
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 313
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;

    if-eqz v0, :cond_3

    .line 314
    check-cast p1, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;

    .line 315
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->getRegistrationStatus()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;ZLjava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->a:Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-virtual {v2}, Lcom/cbs/app/livetv/model/SocialProvider;->getNameString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    const/16 v1, 0x3ed

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->a:Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0, v3}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;I)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$5;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0, v3}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;I)V

    goto :goto_0
.end method
