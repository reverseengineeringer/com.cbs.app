.class public Lcom/google/ads/interactivemedia/v3/impl/u;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/c/j;

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/c/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 36
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->a:Lcom/google/ads/interactivemedia/v3/impl/c/j;

    .line 37
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->c:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p0}, Lcom/google/ads/interactivemedia/v3/impl/u;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/u;)Lcom/google/ads/interactivemedia/v3/impl/c/j;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->a:Lcom/google/ads/interactivemedia/v3/impl/c/j;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/u;)V
    .locals 6

    .prologue
    .line 1081
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1082
    const-string v1, "companionId"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->a:Lcom/google/ads/interactivemedia/v3/impl/c/j;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/c/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$b;->e:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/z$c;->h:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/u;->a:Lcom/google/ads/interactivemedia/v3/impl/c/j;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/c/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->d(Ljava/lang/String;)V

    .line 90
    return-void
.end method
