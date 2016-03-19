.class final Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;
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
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iput-boolean p2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->a:Z

    iput-object p3, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    .line 295
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-interface {v0, v1, v3}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    .line 299
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    if-eqz v0, :cond_4

    .line 250
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    move-object v1, p1

    .line 251
    check-cast v1, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    .line 253
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    :cond_0
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 255
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->a:Z

    if-eqz v0, :cond_2

    .line 256
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Ljava/lang/String;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;)V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 261
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserId()J

    move-result-wide v2

    .line 262
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 263
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4$1;

    invoke-direct {v3, p0, v4}, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4$1;-><init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    goto :goto_0

    .line 283
    :cond_4
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    goto :goto_0
.end method
