.class public final Lcom/google/android/gms/ads/internal/overlay/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/overlay/j;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 0
    if-nez p1, :cond_0

    .line 1000
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_0
    return v1

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2000
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->f:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-ge v4, v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse component name from open GMSG: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    aget-object v4, v0, v1

    aget-object v0, v0, v2

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Launching an intent: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/overlay/j;->m()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    move v1, v2

    goto/16 :goto_0

    .line 4000
    :catch_0
    move-exception v0

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    move v0, v1

    goto :goto_2

    .line 0
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    .line 6000
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_0
.end method
