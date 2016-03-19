.class final Lcom/google/ads/interactivemedia/v3/a/b/a/m$30;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/a/w",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->i:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-ne v0, v1, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->j()V

    .line 388
    const/4 v0, 0x0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 384
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/m$30;->b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 384
    check-cast p2, Ljava/math/BigInteger;

    .line 1398
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 384
    return-void
.end method
