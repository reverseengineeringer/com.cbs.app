.class public final Lcom/google/android/gms/ads/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/client/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/ads/internal/client/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/ads/internal/client/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/b;->b()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/ads/internal/client/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/b;->a(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/ads/internal/client/b;

    check-cast p1, Lcom/google/android/gms/ads/internal/client/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/b;->a(Lcom/google/android/gms/ads/internal/client/a;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/ads/internal/client/b;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/ads/internal/client/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/b;->a(Lcom/google/android/gms/ads/internal/client/z;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/ads/internal/client/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/b;->a(Ljava/lang/String;)V

    return-void
.end method
