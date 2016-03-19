.class Lcom/nielsen/app/sdk/AppNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/nielsen/app/sdk/AppNative;


# instance fields
.field private b:Lcom/nielsen/app/sdk/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/AppNative;->a:Lcom/nielsen/app/sdk/AppNative;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/AppNative;->b:Lcom/nielsen/app/sdk/w;

    .line 62
    :try_start_0
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/AppNative;->b:Lcom/nielsen/app/sdk/w;

    .line 64
    const-string v0, "AppSdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "AppSdk"

    const-string v2, "Nielsen AppSDK: could not load the shared libary - Possible Cause - UnsatisfiedLinkError. Manually loading the shared library !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p1}, Lcom/nielsen/app/sdk/AppNative;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string v1, "AppSdk"

    const-string v2, "Nielsen AppSDK: could not load the shared libary - Possible Cause - Manual loading of shared library Failed !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;)Lcom/nielsen/app/sdk/AppNative;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/nielsen/app/sdk/AppNative;->a:Lcom/nielsen/app/sdk/AppNative;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/nielsen/app/sdk/AppNative;

    invoke-direct {v0, p0}, Lcom/nielsen/app/sdk/AppNative;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nielsen/app/sdk/AppNative;->a:Lcom/nielsen/app/sdk/AppNative;

    .line 225
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/AppNative;->a:Lcom/nielsen/app/sdk/AppNative;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 151
    .line 158
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 163
    :goto_0
    if-eqz v2, :cond_7

    .line 166
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 168
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 172
    if-ltz v2, :cond_0

    .line 173
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 180
    const/16 v0, 0x1000

    :try_start_2
    new-array v0, v0, [B

    .line 182
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 183
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 196
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 197
    :goto_2
    if-eqz v1, :cond_1

    .line 198
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 199
    :cond_1
    if-eqz v2, :cond_2

    .line 200
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    :cond_2
    :goto_3
    throw v0

    .line 186
    :cond_3
    const/4 v0, 0x1

    .line 197
    :goto_4
    if-eqz v2, :cond_4

    .line 198
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 199
    :cond_4
    if-eqz v3, :cond_5

    .line 200
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 207
    :cond_5
    :goto_5
    return v0

    .line 190
    :cond_6
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 191
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    const-string v1, "AppSdk"

    const-string v2, "Nielsen AppSDK: An IO Exception occured while closing the I/O streams."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v1, "AppSdk"

    const-string v2, "Nielsen AppSDK: An IO Exception occured while closing the I/O streams."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 196
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :cond_7
    move-object v2, v1

    goto :goto_4
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "libAppSdk.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 120
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lib"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "libAppSdk.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/nielsen/app/sdk/AppNative;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 122
    if-eqz v1, :cond_0

    .line 124
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v0, 0x1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 132
    :catch_0
    move-exception v1

    const-string v1, "AppSdk"

    const-string v2, "Nielsen AppSDK: An exception occured while loading the shared libary manually."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/AppNative;->urlParserCreate()J

    move-result-wide v0

    .line 291
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 292
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed instantiating the URL parser object on the native library"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    return-wide v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 308
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/nielsen/app/sdk/AppNative;->urlParserDelete(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed deleting the URL parser object on the native library"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    return-void
.end method

.method public final a(JLjava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 327
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {p0, p1, p2, p3}, Lcom/nielsen/app/sdk/AppNative;->urlParserSetDictionary(JLjava/util/HashMap;)Z

    move-result v0

    goto :goto_0
.end method

.method public native getVersion()Ljava/lang/String;
.end method

.method public native id3TagAddOffset(JJJ)Z
.end method

.method public native id3TagCreateParam(IIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;II)J
.end method

.method public native id3TagDelete(J)Z
.end method

.method public native id3TagGetFdTimeOffset(J)Ljava/lang/String;
.end method

.method public native id3TagGetFull(J)Ljava/lang/String;
.end method

.method public native id3TagGetNewFdCid(J)Ljava/lang/String;
.end method

.method public native id3TagGetNewPcCid(J)Ljava/lang/String;
.end method

.method public native id3TagGetPcTimeOffset(J)Ljava/lang/String;
.end method

.method public native id3TagGetSessionFdCid(J)Ljava/lang/String;
.end method

.method public native id3TagGetSessionPcCid(J)Ljava/lang/String;
.end method

.method public native id3TagGetStreamType(J)Ljava/lang/String;
.end method

.method public native id3TagGetTimerPing(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I[ICZZ)I
.end method

.method public native id3TagIsInfoTag(J)Z
.end method

.method public native id3TagIsSessionCidChanged(J)Z
.end method

.method public native id3TagIsSessionFdCidChanged(J)Z
.end method

.method public native id3TagIsSessionPcCidChanged(J)Z
.end method

.method public native id3TagIsTimerCidChanged(JLjava/lang/String;)Z
.end method

.method public native id3TagLoad(JLjava/lang/String;Z)Z
.end method

.method public native id3TagSetBreakoutParseParam(JI)V
.end method

.method public native id3TagSetFdCidParseParam(JI)V
.end method

.method public native id3TagSetFdOffsetParseParam(JI)V
.end method

.method public native id3TagSetMaxDaypartEntry(JI)V
.end method

.method public native id3TagSetPcCidParseParam(JI)V
.end method

.method public native id3TagSetPcOffsetParseParam(JI)V
.end method

.method public native id3TagSetPduParseParam(JI)V
.end method

.method public native id3TagSetStationId(JLjava/lang/String;)Z
.end method

.method public native id3TagSetTagIdParseParam(JI)V
.end method

.method public native urlParserCalculatePosition(JJJJLjava/lang/String;)J
.end method

.method public native urlParserCalculateVariable(JJJJLjava/lang/String;)Z
.end method

.method public native urlParserCreate()J
.end method

.method public native urlParserDelete(J)Z
.end method

.method public native urlParserExecute(JLjava/lang/String;[Z[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native urlParserProcessIagData(J)Ljava/lang/String;
.end method

.method public native urlParserSetDictionary(JLjava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
