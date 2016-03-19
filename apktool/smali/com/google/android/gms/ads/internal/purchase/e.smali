.class public final Lcom/google/android/gms/ads/internal/purchase/e;
.super Lcom/google/android/gms/internal/et$a;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/ads/internal/purchase/h;

.field private final b:Landroid/app/Activity;

.field private c:Landroid/content/Context;

.field private d:Lcom/google/android/gms/internal/er;

.field private e:Lcom/google/android/gms/ads/internal/purchase/b;

.field private f:Lcom/google/android/gms/ads/internal/purchase/f;

.field private g:Lcom/google/android/gms/ads/internal/purchase/j;

.field private h:Lcom/google/android/gms/ads/internal/purchase/k;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/h;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/purchase/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->a:Lcom/google/android/gms/ads/internal/purchase/h;

    return-void
.end method

.method private a(Ljava/lang/String;ZILandroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->g:Lcom/google/android/gms/ads/internal/purchase/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->g:Lcom/google/android/gms/ads/internal/purchase/j;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/purchase/e;->f:Lcom/google/android/gms/ads/internal/purchase/f;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/purchase/j;->a(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->a(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->e:Lcom/google/android/gms/ads/internal/purchase/j;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->g:Lcom/google/android/gms/ads/internal/purchase/j;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->b:Lcom/google/android/gms/ads/internal/purchase/k;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->h:Lcom/google/android/gms/ads/internal/purchase/k;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->c:Lcom/google/android/gms/internal/er;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->d:Lcom/google/android/gms/internal/er;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/b;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/purchase/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->e:Lcom/google/android/gms/ads/internal/purchase/b;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gx;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gx;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->o()Lcom/google/android/gms/ads/internal/purchase/i;

    invoke-static {p3}, Lcom/google/android/gms/ads/internal/purchase/i;->a(Landroid/content/Intent;)I

    move-result v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->o()Lcom/google/android/gms/ads/internal/purchase/i;

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/e;->h:Lcom/google/android/gms/ads/internal/purchase/k;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/e;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Lcom/google/android/gms/ads/internal/purchase/k;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/e;->d:Lcom/google/android/gms/internal/er;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/er;->b(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->d:Lcom/google/android/gms/internal/er;

    invoke-interface {v1}, Lcom/google/android/gms/internal/er;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/google/android/gms/ads/internal/purchase/e;->a(Ljava/lang/String;ZILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/e;->i:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/e;->a:Lcom/google/android/gms/ads/internal/purchase/h;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/e;->f:Lcom/google/android/gms/ads/internal/purchase/f;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/purchase/h;->a(Lcom/google/android/gms/ads/internal/purchase/f;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    :try_start_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/e;->i:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/e;->i:Ljava/lang/String;

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->e:Lcom/google/android/gms/ads/internal/purchase/b;

    .line 1000
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/purchase/b;->a:Ljava/lang/Object;

    .line 0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->e:Lcom/google/android/gms/ads/internal/purchase/b;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/b;->a(Landroid/os/IBinder;)V

    .line 5000
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    invoke-static {}, Lcom/google/android/gms/internal/gw;->b()Ljava/lang/String;

    move-result-object v1

    .line 0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->e:Lcom/google/android/gms/ads/internal/purchase/b;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/e;->d:Lcom/google/android/gms/internal/er;

    invoke-interface {v3}, Lcom/google/android/gms/internal/er;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v1, "BUY_INTENT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->o()Lcom/google/android/gms/ads/internal/purchase/i;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/purchase/i;->a(Landroid/os/Bundle;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/e;->d:Lcom/google/android/gms/internal/er;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/er;->b(I)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/e;->d:Lcom/google/android/gms/internal/er;

    invoke-interface {v2}, Lcom/google/android/gms/internal/er;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/android/gms/ads/internal/purchase/e;->a(Ljava/lang/String;ZILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/f;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/e;->d:Lcom/google/android/gms/internal/er;

    invoke-interface {v3}, Lcom/google/android/gms/internal/er;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/purchase/e;->i:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->f:Lcom/google/android/gms/ads/internal/purchase/f;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->a:Lcom/google/android/gms/ads/internal/purchase/h;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/e;->f:Lcom/google/android/gms/ads/internal/purchase/f;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/purchase/h;->b(Lcom/google/android/gms/ads/internal/purchase/f;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x3e9

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 6000
    :catch_0
    move-exception v1

    :goto_1
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/e;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 6000
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 3000
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/e;->e:Lcom/google/android/gms/ads/internal/purchase/b;

    .line 4000
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/purchase/b;->a:Ljava/lang/Object;

    .line 0
    return-void
.end method
