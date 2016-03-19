.class final Lcom/google/ads/interactivemedia/v3/a/b/a/m$21;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->i:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->j()V

    .line 191
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->m()I

    move-result v0

    .line 195
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/m$21;->b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p2, Ljava/lang/Number;

    .line 1202
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 186
    return-void
.end method
