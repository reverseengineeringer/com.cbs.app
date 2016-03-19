.class public Lcom/cbs/app/inappbilling/IABUtils/IabHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnConsumeFinishedListener;,
        Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;,
        Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field i:Lcom/android/vending/billing/IInAppBillingService;

.field j:Landroid/content/ServiceConnection;

.field k:I

.field l:Ljava/lang/String;

.field m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a:Z

    .line 102
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c:Z

    .line 106
    iput-boolean v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->d:Z

    .line 108
    iput-boolean v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->e:Z

    .line 111
    iput-boolean v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->f:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->g:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    .line 138
    return-void
.end method

.method private a(Landroid/os/Bundle;)I
    .locals 4

    .prologue
    .line 649
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 650
    if-nez v0, :cond_0

    .line 652
    const/4 v0, 0x0

    .line 654
    :goto_0
    return v0

    .line 653
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 654
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 656
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-direct {p0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 658
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lcom/cbs/app/inappbilling/IABUtils/Inventory;Ljava/lang/String;)I
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const/4 v0, 0x0

    move-object v1, v0

    move v0, v6

    .line 701
    :goto_0
    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 704
    invoke-direct {p0, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Owned items response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    if-eqz v1, :cond_1

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getPurchases() failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v1

    .line 751
    :cond_0
    :goto_1
    return v4

    .line 710
    :cond_1
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 713
    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 714
    const/16 v4, -0x3ea

    goto :goto_1

    .line 717
    :cond_3
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 719
    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 721
    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    move v3, v4

    move v5, v0

    .line 724
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 725
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 726
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 728
    invoke-static {v0, v1}, Lcom/cbs/app/inappbilling/IABUtils/Security;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 730
    new-instance v2, Lcom/cbs/app/inappbilling/IABUtils/Purchase;

    invoke-direct {v2, p2, v0, v1}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v2}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 733
    const-string v0, "BUG: empty/null token!"

    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->d(Ljava/lang/String;)V

    .line 2110
    :cond_4
    iget-object v0, p1, Lcom/cbs/app/inappbilling/IABUtils/Inventory;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    .line 724
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v1

    goto :goto_2

    .line 740
    :cond_5
    const-string v0, "Purchase signature verification **FAILED**. Not adding item."

    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->d(Ljava/lang/String;)V

    move v1, v4

    .line 743
    goto :goto_3

    .line 747
    :cond_6
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2114
    iget-object v0, p1, Lcom/cbs/app/inappbilling/IABUtils/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 751
    :goto_4
    if-nez v6, :cond_0

    if-nez v5, :cond_0

    const/16 v4, -0x3eb

    goto/16 :goto_1

    :cond_7
    move v6, v4

    .line 2114
    goto :goto_4

    :cond_8
    move-object v1, v0

    move v0, v5

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/cbs/app/inappbilling/IABUtils/Inventory;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cbs/app/inappbilling/IABUtils/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 757
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 758
    invoke-virtual {p2, p1}, Lcom/cbs/app/inappbilling/IABUtils/Inventory;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 759
    if-eqz p3, :cond_1

    .line 760
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 762
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 796
    :goto_1
    return v0

    .line 772
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 773
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 774
    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 777
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 778
    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 779
    if-eqz v0, :cond_3

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSkuDetails() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 783
    :cond_3
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 784
    const/16 v0, -0x3ea

    goto :goto_1

    .line 788
    :cond_4
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 792
    new-instance v3, Lcom/cbs/app/inappbilling/IABUtils/SkuDetails;

    invoke-direct {v3, p1, v0}, Lcom/cbs/app/inappbilling/IABUtils/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Got sku details: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3106
    iget-object v0, p2, Lcom/cbs/app/inappbilling/IABUtils/Inventory;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/cbs/app/inappbilling/IABUtils/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move v0, v1

    .line 796
    goto :goto_1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 162
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 163
    rsub-int v0, p0, -0x3e8

    .line 164
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    .line 169
    :goto_0
    return-object v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c:Z

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->g:Ljava/lang/String;

    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->f:Z

    .line 684
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 845
    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/List;)Lcom/cbs/app/inappbilling/IABUtils/Inventory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cbs/app/inappbilling/IABUtils/Inventory;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c()V

    .line 488
    const-string v0, "queryInventory"

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Ljava/lang/String;)V

    .line 490
    :try_start_0
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/Inventory;

    invoke-direct {v0}, Lcom/cbs/app/inappbilling/IABUtils/Inventory;-><init>()V

    .line 491
    const-string v1, "inapp"

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Lcom/cbs/app/inappbilling/IABUtils/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 492
    if-eqz v1, :cond_0

    .line 493
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabException;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    new-instance v1, Lcom/cbs/app/inappbilling/IABUtils/IabException;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 496
    :cond_0
    if-eqz p1, :cond_1

    .line 497
    :try_start_1
    const-string v1, "inapp"

    invoke-direct {p0, v1, v0, p2}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Ljava/lang/String;Lcom/cbs/app/inappbilling/IABUtils/Inventory;Ljava/util/List;)I

    move-result v1

    .line 498
    if-eqz v1, :cond_1

    .line 499
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabException;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    :catch_1
    move-exception v0

    .line 522
    new-instance v1, Lcom/cbs/app/inappbilling/IABUtils/IabException;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 504
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->e:Z

    if-eqz v1, :cond_3

    .line 505
    const-string v1, "subs"

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Lcom/cbs/app/inappbilling/IABUtils/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 506
    if-eqz v1, :cond_2

    .line 507
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabException;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 510
    :cond_2
    if-eqz p1, :cond_3

    .line 511
    const-string v1, "subs"

    invoke-direct {p0, v1, v0, p2}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Ljava/lang/String;Lcom/cbs/app/inappbilling/IABUtils/Inventory;Ljava/util/List;)I

    move-result v1

    .line 512
    if-eqz v1, :cond_3

    .line 513
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabException;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 518
    :cond_3
    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c:Z

    .line 275
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 279
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->d:Z

    .line 280
    iput-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    .line 281
    iput-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->j:Landroid/content/ServiceConnection;

    .line 282
    iput-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 283
    iput-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    .line 284
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 314
    const-string v4, "subs"

    .line 1333
    invoke-direct {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c()V

    .line 1334
    const-string v0, "launchPurchaseFlow"

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Ljava/lang/String;)V

    .line 1335
    const-string v0, "launchPurchaseFlow"

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b(Ljava/lang/String;)V

    .line 1338
    const-string v0, "subs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->e:Z

    if-nez v0, :cond_1

    .line 1339
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 1341
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b()V

    .line 1342
    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructing buy intent for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1349
    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 1350
    if-eqz v1, :cond_2

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b()V

    .line 1353
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 1354
    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 1368
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b()V

    .line 1370
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 1371
    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    goto :goto_0

    .line 1358
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: 10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    const/16 v1, 0xa

    iput v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->k:I

    .line 1361
    iput-object p3, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    .line 1362
    iput-object v4, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->l:Ljava/lang/String;

    .line 1363
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0xa

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1372
    :catch_1
    move-exception v0

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1375
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b()V

    .line 1377
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 1378
    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c()V

    .line 195
    iget-boolean v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;-><init>(Lcom/cbs/app/inappbilling/IABUtils/IabHelper;Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->j:Landroid/content/ServiceConnection;

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_1
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;)V

    goto :goto_0
