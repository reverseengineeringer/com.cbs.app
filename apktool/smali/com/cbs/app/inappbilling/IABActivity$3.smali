.class final Lcom/cbs/app/inappbilling/IABActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/inappbilling/IABActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/inappbilling/IABActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/inappbilling/IABActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    if-eqz p2, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSubscriptionId (SKU): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nPackage name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nPayload is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nOrderId is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v0, v3}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Z)V

    .line 85
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v0, p2}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->getResponse()I

    move-result v1

    const/16 v2, -0x3ed

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v1}, Lcom/cbs/app/inappbilling/IABActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    const-string v1, "Cancelled"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0, v4}, Lcom/cbs/app/inappbilling/IABActivity;->setResult(I)V

    .line 93
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    const v3, 0x7f08014a

    invoke-virtual {v2, v3}, Lcom/cbs/app/inappbilling/IABActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity$3;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v1, v4}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Z)V

    .line 99
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "purchase failed, with result code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
