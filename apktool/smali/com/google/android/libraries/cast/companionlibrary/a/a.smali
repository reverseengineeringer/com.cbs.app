.class public abstract Lcom/google/android/libraries/cast/companionlibrary/a/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a:I

    .line 50
    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->b:I

    .line 51
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;-><init>()V

    .line 58
    return-void
.end method

.method private varargs a([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    array-length v0, p1

    if-ne v0, v3, :cond_0

    aget-object v0, p1, v2

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 92
    :cond_1
    :goto_0
    return-object v0

    .line 69
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 78
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 79
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 81
    :try_start_3
    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->b:I

    if-lez v2, :cond_3

    .line 1114
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1115
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1118
    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a:I

    sub-int v2, v3, v2

    .line 1119
    iget v5, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->b:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sub-int v5, v4, v5

    .line 1121
    if-nez v2, :cond_4

    if-nez v5, :cond_4

    .line 87
    :cond_3
    :goto_1
    if-eqz v0, :cond_8

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1126
    :cond_4
    if-gtz v2, :cond_5

    if-lez v5, :cond_6

    .line 1128
    :cond_5
    :try_start_4
    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a:I

    int-to-float v2, v2

    int-to-float v5, v3

    div-float/2addr v2, v5

    .line 1129
    iget v5, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->b:I

    int-to-float v5, v5

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 1130
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1138
    :goto_2
    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v7

    float-to-int v3, v3

    .line 1139
    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v7

    float-to-int v2, v2

    .line 1141
    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 1133
    :cond_6
    int-to-float v2, v3

    iget v5, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 1134
    int-to-float v5, v4

    iget v6, p0, Lcom/google/android/libraries/cast/companionlibrary/a/a;->b:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1135
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    goto :goto_2

    .line 87
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 87
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_7

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    .line 87
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 101
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Landroid/net/Uri;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    new-array v0, v3, [Landroid/net/Uri;

    aput-object p1, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    check-cast p1, [Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
