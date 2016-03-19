.class final Lcom/google/android/gms/internal/cx$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cx;->a()Lcom/google/android/gms/internal/cx$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hl$c",
        "<",
        "Lcom/google/android/gms/internal/aa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cx$e;

.field final synthetic b:Lcom/google/android/gms/internal/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cx$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx$2;->b:Lcom/google/android/gms/internal/cx;

    iput-object p2, p0, Lcom/google/android/gms/internal/cx$2;->a:Lcom/google/android/gms/internal/cx$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$2;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->c(Lcom/google/android/gms/internal/cx;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$2;->b:Lcom/google/android/gms/internal/cx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cx;->a(Lcom/google/android/gms/internal/cx;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$2;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->g(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cx$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$2;->a:Lcom/google/android/gms/internal/cx$e;

    iget-object v2, p0, Lcom/google/android/gms/internal/cx$2;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v2}, Lcom/google/android/gms/internal/cx;->g(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cx$e;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$2;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->g(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/cx$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$e;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$2;->b:Lcom/google/android/gms/internal/cx;

    iget-object v2, p0, Lcom/google/android/gms/internal/cx$2;->a:Lcom/google/android/gms/internal/cx$e;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cx;->a(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cx$e;)Lcom/google/android/gms/internal/cx$e;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
