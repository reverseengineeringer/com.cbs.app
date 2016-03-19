.class final Lcom/google/android/gms/internal/iz$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/b$b;
.implements Lcom/google/android/gms/common/api/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/iz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/iz;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iz$g;-><init>(Lcom/google/android/gms/internal/iz;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->e(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/internal/kz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/iz$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/iz$b;-><init>(Lcom/google/android/gms/internal/iz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kz;->a(Lcom/google/android/gms/common/internal/w;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/internal/iz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->h(Lcom/google/android/gms/internal/iz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->i(Lcom/google/android/gms/internal/iz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/internal/iz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iz$g;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v1}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/internal/iz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
