.class final Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->a(Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;

.field final synthetic b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;


# direct methods
.method constructor <init>(Lcom/cbs/app/inappbilling/IABUtils/IabHelper;Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    iput-object p2, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->a:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 208
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    iget-boolean v0, v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->d:Z

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 211
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    iget-object v0, v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    iget-object v1, v1, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 217
    if-eqz v1, :cond_4

    .line 218
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->a:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->a:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;)V

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->e:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->a:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;

    if-eqz v1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->a:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;)V

    .line 242
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 228
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    iget-object v1, v1, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 229
    if-nez v0, :cond_5

    .line 231
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->e:Z

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->c:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->a:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->a:Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lcom/cbs/app/inappbilling/IABUtils/IabResult;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lcom/cbs/app/inappbilling/IABUtils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$OnIabSetupFinishedListener;->a(Lcom/cbs/app/inappbilling/IABUtils/IabResult;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper$1;->b:Lcom/cbs/app/inappbilling/IABUtils/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cbs/app/inappbilling/IABUtils/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 204
    return-void
.end method
