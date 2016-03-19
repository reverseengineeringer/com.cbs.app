.class public final Lcom/google/android/gms/internal/ja;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/jc;


# instance fields
.field private final a:Lcom/google/android/gms/internal/jb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/jb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "R::",
            "Lcom/google/android/gms/common/api/e;",
            "T:",
            "Lcom/google/android/gms/internal/iw$a",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/jb;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$c;->c()V

    goto :goto_0

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/jb;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/jb;->f:Ljava/util/Set;

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/iw$a",
            "<+",
            "Lcom/google/android/gms/common/api/e;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jb$f;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/jb$f;->a(Lcom/google/android/gms/internal/jb$e;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->g()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->g()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->h()V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "DISCONNECTED"

    return-object v0
.end method
