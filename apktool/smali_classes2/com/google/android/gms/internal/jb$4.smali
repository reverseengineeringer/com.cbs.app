.class final Lcom/google/android/gms/internal/jb$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/common/api/a;I)Lcom/google/android/gms/common/api/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/a;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/internal/jb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/common/api/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jb$4;->c:Lcom/google/android/gms/internal/jb;

    iput-object p2, p0, Lcom/google/android/gms/internal/jb$4;->a:Lcom/google/android/gms/common/api/a;

    iput p3, p0, Lcom/google/android/gms/internal/jb$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jb$4;->c:Lcom/google/android/gms/internal/jb;

    invoke-static {v0}, Lcom/google/android/gms/internal/jb;->b(Lcom/google/android/gms/internal/jb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jb$4;->c:Lcom/google/android/gms/internal/jb;

    invoke-static {v0}, Lcom/google/android/gms/internal/jb;->c(Lcom/google/android/gms/internal/jb;)Lcom/google/android/gms/internal/jc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb$4;->a:Lcom/google/android/gms/common/api/a;

    iget v2, p0, Lcom/google/android/gms/internal/jb$4;->b:I

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/jc;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jb$4;->c:Lcom/google/android/gms/internal/jb;

    invoke-static {v0}, Lcom/google/android/gms/internal/jb;->b(Lcom/google/android/gms/internal/jb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jb$4;->c:Lcom/google/android/gms/internal/jb;

    invoke-static {v1}, Lcom/google/android/gms/internal/jb;->b(Lcom/google/android/gms/internal/jb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
