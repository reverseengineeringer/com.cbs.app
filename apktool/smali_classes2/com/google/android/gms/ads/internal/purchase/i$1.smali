.class final Lcom/google/android/gms/ads/internal/purchase/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/purchase/i;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/ads/internal/purchase/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/purchase/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/i$1;->b:Lcom/google/android/gms/ads/internal/purchase/i;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/i$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/b;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/i$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/internal/purchase/b;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/b;->a(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/i$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/purchase/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v3

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/gm;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/i$1;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1000
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/purchase/b;->a:Ljava/lang/Object;

    .line 0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method