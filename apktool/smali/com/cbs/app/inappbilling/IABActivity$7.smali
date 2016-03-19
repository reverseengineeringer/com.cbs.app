.class final Lcom/cbs/app/inappbilling/IABActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/inappbilling/IABUtils/Purchase;

.field final synthetic b:Lcom/cbs/app/inappbilling/IABActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/inappbilling/IABActivity;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    iput-object p2, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->a:Lcom/cbs/app/inappbilling/IABUtils/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 364
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    const-string v1, "Retry"

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    iget-object v2, v2, Lcom/cbs/app/inappbilling/IABActivity;->b:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "Cancel"

    iget-object v4, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    iget-object v4, v4, Lcom/cbs/app/inappbilling/IABActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Z)V

    .line 368
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 324
    check-cast p1, Lcom/cbs/app/view/model/rest/PlayBillingResponse;

    .line 325
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v0, v2}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Z)V

    .line 329
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    new-instance v1, Lcom/cbs/app/inappbilling/IABActivity$7$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/inappbilling/IABActivity$7$1;-><init>(Lcom/cbs/app/inappbilling/IABActivity$7;)V

    invoke-static {v0, v2, v1, v3, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;ZLcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/cbs/app/analytics/Action;->ck:Lcom/cbs/app/analytics/Action;

    .line 346
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 347
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v2, "evar_56"

    iget-object v3, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->a:Lcom/cbs/app/inappbilling/IABUtils/Purchase;

    invoke-virtual {v3}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v2, "orderId"

    iget-object v3, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->a:Lcom/cbs/app/inappbilling/IABUtils/Purchase;

    invoke-virtual {v3}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 360
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABActivity;Z)V

    .line 354
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {}, Lcom/cbs/app/inappbilling/IABActivity;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "play billing endpoint fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    const-string v1, "Retry"

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    iget-object v2, v2, Lcom/cbs/app/inappbilling/IABActivity;->b:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "Cancel"

    iget-object v4, p0, Lcom/cbs/app/inappbilling/IABActivity$7;->b:Lcom/cbs/app/inappbilling/IABActivity;

    iget-object v4, v4, Lcom/cbs/app/inappbilling/IABActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
