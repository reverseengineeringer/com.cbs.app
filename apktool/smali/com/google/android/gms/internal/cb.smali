.class public final Lcom/google/android/gms/internal/cb;
.super Lcom/google/android/gms/internal/bv$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bv$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/ads/formats/c$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bq;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/ads/formats/c$a;

    .line 1000
    new-instance v1, Lcom/google/android/gms/internal/br;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/bq;)V

    .line 0
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/c$a;->a(Lcom/google/android/gms/ads/formats/c;)V

    return-void
.end method
