.class final Lcom/google/android/gms/internal/dj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dj;->a(Ljava/util/List;)Lcom/google/android/gms/internal/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dh;

.field final synthetic b:Lcom/google/android/gms/internal/dj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dj;Lcom/google/android/gms/internal/dh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dj$1;->b:Lcom/google/android/gms/internal/dj;

    iput-object p2, p0, Lcom/google/android/gms/internal/dj$1;->a:Lcom/google/android/gms/internal/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dj$1;->a:Lcom/google/android/gms/internal/dh;

    iget-object v0, v0, Lcom/google/android/gms/internal/dh;->c:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method
