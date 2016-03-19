.class final Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;
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
.field final synthetic a:Lcom/cbs/app/livetv/model/Person;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iput-object p2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->a:Lcom/cbs/app/livetv/model/Person;

    iput-object p3, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    const/16 v1, 0x7d4

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;I)V

    .line 104
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    check-cast p1, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    .line 91
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->a:Lcom/cbs/app/livetv/model/Person;

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->a(Lcom/cbs/app/livetv/controllers/SignInSignUpController;Lcom/cbs/app/livetv/model/Person;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$1;->c:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    const/16 v1, 0x7db

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
