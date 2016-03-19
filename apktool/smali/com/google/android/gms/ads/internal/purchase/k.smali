.class public final Lcom/google/android/gms/ads/internal/purchase/k;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v0, 0x0

    .line 0
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->o()Lcom/google/android/gms/ads/internal/purchase/i;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/purchase/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->o()Lcom/google/android/gms/ads/internal/purchase/i;

    .line 1000
    if-nez p2, :cond_2

    const/4 v1, 0x0

    .line 0
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->o()Lcom/google/android/gms/ads/internal/purchase/i;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/purchase/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2000
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 1000
    :cond_2
    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 0
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/k;->a:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/k;->a:Ljava/lang/String;

    .line 3000
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string v1, "Purchase verification failed: missing data."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    move v1, v0

    .line 0
    :goto_2
    if-nez v1, :cond_6

    .line 4000
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 3000
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/purchase/l;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/ads/internal/purchase/l;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 0
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method
