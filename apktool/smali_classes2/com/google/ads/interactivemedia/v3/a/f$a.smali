.class final Lcom/google/ads/interactivemedia/v3/a/f$a;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/a/w",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/d/a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    .line 903
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/a/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    if-eqz v0, :cond_0

    .line 886
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 888
    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 889
    return-void
.end method
