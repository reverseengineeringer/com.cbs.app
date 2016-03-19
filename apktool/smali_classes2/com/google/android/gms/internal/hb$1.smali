.class final Lcom/google/android/gms/internal/hb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hb$1;->a:Lcom/google/android/gms/internal/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$1;->a:Lcom/google/android/gms/internal/hb;

    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1000
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$1;->a:Lcom/google/android/gms/internal/hb;

    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->b(Lcom/google/android/gms/internal/hb;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$1;->a:Lcom/google/android/gms/internal/hb;

    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 2000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3000
    :catch_0
    move-exception v0

    const/4 v0, 0x2

    :try_start_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
