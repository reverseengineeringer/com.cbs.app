.class final Lcom/google/ads/interactivemedia/v3/impl/u$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/impl/u;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/u;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/u$1;->b:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/u$1;->a:Ljava/lang/Exception;

    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/u$1;->b:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/u;->a(Lcom/google/ads/interactivemedia/v3/impl/u;)Lcom/google/ads/interactivemedia/v3/impl/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/c/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/u;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/u$1;->a:Ljava/lang/Exception;

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/u$1;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 53
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1069
    if-nez p1, :cond_0

    .line 1070
    const-string v0, "IMASDK"

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/u$1;->b:Lcom/google/ads/interactivemedia/v3/impl/u;

    .line 1071
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/u;->a(Lcom/google/ads/interactivemedia/v3/impl/u;)Lcom/google/ads/interactivemedia/v3/impl/c/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/c/j;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/u$1;->a:Ljava/lang/Exception;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Loading image companion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1070
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/u$1;->b:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/u;->b(Lcom/google/ads/interactivemedia/v3/impl/u;)V

    .line 1075
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/u$1;->b:Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/u;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
