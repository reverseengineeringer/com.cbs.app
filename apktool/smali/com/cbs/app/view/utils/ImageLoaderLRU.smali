.class public Lcom/cbs/app/view/utils/ImageLoaderLRU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/cbs/app/view/utils/ImageLoaderLRU;->a:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 41
    div-int/lit8 v0, v0, 0x6

    .line 42
    new-instance v1, Lcom/cbs/app/view/utils/ImageLoaderLRU$1;

    invoke-direct {v1, p0, v0}, Lcom/cbs/app/view/utils/ImageLoaderLRU$1;-><init>(Lcom/cbs/app/view/utils/ImageLoaderLRU;I)V

    sput-object v1, Lcom/cbs/app/view/utils/ImageLoaderLRU;->a:Landroid/util/LruCache;

    .line 52
    :cond_0
    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .prologue
    .line 251
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 252
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 253
    const/4 v0, 0x1

    .line 255
    if-gt v1, p2, :cond_0

    if-le v2, p1, :cond_1

    .line 257
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 258
    div-int/lit8 v2, v2, 0x2

    .line 264
    :goto_0
    div-int v3, v1, v0

    if-le v3, p2, :cond_1

    div-int v3, v2, v0

    if-le v3, p1, :cond_1

    .line 265
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 269
    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/cbs/app/view/utils/ImageLoaderLRU;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    invoke-static {p1, p2, p3}, Lcom/cbs/app/view/utils/ImageLoaderLRU;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 292
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 293
    const/16 v0, 0x64

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 294
    const/16 v0, 0xb4

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1318
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1320
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1322
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_5

    .line 1323
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 298
    :goto_0
    if-eqz v2, :cond_1

    .line 299
    :try_start_1
    invoke-static {v3, p1, p2}, Lcom/cbs/app/view/utils/ImageLoaderLRU;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 301
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 307
    if-eqz v2, :cond_0

    .line 308
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    :cond_0
    :goto_1
    return-object v0

    .line 307
    :cond_1
    if-eqz v2, :cond_2

    .line 308
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    move-object v0, v1

    .line 310
    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 307
    :goto_3
    if-eqz v0, :cond_3

    .line 308
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_4
    move-object v0, v1

    .line 310
    goto :goto_1

    .line 306
    :catchall_0
    move-exception v0

    .line 307
    :goto_5
    if-eqz v1, :cond_4

    .line 308
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 310
    :cond_4
    :goto_6
    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    .line 311
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_6

    .line 306
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto :goto_0
.end method

.method static synthetic a()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/cbs/app/view/utils/ImageLoaderLRU;->a:Landroid/util/LruCache;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/ThumbNailView;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 176
    sget-object v0, Lcom/cbs/app/view/utils/ImageLoaderLRU;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1, v0}, Lcom/cbs/app/view/ThumbNailView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1, p2}, Lcom/cbs/app/view/ThumbNailView;->setUrl(Ljava/lang/String;)V

    .line 183
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 184
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;-><init>(Lcom/cbs/app/view/utils/ImageLoaderLRU;Ljava/lang/String;ILandroid/os/Handler;Lcom/cbs/app/view/ThumbNailView;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
