.class final Lcom/google/android/gms/ads/internal/purchase/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/purchase/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/purchase/f;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/google/android/gms/ads/internal/purchase/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/purchase/c;Lcom/google/android/gms/ads/internal/purchase/f;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->c:Lcom/google/android/gms/ads/internal/purchase/c;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->a:Lcom/google/android/gms/ads/internal/purchase/f;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->c:Lcom/google/android/gms/ads/internal/purchase/c;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/c;->a(Lcom/google/android/gms/ads/internal/purchase/c;)Lcom/google/android/gms/ads/internal/purchase/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->a:Lcom/google/android/gms/ads/internal/purchase/f;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/purchase/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/k;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->c:Lcom/google/android/gms/ads/internal/purchase/c;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/c;->c(Lcom/google/android/gms/ads/internal/purchase/c;)Lcom/google/android/gms/internal/ew;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->c:Lcom/google/android/gms/ads/internal/purchase/c;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/purchase/c;->b(Lcom/google/android/gms/ads/internal/purchase/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->a:Lcom/google/android/gms/ads/internal/purchase/f;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/purchase/f;->c:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->b:Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->a:Lcom/google/android/gms/ads/internal/purchase/f;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/ew;->a(Lcom/google/android/gms/internal/ev;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->c:Lcom/google/android/gms/ads/internal/purchase/c;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/c;->c(Lcom/google/android/gms/ads/internal/purchase/c;)Lcom/google/android/gms/internal/ew;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->c:Lcom/google/android/gms/ads/internal/purchase/c;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/purchase/c;->b(Lcom/google/android/gms/ads/internal/purchase/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->a:Lcom/google/android/gms/ads/internal/purchase/f;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/purchase/f;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->b:Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/purchase/c$1;->a:Lcom/google/android/gms/ads/internal/purchase/f;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/ew;->a(Lcom/google/android/gms/internal/ev;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method
