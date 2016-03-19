.class final Lcom/google/android/gms/ads/internal/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/i;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final synthetic b:Lcom/google/android/gms/ads/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/i$1;->a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/i;->a(Lcom/google/android/gms/ads/internal/i;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/i;->c()Lcom/google/android/gms/ads/internal/m;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/i;->a(Lcom/google/android/gms/ads/internal/i;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/i;->b(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/bv;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/bv;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/i;->c(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/bw;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/bw;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/i;->d(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/jp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/jp;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/i;->e(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/ads/internal/client/q;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/ads/internal/client/q;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/i;->f(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/jp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/m;->b(Lcom/google/android/gms/internal/jp;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/i;->g(Lcom/google/android/gms/ads/internal/i;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/m;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i$1;->b:Lcom/google/android/gms/ads/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/i;->h(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i$1;->a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
