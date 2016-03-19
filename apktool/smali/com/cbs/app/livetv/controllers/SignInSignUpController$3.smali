.class final Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iput-object p2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    const/16 v1, 0x7d3

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;I)V

    .line 198
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 173
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;

    if-eqz v0, :cond_2

    .line 174
    check-cast p1, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;

    .line 175
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    const/4 v1, 0x1

    const-string v2, ""

    iget-object v3, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;ZLjava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 180
    const-string v0, "Invalid username/password."

    .line 181
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$3;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    const/16 v1, 0x7d3

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;I)V

    goto :goto_0
.end method
