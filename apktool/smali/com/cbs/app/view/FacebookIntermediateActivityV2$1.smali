.class final Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/FacebookIntermediateActivityV2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/FacebookIntermediateActivityV2;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    const-string v1, "Login Cancel"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    .line 98
    return-void
.end method

.method public final onError(Lcom/facebook/FacebookException;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->finish()V

    .line 106
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 83
    check-cast p1, Lcom/facebook/login/LoginResult;

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    iget-object v1, p0, Lcom/cbs/app/view/FacebookIntermediateActivityV2$1;->a:Lcom/cbs/app/view/FacebookIntermediateActivityV2;

    invoke-static {v1}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->a(Lcom/cbs/app/view/FacebookIntermediateActivityV2;)Lcom/cbs/app/service/social/model/FacebookOperation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/FacebookIntermediateActivityV2;->a(Lcom/cbs/app/view/FacebookIntermediateActivityV2;Lcom/cbs/app/service/social/model/FacebookOperation;)V

    .line 83
    return-void
.end method
