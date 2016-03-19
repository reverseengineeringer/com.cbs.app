.class public final Lcom/google/android/gms/internal/cc;
.super Lcom/google/android/gms/internal/bw$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/d$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/d$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cc;->a:Lcom/google/android/gms/ads/formats/d$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bs;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Lcom/google/android/gms/ads/formats/d$a;

    .line 1000
    new-instance v1, Lcom/google/android/gms/internal/bt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/bt;-><init>(Lcom/google/android/gms/internal/bs;)V

    .line 0
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/d$a;->a(Lcom/google/android/gms/ads/formats/d;)V

    return-void
.end method
