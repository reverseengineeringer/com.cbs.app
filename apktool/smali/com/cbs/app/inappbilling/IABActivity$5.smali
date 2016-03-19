.class final Lcom/cbs/app/inappbilling/IABActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/inappbilling/IABActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 181
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;)V
    .locals 5

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    const-string v1, "Cancelled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/inappbilling/IABActivity;->setResult(I)V

    .line 188
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABActivity;->finish()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABActivity;->d(Lcom/cbs/app/inappbilling/IABActivity;)Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v2}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v3}, Lcom/cbs/app/inappbilling/IABActivity;->b(Lcom/cbs/app/inappbilling/IABActivity;)Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/cbs/app/inappbilling/IABActivity$5;->a:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v4}, Lcom/cbs/app/inappbilling/IABActivity;->c(Lcom/cbs/app/inappbilling/IABActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_0
.end method
