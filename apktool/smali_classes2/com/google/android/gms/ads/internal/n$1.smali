.class final Lcom/google/android/gms/ads/internal/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/n;-><init>(Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/ads/internal/n$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/google/android/gms/ads/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/n;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/n$1;->b:Lcom/google/android/gms/ads/internal/n;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/n$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n$1;->b:Lcom/google/android/gms/ads/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/ads/internal/n;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/n$1;->b:Lcom/google/android/gms/ads/internal/n;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/n;->b(Lcom/google/android/gms/ads/internal/n;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->c(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    :cond_0
    return-void
.end method