.end method

.method public final a(ZLcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 537
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 538
    invoke-direct {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c()V

    .line 539
    const-string v0, "queryInventory"

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Ljava/lang/String;)V

    .line 540
    const-string v0, "refresh inventory"

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b(Ljava/lang/String;)V

    .line 541
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$2;-><init>(Lcom/cbs/app/inappbilling/IABUtils/IabHelper;ZLjava/util/List;Lcom/cbs/app/inappbilling/IABUtils/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 564
    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 394
    iget v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->k:I

    if-eq p1, v0, :cond_0

    .line 469
    :goto_0
    return v1

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c()V

    .line 397
    const-string v0, "handleActivityResult"

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->b()V

    .line 402
    if-nez p3, :cond_2

    .line 403
    const-string v0, "Null data in IAB activity result."

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 404
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const-string v1, "Null data in IAB result"

    invoke-direct {v0, v8, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v1, v0, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    :cond_1
    move v1, v2

    .line 406
    goto :goto_0

    .line 1664
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1665
    if-nez v0, :cond_5

    .line 1666
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    move v0, v1

    .line 410
    :goto_1
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    if-ne p2, v6, :cond_d

    if-nez v0, :cond_d

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Extras: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Expected item type: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->l:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    if-eqz v3, :cond_3

    if-nez v4, :cond_8

    .line 421
    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extras: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/16 v1, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v1, v3}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v1, v0, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    :cond_4
    move v1, v2

    .line 425
    goto/16 :goto_0

    .line 1669
    :cond_5
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 1670
    :cond_6
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_7

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v0, v4

    goto :goto_1

    .line 1672
    :cond_7
    const-string v1, "Unexpected type for intent response code."

    invoke-direct {p0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 1674
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_8
    :try_start_0
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/Purchase;

    iget-object v5, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->l:Ljava/lang/String;

    invoke-direct {v0, v5, v3, v4}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Lcom/cbs/app/inappbilling/IABUtils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    .line 433
    invoke-static {v3, v4}, Lcom/cbs/app/inappbilling/IABUtils/Security;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 435
    new-instance v1, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Signature verification failed for sku "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 436
    iget-object v3, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v3, v1, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    move v1, v2

    .line 438
    goto/16 :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    const-string v1, "Failed to parse purchase data."

    invoke-direct {p0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 444
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const-string v1, "Failed to parse purchase data."

    invoke-direct {v0, v8, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v1, v0, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    :cond_a
    move v1, v2

    .line 446
    goto/16 :goto_0

    .line 449
    :cond_b
    iget-object v3, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_c

    .line 450
    iget-object v3, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v4, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const-string v5, "Success"

    invoke-direct {v4, v1, v5}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    :cond_c
    :goto_2
    move v1, v2

    .line 469
    goto/16 :goto_0

    .line 452
    :cond_d
    if-ne p2, v6, :cond_e

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_c

    .line 456
    new-instance v1, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const-string v3, "Problem purchashing item."

    invoke-direct {v1, v0, v3}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v0, v1, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    goto :goto_2

    .line 459
    :cond_e
    if-nez p2, :cond_f

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Purchase canceled - Response: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/16 v1, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v1, v3}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v1, v0, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    goto :goto_2

    .line 464
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Purchase failed. Result code: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c(Ljava/lang/String;)V

    .line 466
    new-instance v0, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/16 v1, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v1, v3}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->m:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v1, v0, v7}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabPurchaseFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;Lcom/cbs/app/inappbilling/IABUtils/Purchase;)V

    goto :goto_2
.end method

.method final b()V
    .locals 2

    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v0, ""

    iput-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->g:Ljava/lang/String;

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->f:Z

    .line 690
    return-void
.end method
