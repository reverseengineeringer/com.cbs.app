.class public final Lcom/google/ads/interactivemedia/v3/impl/k;
.super Lcom/google/ads/interactivemedia/v3/impl/c;
.source "SourceFile"


# instance fields
.field protected final c:Lcom/google/ads/interactivemedia/v3/b/a/a;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/a/a;J)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(J)V

    .line 14
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->c:Lcom/google/ads/interactivemedia/v3/b/a/a;

    .line 15
    return-void
.end method


# virtual methods
.method public final c()Lcom/google/ads/interactivemedia/v3/b/a/e;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->c:Lcom/google/ads/interactivemedia/v3/b/a/a;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/a;->getAdProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;

    move-result-object v0

    return-object v0
.end method
