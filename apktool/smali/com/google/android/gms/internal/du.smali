.class public final Lcom/google/android/gms/internal/du;
.super Lcom/google/android/gms/internal/dp$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dp$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/a/c;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/a$a;

    new-instance v3, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$a;->b()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/a$a;->c()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/ads/internal/formats/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/a/c;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/b/j;->a(Landroid/view/View;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/bm;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->i()Lcom/google/android/gms/ads/formats/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/a$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/a$a;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/a$a;->c()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/formats/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->k()D

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->c()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->d()Z

    move-result v0

    return v0
.end method

.method public final l()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/du;->a:Lcom/google/android/gms/ads/b/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/j;->e()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
