.class final Lcom/cbs/app/livetv/controllers/SignInSignUpController$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/DoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->a(Lcom/cbs/app/androiddata/ResponseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4$1;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;

    iput-object p2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4$1;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;

    iget-object v0, v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4$1;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;

    iget-object v0, v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->b(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;

    move-result-object v0

    const/16 v1, 0x3ec

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SignInSignUpCallBack;->a(ILjava/lang/Object;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4$1;->b:Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;

    iget-object v0, v0, Lcom/cbs/app/livetv/controllers/SignInSignUpController$4;->d:Lcom/cbs/app/livetv/controllers/SignInSignUpController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/SignInSignUpController;->c(Lcom/cbs/app/livetv/controllers/SignInSignUpController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    return-void
.end method
