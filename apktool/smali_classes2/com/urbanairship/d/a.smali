.class public final Lcom/urbanairship/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(IIII)I
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x1

    .line 110
    if-gt p1, p3, :cond_0

    if-le p0, p2, :cond_1

    .line 112
    :cond_0
    div-int/lit8 v1, p1, 0x2

    .line 113
    div-int/lit8 v2, p0, 0x2

    .line 118
    :goto_0
    div-int v3, v1, v0

    if-le v3, p3, :cond_1

    div-int v3, v2, v0

    if-le v3, p2, :cond_1

    .line 119
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 123
    :cond_1
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/net/URL;II)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BitmapUtils - Fetching image from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, "ua_"

    const-string v1, ".temp"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "BitmapUtils - Created temp file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {p1, v1}, Lcom/urbanairship/d/a;->a(Ljava/net/URL;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BitmapUtils - Failed to fetch image from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 76
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 77
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 79
    invoke-static {v3, v4, p2, p3}, Lcom/urbanairship/d/a;->a(IIII)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 80
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BitmapUtils - Deleted temp file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    :goto_1
    const-string v1, "BitmapUtils - Fetched image from: %s. Original image size: %dx%d. Requested image size: %dx%d. Bitmap size: %dx%d. SampleSize: %d"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x7

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BitmapUtils - Failed to delete temp file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static a(Ljava/net/URL;Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Downloading file from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 141
    const/16 v1, 0x7d0

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 143
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 145
    :try_start_1
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Lcom/urbanairship/d/f;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to download file from URL. Received response code: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 170
    if-eqz v6, :cond_0

    .line 171
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_0
    move v1, v3

    .line 175
    :goto_0
    return v1

    .line 150
    :cond_1
    if-eqz v6, :cond_6

    .line 151
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 153
    const/16 v1, 0x400

    :try_start_3
    new-array v1, v1, [B

    .line 156
    :goto_1
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 157
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v1

    move-object v5, v6

    :goto_2
    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 170
    :cond_2
    if-eqz v5, :cond_3

    .line 171
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v1

    .line 160
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 161
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 170
    if-eqz v6, :cond_5

    .line 171
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_5
    move v1, v4

    goto :goto_0

    .line 170
    :cond_6
    if-eqz v6, :cond_7

    .line 171
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_7
    move v1, v3

    .line 175
    goto :goto_0

    .line 166
    :catchall_1
    move-exception v1

    move-object v2, v5

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v5

    move-object v5, v6

    goto :goto_2
.end method
