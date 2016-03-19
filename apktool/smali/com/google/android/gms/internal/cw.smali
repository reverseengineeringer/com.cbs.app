.class public final Lcom/google/android/gms/internal/cw;
.super Lcom/google/android/gms/internal/ct;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/text/DecimalFormat;


# instance fields
.field private d:Ljava/io/File;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cw;->b:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cw;->c:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/hs;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/hs;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "admobVideoStreams"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not create preload cache directory at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iput-object v6, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not set cache file permissions at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iput-object v6, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cw;->e:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 27

    .prologue
    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const-string v3, "noCacheDir"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    .line 4000
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move v3, v2

    .line 0
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/ax;->o:Lcom/google/android/gms/internal/at;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_7

    .line 6000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 0
    :cond_1
    :goto_2
    if-nez v2, :cond_0

    .line 7000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v2, 0x0

    const-string v3, "expireFailed"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 4000
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move/from16 v26, v2

    move v2, v3

    move/from16 v3, v26

    :goto_3
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".done"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v2

    goto :goto_1

    .line 6000
    :cond_5
    const/4 v7, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    const/4 v2, 0x0

    move v8, v2

    :goto_4
    if-ge v8, v10, :cond_6

    aget-object v6, v9, v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".done"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v11, v2, v4

    if-gez v11, :cond_17

    move-object v4, v6

    :goto_5
    add-int/lit8 v5, v8, 0x1

    move-object v7, v4

    move v8, v5

    move-wide v4, v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/cw;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    and-int/2addr v2, v3

    goto/16 :goto_2

    .line 8000
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 0
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-direct {v12, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/cw;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stream cache hit at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9000
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/cw;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v3, Lcom/google/android/gms/internal/cw;->b:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/cw;->b:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Stream cache already in progress at "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inProgress"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_9
    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/cw;->b:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    const-string v10, "error"

    const/4 v9, 0x0

    :try_start_2
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/ax;->t:Lcom/google/android/gms/internal/at;

    .line 11000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v2, v3, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_b

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v2, 0x190

    if-lt v5, v2, :cond_b

    const-string v3, "badUrl"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "HTTP request failed. Code: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v2

    :try_start_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "HTTP status code "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v5

    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/cw;->e:Z

    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Preload aborted for URL \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21000
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_8
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not delete partial cache file at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23000
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/cw;->b:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    :try_start_6
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    if-gez v7, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stream cache aborted, missing content-length header at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentLengthMissing"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/cw;->b:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    sget-object v2, Lcom/google/android/gms/internal/cw;->c:Ljava/text/DecimalFormat;

    int-to-long v0, v7

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/google/android/gms/internal/ax;->p:Lcom/google/android/gms/internal/at;

    .line 13000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v7, v15, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeds limit at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File too big for full file cache. Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sizeExceeded"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v5, v2}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/cw;->b:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Caching "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " bytes from "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15000
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v16

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v19

    const/4 v6, 0x0

    invoke-interface/range {v19 .. v19}, Lcom/google/android/gms/internal/ju;->a()J

    move-result-wide v20

    sget-object v2, Lcom/google/android/gms/internal/ax;->s:Lcom/google/android/gms/internal/at;

    .line 16000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v22, Lcom/google/android/gms/internal/hd;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/hd;-><init>(J)V

    sget-object v2, Lcom/google/android/gms/internal/ax;->r:Lcom/google/android/gms/internal/at;

    .line 17000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    :cond_e
    :goto_9
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ltz v2, :cond_13

    add-int/2addr v6, v2

    if-le v6, v15, :cond_f

    const-string v3, "sizeExceeded"
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "File too big for full file cache. Size: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    move-result-object v2

    :try_start_9
    new-instance v4, Ljava/io/IOException;

    const-string v5, "stream cache file size limit exceeded"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v4

    move-object v4, v11

    goto/16 :goto_6

    :cond_f
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_10
    invoke-virtual/range {v17 .. v18}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-gtz v2, :cond_10

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface/range {v19 .. v19}, Lcom/google/android/gms/internal/ju;->a()J

    move-result-wide v2

    sub-long v2, v2, v20

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v24

    cmp-long v2, v2, v4

    if-lez v2, :cond_11

    const-string v3, "downloadTimeout"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Timeout exceeded. Limit: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sec"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    move-result-object v2

    :try_start_c
    new-instance v4, Ljava/io/IOException;

    const-string v5, "stream cache time limit exceeded"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :cond_11
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/cw;->e:Z

    if-eqz v2, :cond_12

    const-string v2, "externalAbort"
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :try_start_e
    new-instance v3, Ljava/io/IOException;

    const-string v4, "abort requested"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v3

    move-object v3, v2

    move-object v4, v11

    move-object v2, v9

    goto/16 :goto_6

    :cond_12
    :try_start_f
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/hd;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 18000
    sget-object v23, Lcom/google/android/gms/ads/internal/util/client/a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ct$1;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ct$1;-><init>(Lcom/google/android/gms/internal/ct;Ljava/lang/String;Ljava/lang/String;IIZ)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :catch_3
    move-exception v2

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_6

    .line 0
    :cond_13
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/google/android/gms/internal/cw;->c:Ljava/text/DecimalFormat;

    int-to-long v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preloaded "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19000
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_14
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 20000
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 0
    :goto_a
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/google/android/gms/internal/cw;->b:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 20000
    :cond_15
    :try_start_10
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_a

    :catch_4
    move-exception v2

    goto :goto_a

    .line 0
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Preload failed for URL \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22000
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_8

    :catch_5
    move-exception v4

    goto/16 :goto_7

    :catch_6
    move-exception v4

    goto/16 :goto_7

    :catch_7
    move-exception v2

    move-object v2, v9

    move-object v3, v10

    goto/16 :goto_6

    :catch_8
    move-exception v2

    move-object v2, v9

    goto/16 :goto_6

    :catch_9
    move-exception v2

    move-object v2, v9

    move-object v4, v11

    goto/16 :goto_6

    :cond_17
    move-wide v2, v4

    move-object v4, v7

    goto/16 :goto_5
.end method
