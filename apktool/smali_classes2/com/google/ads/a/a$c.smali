.class final Lcom/google/ads/a/a$c;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/google/ads/a/a;

.field final b:Lcom/google/android/gms/ads/b/d;


# direct methods
.method public constructor <init>(Lcom/google/ads/a/a;Lcom/google/android/gms/ads/b/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/a$c;->a:Lcom/google/ads/a/a;

    iput-object p2, p0, Lcom/google/ads/a/a$c;->b:Lcom/google/android/gms/ads/b/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$c;->b:Lcom/google/android/gms/ads/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$c;->b:Lcom/google/android/gms/ads/b/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/b/d;->a(I)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$c;->b:Lcom/google/android/gms/ads/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$c;->b:Lcom/google/android/gms/ads/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$c;->b:Lcom/google/android/gms/ads/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a$c;->b:Lcom/google/android/gms/ads/b/d;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->e()V

    return-void
.end method
