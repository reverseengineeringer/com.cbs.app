.class final Lcom/google/android/gms/ads/internal/k$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/k$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic b:Lcom/google/android/gms/ads/internal/k$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/k$b;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k$b$1;->b:Lcom/google/android/gms/ads/internal/k$b;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k$b$1;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->c()Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k$b$1;->b:Lcom/google/android/gms/ads/internal/k$b;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$b$1;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 1000
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/d;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 0
    return-void
.end method
