.class public interface abstract Lcom/google/ads/interactivemedia/v3/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/b/o;

.field public static final b:Lcom/google/ads/interactivemedia/v3/b/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/c/m;

    const-string v1, "adAttribution"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/c/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Lcom/google/ads/interactivemedia/v3/b/o;

    .line 21
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/c/m;

    const-string v1, "countdown"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/c/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/o;->b:Lcom/google/ads/interactivemedia/v3/b/o;

    return-void
.end method
