.class public final Lcom/google/ads/interactivemedia/v3/impl/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/c$b;


# instance fields
.field private final a:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private c:Ljava/lang/String;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/aa;Ljava/util/SortedSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/impl/aa;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->d:F

    .line 22
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 23
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->c:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->a:Ljava/util/SortedSet;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/b/a/e;)V
    .locals 5

    .prologue
    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->a()F

    move-result v0

    .line 1042
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->d:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 1043
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->a:Ljava/util/SortedSet;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 33
    :goto_1
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 34
    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/a/e;->a()F

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->d:F

    .line 35
    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/z$b;->d:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$c;->l:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    goto :goto_0

    .line 1045
    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->a:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/v;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_1

    .line 33
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
