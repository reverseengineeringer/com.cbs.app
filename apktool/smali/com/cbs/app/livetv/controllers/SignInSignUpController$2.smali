.class final Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/livetv/model/Person;

.field final synthetic c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Ljava/lang/String;Lcom/cbs/app/livetv/model/Person;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iput-object p2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->b:Lcom/cbs/app/livetv/model/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 151
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->b:Lcom/cbs/app/livetv/model/Person;

    iget-object v2, v2, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-virtual {v2}, Lcom/cbs/app/livetv/model/SocialProvider;->getNameString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "There was an issue creating your account. Please try again later."

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    const/16 v1, 0x7d4

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;I)V

    .line 154
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;

    if-eqz v0, :cond_3

    .line 122
    check-cast p1, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;

    .line 123
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->getUserId()J

    move-result-wide v0

    .line 125
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b()Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;ZLjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->b:Lcom/cbs/app/livetv/model/Person;

    iget-object v2, v2, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-virtual {v2}, Lcom/cbs/app/livetv/model/SocialProvider;->getNameString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    const/16 v1, 0x7da

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->getErrors()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cbs/app/livetv/util/ResponseErrorHelper;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->b:Lcom/cbs/app/livetv/model/Person;

    iget-object v1, v1, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-static {v0, p1, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/CreateEndpointResponse;Lcom/cbs/app/livetv/model/SocialProvider;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->d(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->b:Lcom/cbs/app/livetv/model/Person;

    iget-object v2, v2, Lcom/cbs/app/livetv/model/Person;->i:Lcom/cbs/app/livetv/model/SocialProvider;

    invoke-virtual {v2}, Lcom/cbs/app/livetv/model/SocialProvider;->getNameString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "There was an issue creating your account. Please try again later."

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$2;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    const/16 v1, 0x7d4

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;I)V

    goto :goto_0
.end method
