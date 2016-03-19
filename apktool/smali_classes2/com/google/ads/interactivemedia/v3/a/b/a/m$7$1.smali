.class final Lcom/google/ads/interactivemedia/v3/a/b/a/m$7$1;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a/m$7;->a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/a/w",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/w;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/a/b/a/m$7;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/a/m$7;Lcom/google/ads/interactivemedia/v3/a/w;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/m$7$1;->b:Lcom/google/ads/interactivemedia/v3/a/b/a/m$7;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/m$7$1;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 524
    .line 1526
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/m$7$1;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1527
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 524
    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 524
    check-cast p2, Ljava/sql/Timestamp;

    .line 1531
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/m$7$1;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    .line 524
    return-void
.end method
