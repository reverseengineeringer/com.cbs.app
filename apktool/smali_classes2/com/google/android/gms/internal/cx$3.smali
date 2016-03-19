.class final Lcom/google/android/gms/internal/cx$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cx;->a()Lcom/google/android/gms/internal/cx$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cx$e;

.field final synthetic b:Lcom/google/android/gms/internal/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cx$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx$3;->b:Lcom/google/android/gms/internal/cx;

    iput-object p2, p0, Lcom/google/android/gms/internal/cx$3;->a:Lcom/google/android/gms/internal/cx$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$3;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->c(Lcom/google/android/gms/internal/cx;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$3;->b:Lcom/google/android/gms/internal/cx;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cx;->a(Lcom/google/android/gms/internal/cx;I)I

    .line 1000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$3;->a:Lcom/google/android/gms/internal/cx$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$e;->c()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
