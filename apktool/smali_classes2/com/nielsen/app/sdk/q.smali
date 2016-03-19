.class final Lcom/nielsen/app/sdk/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Lcom/nielsen/app/sdk/n;

.field private static g:Lcom/nielsen/app/sdk/q;

.field private static h:C

.field private static i:Z

.field private static j:Lorg/json/JSONObject;

.field private static k:Lorg/json/JSONObject;


# instance fields
.field private c:Lcom/nielsen/app/sdk/w;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 98
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Undefined error code"

    aput-object v1, v0, v4

    const-string v1, "Failed generating ping string due to error on parsing"

    aput-object v1, v0, v5

    const-string v1, "Failed to receive configuration file from Census"

    aput-object v1, v0, v6

    const-string v1, "Failed parsing the config file JSON string"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Failed parsing the play() JSON string"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Failed parsing the play() JSON string"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Failed creating ping before adding it to the UPLOAD table)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Failed starting data processor thread. Normally, that means a product"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Failed processing data on a data processor. Normally, that means the input to a product"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Failed sending HTTP or HTTPS requests"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Failed sending pings (on ANDROID, the ping on the UPLOAD table)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Failed sending TSV requests"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Failed sending StationId requests"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Failed read/write from/to database table"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Device ID changed"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NUID changed"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Failed SDK initialization"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Failed SDK suspend"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Invalid parameters"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SDK called in incorrect state"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Processing playhead position failed"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Failed processor stop"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Any other exception or error"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nielsen/app/sdk/q;->a:[Ljava/lang/String;

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Nielsen App SDK is initiated. "

    aput-object v1, v0, v4

    const-string v1, "Nielsen App SDK has started up. "

    aput-object v1, v0, v5

    const-string v1, "Nielsen App SDK is shutting down. "

    aput-object v1, v0, v6

    const-string v1, "Nielsen App SDK could not load native library. "

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Any other event. "

    aput-object v2, v0, v1

    sput-object v0, Lcom/nielsen/app/sdk/q;->b:[Ljava/lang/String;

    .line 206
    const-string v0, ""

    sput-object v0, Lcom/nielsen/app/sdk/q;->e:Ljava/lang/String;

    .line 268
    sput-object v3, Lcom/nielsen/app/sdk/q;->f:Lcom/nielsen/app/sdk/n;

    .line 289
    sput-object v3, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    .line 295
    const/16 v0, 0x57

    sput-char v0, Lcom/nielsen/app/sdk/q;->h:C

    .line 320
    sput-boolean v4, Lcom/nielsen/app/sdk/q;->i:Z

    .line 765
    sput-object v3, Lcom/nielsen/app/sdk/q;->j:Lorg/json/JSONObject;

    .line 839
    sput-object v3, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v4, 0x57

    const/4 v3, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/q;->c:Lcom/nielsen/app/sdk/w;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/q;->d:Ljava/lang/String;

    .line 219
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/q;->c:Lcom/nielsen/app/sdk/w;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 224
    const-string v0, "Invlalid log path"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 238
    const-string v0, "Invlalid log path"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/q;->d:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/nielsen/app/sdk/q;->d:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nielsen/app/sdk/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/q;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nielsen/app/sdk/q;
    .locals 2

    .prologue
    .line 284
    const-class v1, Lcom/nielsen/app/sdk/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/nielsen/app/sdk/q;

    invoke-direct {v0, p0}, Lcom/nielsen/app/sdk/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    .line 287
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(CLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 365
    const-string v0, ""

    .line 367
    sget-object v1, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    if-nez v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 370
    :cond_1
    invoke-static {}, Lcom/nielsen/app/sdk/w;->l()Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nielsen/app/sdk/q;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ErrorReport-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nielsen/app/sdk/w;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : LOG FILE CREATED\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 384
    monitor-enter v1

    .line 387
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 388
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 394
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 396
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 416
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 391
    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "AppSdk"

    const-string v4, "Nielsen AppSDK. Exception while writing to file."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 394
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 394
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 419
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Ljava/io/FileWriter;

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 424
    monitor-enter v1

    .line 426
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nielsen/app/sdk/w;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 430
    const-string v0, ""

    .line 431
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1191
    sget-object v0, Lcom/nielsen/app/sdk/q;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    :try_start_0
    invoke-static {}, Lcom/nielsen/app/sdk/o;->l()Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    .line 1194
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/AppNative;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nielsen/app/sdk/q;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    :goto_0
    sget-object v0, Lcom/nielsen/app/sdk/q;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " | libAppSdk.so "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nielsen/app/sdk/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nielsen/app/sdk/q;->e:Ljava/lang/String;

    .line 1203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppSdk.jar "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nielsen/app/sdk/w;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nielsen/app/sdk/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nielsen/app/sdk/q;->e:Ljava/lang/String;

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nielsen/app/sdk/q;->b:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nielsen/app/sdk/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1196
    :catch_0
    move-exception v0

    const-string v0, "AppSdk"

    const-string v1, "Nielsen AppSDK. Exception while accessing AppSdk Native object. Couldn\'t include native library version info in the event notification."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(ICJLjava/lang/String;Ljava/lang/Throwable;Z)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 791
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 793
    sput-object v0, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    const-string v1, "Timestamp"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 794
    sget-object v0, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    const-string v1, "Level"

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const-string v1, ""

    .line 797
    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    .line 799
    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 802
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 805
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 807
    :cond_1
    invoke-virtual {p5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 808
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_2
    int-to-long v2, p0

    .line 814
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    const-wide/16 v4, 0x17

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 815
    sget-object v0, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    const-string v4, "Code"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 818
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 819
    sget-object v0, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    const-string v2, "Description"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 823
    sget-object v0, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    const-string v2, "Stack"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    :cond_5
    sget-object v0, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public static a(C)V
    .locals 0

    .prologue
    .line 306
    sput-char p0, Lcom/nielsen/app/sdk/q;->h:C

    .line 307
    return-void
.end method

.method public static varargs a(CLjava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 575
    const/4 v0, 0x0

    move v2, v1

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 576
    return-void
.end method

.method public static varargs a(ICLjava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 579
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method public static varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 524
    sget-object v0, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    if-eqz v0, :cond_2

    .line 525
    sget-object v1, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    .line 1531
    sget-object v0, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    if-eqz v0, :cond_2

    .line 1685
    invoke-static {p0}, Lcom/nielsen/app/sdk/q;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1686
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v2

    .line 1688
    add-int/lit16 v4, p0, 0x7d0

    .line 1690
    sget-object v5, Lcom/nielsen/app/sdk/q;->f:Lcom/nielsen/app/sdk/n;

    if-eqz v5, :cond_0

    .line 1691
    sget-object v5, Lcom/nielsen/app/sdk/q;->f:Lcom/nielsen/app/sdk/n;

    invoke-interface {v5, v2, v3, v4, v0}, Lcom/nielsen/app/sdk/n;->onAppSdkEvent(JILjava/lang/String;)V

    .line 1694
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1696
    sput-object v5, Lcom/nielsen/app/sdk/q;->j:Lorg/json/JSONObject;

    const-string v6, "Code"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1697
    sget-object v4, Lcom/nielsen/app/sdk/q;->j:Lorg/json/JSONObject;

    const-string v5, "Description"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1698
    sget-object v0, Lcom/nielsen/app/sdk/q;->j:Lorg/json/JSONObject;

    const-string v4, "Timestamp"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1536
    sget-boolean v0, Lcom/nielsen/app/sdk/q;->i:Z

    if-eqz v0, :cond_2

    .line 1540
    const-string v0, ">>>>> "

    .line 1542
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1545
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Event : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/nielsen/app/sdk/q;->j:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " <<<<<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1547
    const/16 v2, 0x49

    invoke-direct {v1, v2, v0}, Lcom/nielsen/app/sdk/q;->b(CLjava/lang/String;)V

    .line 526
    :cond_2
    return-void
.end method

.method public static a(Lcom/nielsen/app/sdk/n;)V
    .locals 0

    .prologue
    .line 266
    sput-object p0, Lcom/nielsen/app/sdk/q;->f:Lcom/nielsen/app/sdk/n;

    .line 267
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 571
    const/16 v2, 0x16

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 584
    sget-object v0, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    if-eqz v0, :cond_1

    .line 585
    sget-object v7, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    .line 2593
    sget-boolean v0, Lcom/nielsen/app/sdk/q;->i:Z

    if-nez v0, :cond_0

    const/16 v0, 0x45

    if-ne p3, v0, :cond_1

    .line 2599
    :cond_0
    sparse-switch p3, :sswitch_data_0

    .line 2668
    :cond_1
    :goto_0
    return-void

    .line 2603
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v2

    .line 2605
    const-string v4, ""

    .line 2606
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    move v0, p2

    move v1, p3

    move-object v5, p0

    move v6, p1

    .line 2610
    invoke-static/range {v0 .. v6}, Lcom/nielsen/app/sdk/q;->a(ICJLjava/lang/String;Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    .line 2612
    sget-boolean v0, Lcom/nielsen/app/sdk/q;->i:Z

    if-eqz v0, :cond_3

    .line 2614
    sget-object v0, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2615
    invoke-direct {v7, p3, v0}, Lcom/nielsen/app/sdk/q;->b(CLjava/lang/String;)V

    .line 2617
    :cond_3
    invoke-static {}, Lcom/nielsen/app/sdk/o;->m()Lcom/nielsen/app/sdk/e;

    move-result-object v0

    .line 2618
    if-eqz v0, :cond_1

    .line 2619
    sget-object v1, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/e;->a(Lorg/json/JSONObject;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2625
    :sswitch_1
    sget-char v0, Lcom/nielsen/app/sdk/q;->h:C

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2629
    :pswitch_0
    const-string v0, ""

    .line 2630
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 2631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    :cond_4
    sget-object v0, Lcom/nielsen/app/sdk/q;->k:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2636
    invoke-direct {v7, p3, v0}, Lcom/nielsen/app/sdk/q;->b(CLjava/lang/String;)V

    goto :goto_0

    .line 2646
    :sswitch_2
    sget-char v0, Lcom/nielsen/app/sdk/q;->h:C

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2651
    :sswitch_3
    const-string v0, ""

    .line 2652
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 2653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2656
    :cond_5
    invoke-direct {v7, p3, v0}, Lcom/nielsen/app/sdk/q;->b(CLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2599
    nop

    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_0
        0x49 -> :sswitch_2
        0x57 -> :sswitch_1
    .end sparse-switch

    .line 2625
    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch

    .line 2646
    :sswitch_data_1
    .sparse-switch
        0x49 -> :sswitch_3
        0x57 -> :sswitch_3
    .end sparse-switch
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 318
    sput-boolean p0, Lcom/nielsen/app/sdk/q;->i:Z

    .line 319
    return-void
.end method

.method private b(CLjava/lang/String;)V
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/q;->g:Lcom/nielsen/app/sdk/q;

    .line 256
    return-void
.end method
