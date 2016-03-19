.class public final Lcom/google/ads/interactivemedia/v3/impl/w;
.super Lcom/google/ads/interactivemedia/v3/impl/c;
.source "SourceFile"


# instance fields
.field protected final c:Lcom/google/ads/interactivemedia/v3/b/a/b;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/a/b;J)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(J)V

    .line 18
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/w;->c:Lcom/google/ads/interactivemedia/v3/b/a/b;

    .line 19
    return-void
.end method


# virtual methods
.method public final c()Lcom/google/ads/interactivemedia/v3/b/a/e;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/w;->c:Lcom/google/ads/interactivemedia/v3/b/a/b;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a/b;->getContentProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 27
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->a:Lcom/google/ads/interactivemedia/v3/b/a/e;

    .line 29
    :cond_0
    return-object v0
.end method
