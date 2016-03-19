.class public final Lcom/google/ads/interactivemedia/v3/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/ads/interactivemedia/v3/b/m;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/n;)Lcom/google/ads/interactivemedia/v3/b/g;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/l;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y;->b:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/l;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/b/n;)V

    return-object v0
.end method

.method public static a()Lcom/google/ads/interactivemedia/v3/b/m;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/m;->a:Lcom/google/ads/interactivemedia/v3/b/m;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/m;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/m;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/m;->a:Lcom/google/ads/interactivemedia/v3/b/m;

    .line 30
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/m;->a:Lcom/google/ads/interactivemedia/v3/b/m;

    return-object v0
.end method

.method public static b()Lcom/google/ads/interactivemedia/v3/b/b;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;-><init>()V

    return-object v0
.end method

.method public static c()Lcom/google/ads/interactivemedia/v3/b/j;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/q;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/q;-><init>()V

    return-object v0
.end method

.method public static d()Lcom/google/ads/interactivemedia/v3/b/k;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/r;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/r;-><init>()V

    return-object v0
.end method
