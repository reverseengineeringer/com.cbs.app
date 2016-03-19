.class public abstract Lcom/google/ads/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/b/c;
.implements Lcom/google/android/gms/ads/b/e;
.implements Lcom/google/android/gms/ads/b/g;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/a/a$b;,
        Lcom/google/ads/a/a$a;,
        Lcom/google/ads/a/a$e;,
        Lcom/google/ads/a/a$d;,
        Lcom/google/ads/a/a$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/ads/AdView;

.field protected b:Lcom/google/android/gms/ads/e;

.field private c:Lcom/google/android/gms/ads/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;
    .locals 4

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/ads/b/a;->a()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(Ljava/util/Date;)Lcom/google/android/gms/ads/c$a;

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/ads/b/a;->b()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(I)Lcom/google/android/gms/ads/c$a;

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/ads/b/a;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/ads/b/a;->d()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(Landroid/location/Location;)Lcom/google/android/gms/ads/c$a;

    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/ads/b/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;

    :cond_4
    invoke-interface {p2}, Lcom/google/android/gms/ads/b/a;->e()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    invoke-interface {p2}, Lcom/google/android/gms/ads/b/a;->e()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(Z)Lcom/google/android/gms/ads/c$a;

    :cond_5
    invoke-virtual {p0, p3, p4}, Lcom/google/ads/a/a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/ads/a/a/a;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/c$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    iput-object v1, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/a/a;->b:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/ads/a/a;->b:Lcom/google/android/gms/ads/e;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/a/a;->c:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/google/ads/a/a;->c:Lcom/google/android/gms/ads/b;

    :cond_2
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/ads/b/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/d;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/d;->b()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/android/gms/ads/d;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/d;)V

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, p3}, Lcom/google/ads/a/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/ads/a/a$c;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/a/a$c;-><init>(Lcom/google/ads/a/a;Lcom/google/android/gms/ads/b/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0, p1, p5, p6, p3}, Lcom/google/ads/a/a;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/ads/b/f;Landroid/os/Bundle;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/a/a;->b:Lcom/google/android/gms/ads/e;

    iget-object v0, p0, Lcom/google/ads/a/a;->b:Lcom/google/android/gms/ads/e;

    invoke-virtual {p0, p3}, Lcom/google/ads/a/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/a;->b:Lcom/google/android/gms/ads/e;

    new-instance v1, Lcom/google/ads/a/a$d;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/a/a$d;-><init>(Lcom/google/ads/a/a;Lcom/google/android/gms/ads/b/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/ads/a/a;->b:Lcom/google/android/gms/ads/e;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/a/a;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/ads/b/h;Landroid/os/Bundle;Lcom/google/android/gms/ads/b/l;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 0
    new-instance v0, Lcom/google/ads/a/a$e;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/a/a$e;-><init>(Lcom/google/ads/a/a;Lcom/google/android/gms/ads/b/h;)V

    const-string v1, "pubid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    new-instance v2, Lcom/google/android/gms/ads/b$a;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/ads/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/a;)Lcom/google/android/gms/ads/b$a;

    move-result-object v1

    invoke-interface {p4}, Lcom/google/android/gms/ads/b/l;->g()Lcom/google/android/gms/ads/formats/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/formats/b;)Lcom/google/android/gms/ads/b$a;

    :cond_0
    invoke-interface {p4}, Lcom/google/android/gms/ads/b/l;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/formats/c$a;)Lcom/google/android/gms/ads/b$a;

    :cond_1
    invoke-interface {p4}, Lcom/google/android/gms/ads/b/l;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/formats/d$a;)Lcom/google/android/gms/ads/b$a;

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/b$a;->a()Lcom/google/android/gms/ads/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/a;->c:Lcom/google/android/gms/ads/b;

    iget-object v0, p0, Lcom/google/ads/a/a;->c:Lcom/google/android/gms/ads/b;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/a/a;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->c()V

    :cond_0
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->b:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->a()V

    return-void
.end method
