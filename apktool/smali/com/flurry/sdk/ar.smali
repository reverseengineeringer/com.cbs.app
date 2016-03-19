.class public Lcom/flurry/sdk/ar;
.super Lcom/flurry/sdk/bu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ar$1;,
        Lcom/flurry/sdk/ar$a;,
        Lcom/flurry/sdk/ar$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/flurry/sdk/ar$a;

.field private d:I

.field private g:I

.field private h:Z

.field private final i:Lcom/flurry/sdk/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ad",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/ar$b;

.field private k:Ljava/net/HttpURLConnection;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/Exception;

.field private o:I

.field private final p:Lcom/flurry/sdk/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ad",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/flurry/sdk/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/flurry/sdk/bu;-><init>()V

    .line 128
    const/16 v0, 0x2710

    iput v0, p0, Lcom/flurry/sdk/ar;->d:I

    .line 129
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/flurry/sdk/ar;->g:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ar;->h:Z

    .line 131
    new-instance v0, Lcom/flurry/sdk/ad;

    invoke-direct {v0}, Lcom/flurry/sdk/ad;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ar;->i:Lcom/flurry/sdk/ad;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/ar;->o:I

    .line 140
    new-instance v0, Lcom/flurry/sdk/ad;

    invoke-direct {v0}, Lcom/flurry/sdk/ad;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ar;->p:Lcom/flurry/sdk/ad;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ar;->q:Ljava/lang/Object;

    .line 146
    return-void
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-boolean v0, p0, Lcom/flurry/sdk/ar;->m:Z

    if-eqz v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 277
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    .line 278
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/ar;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 279
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/ar;->g:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 280
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/ar$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lcom/flurry/sdk/ar;->h:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 282
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    sget-object v1, Lcom/flurry/sdk/ar$a;->c:Lcom/flurry/sdk/ar$a;

    iget-object v3, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    invoke-virtual {v1, v3}, Lcom/flurry/sdk/ar$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 283
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 286
    iget-object v0, p0, Lcom/flurry/sdk/ar;->i:Lcom/flurry/sdk/ad;

    invoke-virtual {v0}, Lcom/flurry/sdk/ad;->a()Ljava/util/Collection;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    iget-object v4, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 357
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/flurry/sdk/ar;->i()V

    throw v0

    .line 292
    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ar$a;->b:Lcom/flurry/sdk/ar$a;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ar$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/ar$a;->c:Lcom/flurry/sdk/ar$a;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ar$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/ar;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 357
    invoke-direct {p0}, Lcom/flurry/sdk/ar;->i()V

    goto/16 :goto_0

    .line 302
    :cond_3
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/ar$a;->c:Lcom/flurry/sdk/ar$a;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ar$a;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    :try_start_3
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 309
    :try_start_4
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1362
    :try_start_5
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/ar$b;

    if-eqz v0, :cond_4

    .line 1366
    invoke-virtual {p0}, Lcom/flurry/sdk/ar;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1374
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/ar$b;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/ar$b;->a(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 315
    :cond_4
    :try_start_6
    invoke-static {v1}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v3}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    .line 321
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/ar;->o:I

    .line 324
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    iget-object v5, p0, Lcom/flurry/sdk/ar;->p:Lcom/flurry/sdk/ad;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/flurry/sdk/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 315
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    throw v0

    .line 333
    :cond_7
    sget-object v0, Lcom/flurry/sdk/ar$a;->b:Lcom/flurry/sdk/ar$a;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ar$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/flurry/sdk/ar$a;->c:Lcom/flurry/sdk/ar$a;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ar$a;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    .line 357
    invoke-direct {p0}, Lcom/flurry/sdk/ar;->i()V

    goto/16 :goto_0

    .line 338
    :cond_8
    :try_start_7
    iget-boolean v0, p0, Lcom/flurry/sdk/ar;->m:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_9

    .line 357
    invoke-direct {p0}, Lcom/flurry/sdk/ar;->i()V

    goto/16 :goto_0

    .line 347
    :cond_9
    :try_start_8
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v1

    .line 348
    :try_start_9
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1378
    :try_start_a
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/ar$b;

    if-eqz v0, :cond_a

    .line 1382
    invoke-virtual {p0}, Lcom/flurry/sdk/ar;->b()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1390
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/ar$b;

    invoke-interface {v0, p0, v3}, Lcom/flurry/sdk/ar$b;->a(Lcom/flurry/sdk/ar;Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 353
    :cond_a
    :try_start_b
    invoke-static {v3}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    .line 354
    invoke-static {v1}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 357
    invoke-direct {p0}, Lcom/flurry/sdk/ar;->i()V

    goto/16 :goto_0

    .line 353
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_c
    invoke-static {v1}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    .line 354
    invoke-static {v2}, Lcom/flurry/sdk/bs;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 353
    :catchall_3
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_4

    .line 315
    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private h()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/ar$b;

    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ar;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/ar$b;

    invoke-interface {v0}, Lcom/flurry/sdk/ar$b;->a()V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/flurry/sdk/ar;->l:Z

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ar;->l:Z

    .line 412
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/flurry/sdk/ar;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/flurry/sdk/ar;->h()V

    .line 257
    :goto_0
    return-void

    .line 235
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v0

    .line 1079
    iget-boolean v0, v0, Lcom/flurry/sdk/fj;->b:Z

    .line 235
    if-nez v0, :cond_1

    .line 236
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ar;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network not available, aborting http request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-direct {p0}, Lcom/flurry/sdk/ar;->h()V

    goto :goto_0

    .line 241
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/ar$a;->a:Lcom/flurry/sdk/ar$a;

    iget-object v1, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ar$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    :cond_2
    sget-object v0, Lcom/flurry/sdk/ar$a;->b:Lcom/flurry/sdk/ar$a;

    iput-object v0, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    .line 247
    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/ar;->g()V

    .line 249
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/ar;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/flurry/sdk/ar;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    invoke-direct {p0}, Lcom/flurry/sdk/ar;->h()V

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const/4 v1, 0x4

    :try_start_3
    sget-object v2, Lcom/flurry/sdk/ar;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/flurry/sdk/ar;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ar;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during http request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    iput-object v0, p0, Lcom/flurry/sdk/ar;->n:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    invoke-direct {p0}, Lcom/flurry/sdk/ar;->h()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/flurry/sdk/ar;->h()V

    throw v0
.end method

.method public final a(Lcom/flurry/sdk/ar$a;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar$a;

    .line 158
    return-void
.end method

.method public final a(Lcom/flurry/sdk/ar$b;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/flurry/sdk/ar;->j:Lcom/flurry/sdk/ar$b;

    .line 180
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/flurry/sdk/ar;->b:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/ar;->i:Lcom/flurry/sdk/ad;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/flurry/sdk/ar;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ar;->m:Z

    monitor-exit v1

    return v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/flurry/sdk/ar;->o:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/flurry/sdk/ar;->o:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/flurry/sdk/ar;->o:I

    return v0
.end method
