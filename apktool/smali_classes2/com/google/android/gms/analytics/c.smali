.class public Lcom/google/android/gms/analytics/c;
.super Lcom/google/android/gms/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/b/d",
        "<",
        "Lcom/google/android/gms/analytics/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/analytics/internal/q;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/q;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/q;->g()Lcom/google/android/gms/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/q;->c()Lcom/google/android/gms/internal/ju;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/b/d;-><init>(Lcom/google/android/gms/b/e;Lcom/google/android/gms/internal/ju;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/internal/q;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/b/b;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ii;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/b;->b(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/internal/q;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/q;->o()Lcom/google/android/gms/analytics/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ii;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/c;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/internal/q;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/q;->n()Lcom/google/android/gms/analytics/internal/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ii;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ii;->a(Z)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/analytics/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/f;

    invoke-interface {v0}, Lcom/google/android/gms/b/f;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 0
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->i()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/d;

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/internal/q;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/d;-><init>(Lcom/google/android/gms/analytics/internal/q;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/c;->c:Z

    return-void
.end method

.method final f()Lcom/google/android/gms/analytics/internal/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/internal/q;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/b/b;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->h()Lcom/google/android/gms/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/b;->a()Lcom/google/android/gms/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/internal/q;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/q;->p()Lcom/google/android/gms/analytics/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/v;->b()Lcom/google/android/gms/internal/ki;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/c;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/internal/q;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/q;->q()Lcom/google/android/gms/analytics/internal/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/af;->b()Lcom/google/android/gms/internal/kk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->j()V

    return-object v0
.end method
