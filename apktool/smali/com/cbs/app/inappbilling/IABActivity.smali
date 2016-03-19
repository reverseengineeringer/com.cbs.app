.class public Lcom/cbs/app/inappbilling/IABActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Landroid/content/DialogInterface$OnClickListener;

.field b:Landroid/content/DialogInterface$OnClickListener;

.field private d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/cbs/app/inappbilling/IABActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/inappbilling/IABActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcom/cbs/app/inappbilling/IABActivity$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/inappbilling/IABActivity$1;-><init>(Lcom/cbs/app/inappbilling/IABActivity;)V

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    new-instance v0, Lcom/cbs/app/inappbilling/IABActivity$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/inappbilling/IABActivity$2;-><init>(Lcom/cbs/app/inappbilling/IABActivity;)V

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    new-instance v0, Lcom/cbs/app/inappbilling/IABActivity$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/inappbilling/IABActivity$3;-><init>(Lcom/cbs/app/inappbilling/IABActivity;)V

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->g:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/inappbilling/IABActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/inappbilling/IABActivity;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/inappbilling/IABActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/inappbilling/IABActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/inappbilling/IABActivity;Ljava/util/TreeMap;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 40
    .line 2249
    const/4 v2, 0x0

    .line 2251
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 2252
    packed-switch v0, :pswitch_data_0

    .line 2273
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2274
    iget-object v5, p0, Lcom/cbs/app/inappbilling/IABActivity;->f:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/inappbilling/IABUtils/Purchase;

    iget-object v1, v1, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->d:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/inappbilling/IABUtils/Purchase;

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    move v0, v3

    .line 2283
    :goto_0
    if-nez v0, :cond_1

    .line 2290
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABActivity;->g:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v3, p0, Lcom/cbs/app/inappbilling/IABActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 40
    :cond_1
    return-void

    :pswitch_0
    move v0, v2

    .line 2264
    goto :goto_0

    .line 2266
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/inappbilling/IABUtils/Purchase;

    .line 2267
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2269
    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABActivity;->a(Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 2252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/cbs/app/inappbilling/IABActivity;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/cbs/app/inappbilling/IABActivity;->a(Z)V

    return-void
.end method

.method private a(Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V
    .locals 10

    .prologue
    .line 313
    new-instance v0, Lcom/cbs/app/service/PurchaseService;

    invoke-direct {v0}, Lcom/cbs/app/service/PurchaseService;-><init>()V

    .line 315
    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getToken()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CBS"

    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v8

    new-instance v6, Lcom/cbs/app/inappbilling/IABActivity$7;

    invoke-direct {v6, p0, p1}, Lcom/cbs/app/inappbilling/IABActivity$7;-><init>(Lcom/cbs/app/inappbilling/IABActivity;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    .line 2023
    const-string v3, "/googleplay/purchase.json"

    .line 2025
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2026
    const-string v9, "token"

    invoke-interface {v5, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    const-string v2, "subscriptionId"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    const-string v1, "applicationName"

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    const-string v1, "androidAppPackageName"

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    const-string v1, "orderId"

    invoke-interface {v5, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    const-string v2, "v2.0"

    const-string v4, "application/x-www-form-urlencoded"

    const-class v7, Lcom/cbs/app/view/model/rest/PlayBillingResponse;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/cbs/app/service/PurchaseService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 370
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Lcom/cbs/app/inappbilling/IABDialogFragment;

    invoke-direct {v0}, Lcom/cbs/app/inappbilling/IABDialogFragment;-><init>()V

    .line 297
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 298
    const-string v2, "main_text"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "dialog_title"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v1}, Lcom/cbs/app/inappbilling/IABDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 301
    invoke-virtual {v0, p0}, Lcom/cbs/app/inappbilling/IABDialogFragment;->setListener(Lcom/cbs/app/inappbilling/IABDialogFragment$IABDialogListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "iab_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 306
    const v0, 0x7f0f00a2

    invoke-virtual {p0, v0}, Lcom/cbs/app/inappbilling/IABActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 307
    if-eqz v0, :cond_0

    .line 308
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    :cond_0
    return-void

    .line 308
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/cbs/app/inappbilling/IABActivity;)Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->g:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/cbs/app/inappbilling/IABActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/inappbilling/IABActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/inappbilling/IABActivity;)Lcom/cbs/app/inappbilling/IABUtils/IabHelper;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    new-instance v1, Lcom/cbs/app/inappbilling/IABActivity$6;

    invoke-direct {v1, p0}, Lcom/cbs/app/inappbilling/IABActivity$6;-><init>(Lcom/cbs/app/inappbilling/IABActivity;)V

    .line 1571
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(ZLcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;)V

    .line 245
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/inappbilling/IABActivity;->setResult(I)V

    .line 376
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABActivity;->finish()V

    .line 378
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    new-instance v1, Lcom/cbs/app/inappbilling/IABActivity$5;

    invoke-direct {v1, p0}, Lcom/cbs/app/inappbilling/IABActivity$5;-><init>(Lcom/cbs/app/inappbilling/IABActivity;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 201
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/cbs/app/inappbilling/IABActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity;->f:Ljava/lang/String;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "payload is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 118
    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/cbs/app/inappbilling/IABActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "In App Purchasing Error"

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/inappbilling/IABActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABActivity;->a(Z)V

    .line 173
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/cbs/app/inappbilling/IABActivity;->a(Z)V

    .line 133
    const-string v1, "sku_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->e:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sku is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    invoke-direct {v0, p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    .line 138
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    new-instance v1, Lcom/cbs/app/inappbilling/IABActivity$4;

    invoke-direct {v1, p0}, Lcom/cbs/app/inappbilling/IABActivity$4;-><init>(Lcom/cbs/app/inappbilling/IABActivity;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 214
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABActivity;->d:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a()V

    .line 216
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABActivity;->a(Z)V

    .line 209
    return-void
.end method
