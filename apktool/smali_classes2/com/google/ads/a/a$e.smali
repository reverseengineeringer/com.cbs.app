.class final Lcom/google/ads/a/a$e;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/google/android/gms/ads/formats/c$a;
.implements Lcom/google/android/gms/ads/formats/d$a;
.implements Lcom/google/android/gms/ads/internal/client/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/google/ads/a/a;

.field final b:Lcom/google/android/gms/ads/b/h;


# direct methods
.method public constructor <init>(Lcom/google/ads/a/a;Lcom/google/android/gms/ads/b/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/a$e;->a:Lcom/google/ads/a/a;

    iput-object p2, p0, Lcom/google/ads/a/a$e;->b:Lcom/google/android/gms/ads/b/h;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$e;->b:Lcom/google/android/gms/ads/b/h;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/b/h;->c(I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/formats/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/a$e;->b:Lcom/google/android/gms/ads/b/h;

    new-instance v1, Lcom/google/ads/a/a$a;

    invoke-direct {v1, p1}, Lcom/google/ads/a/a$a;-><init>(Lcom/google/android/gms/ads/formats/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/h;->a(Lcom/google/android/gms/ads/b/i;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/formats/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/a$e;->b:Lcom/google/android/gms/ads/b/h;

    new-instance v1, Lcom/google/ads/a/a$b;

    invoke-direct {v1, p1}, Lcom/google/ads/a/a$b;-><init>(Lcom/google/android/gms/ads/formats/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/h;->a(Lcom/google/android/gms/ads/b/i;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$e;->b:Lcom/google/android/gms/ads/b/h;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/h;->k()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$e;->b:Lcom/google/android/gms/ads/b/h;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/h;->l()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$e;->b:Lcom/google/android/gms/ads/b/h;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/h;->m()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$e;->b:Lcom/google/android/gms/ads/b/h;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/h;->n()V

    return-void
.end method
