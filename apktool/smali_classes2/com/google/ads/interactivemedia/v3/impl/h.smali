.class public final Lcom/google/ads/interactivemedia/v3/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/d;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/c;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/c;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->a:Lcom/google/ads/interactivemedia/v3/b/c;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->a:Lcom/google/ads/interactivemedia/v3/b/c;

    .line 25
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->b:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/b/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/h;->a:Lcom/google/ads/interactivemedia/v3/b/c;

    return-object v0
.end method
