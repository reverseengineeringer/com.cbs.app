.class public final Lcom/google/android/gms/internal/jg;
.super Lcom/google/android/gms/common/api/l;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/e;",
        ">",
        "Lcom/google/android/gms/common/api/l",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/f",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/i",
            "<-TR;+",
            "Lcom/google/android/gms/common/api/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jg",
            "<+",
            "Lcom/google/android/gms/common/api/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/g",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;


# direct methods
.method private a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/common/api/i;

    if-eqz v0, :cond_0

    const-string v0, "onFailure must not return null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->b:Lcom/google/android/gms/internal/jg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Lcom/google/android/gms/common/api/e;)V
    .locals 3

    instance-of v1, p0, Lcom/google/android/gms/common/api/d;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/d;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/d;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to release "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/e;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/common/api/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/common/api/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/i;->a()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    const-string v3, "Transform returned null"

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/jg;->b(Lcom/google/android/gms/common/api/e;)V

    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/jg;->b:Lcom/google/android/gms/internal/jg;

    .line 1000
    iget-object v3, v2, Lcom/google/android/gms/internal/jg;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v0, v2, Lcom/google/android/gms/internal/jg;->d:Lcom/google/android/gms/common/api/c;

    .line 2000
    iget-object v0, v2, Lcom/google/android/gms/internal/jg;->d:Lcom/google/android/gms/common/api/c;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/common/api/i;

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/internal/jg;->c:Lcom/google/android/gms/common/api/g;

    if-nez v0, :cond_3

    .line 1000
    :cond_2
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 0
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2000
    :cond_3
    :try_start_3
    iget-object v0, v2, Lcom/google/android/gms/internal/jg;->d:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 0
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->c:Lcom/google/android/gms/common/api/g;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/common/api/e;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/jg;->b(Lcom/google/android/gms/common/api/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method
