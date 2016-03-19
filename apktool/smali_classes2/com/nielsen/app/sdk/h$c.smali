.class public final Lcom/nielsen/app/sdk/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:Lcom/nielsen/app/sdk/w;

.field final synthetic d:Lcom/nielsen/app/sdk/h;

.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nielsen/app/sdk/h$f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/apache/http/client/HttpClient;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/h$e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;Lcom/nielsen/app/sdk/h$d;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1154
    iput-object p1, p0, Lcom/nielsen/app/sdk/h$c;->d:Lcom/nielsen/app/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    iput-object v1, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    .line 1126
    iput-object v1, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    .line 1128
    iput v5, p0, Lcom/nielsen/app/sdk/h$c;->g:I

    .line 1129
    iput v5, p0, Lcom/nielsen/app/sdk/h$c;->h:I

    .line 1130
    iput v5, p0, Lcom/nielsen/app/sdk/h$c;->i:I

    .line 1132
    iput-object v1, p0, Lcom/nielsen/app/sdk/h$c;->j:Ljava/util/List;

    .line 1133
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$c;->k:Ljava/lang/String;

    .line 1134
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    .line 1135
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$c;->m:Ljava/lang/String;

    .line 1137
    iput v5, p0, Lcom/nielsen/app/sdk/h$c;->n:I

    .line 1172
    iput-wide v2, p0, Lcom/nielsen/app/sdk/h$c;->a:J

    .line 1173
    iput-wide v2, p0, Lcom/nielsen/app/sdk/h$c;->b:J

    .line 1175
    iput-object v1, p0, Lcom/nielsen/app/sdk/h$c;->c:Lcom/nielsen/app/sdk/w;

    .line 1157
    const v0, 0xea60

    :try_start_0
    iput v0, p0, Lcom/nielsen/app/sdk/h$c;->g:I

    .line 1158
    const v0, 0xea60

    iput v0, p0, Lcom/nielsen/app/sdk/h$c;->h:I

    .line 1159
    iput-object p2, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    .line 1160
    const v0, 0x3e800

    iput v0, p0, Lcom/nielsen/app/sdk/h$c;->i:I

    .line 1162
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$c;->c:Lcom/nielsen/app/sdk/w;

    .line 1164
    invoke-virtual {p3}, Lcom/nielsen/app/sdk/h$d;->b()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x45

    const-string v4, "Failed to instantiate the meter request object"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 1224
    .line 2195
    iput-object p2, p0, Lcom/nielsen/app/sdk/h$c;->m:Ljava/lang/String;

    .line 2196
    iput-object v9, p0, Lcom/nielsen/app/sdk/h$c;->j:Ljava/util/List;

    .line 2197
    iput v4, p0, Lcom/nielsen/app/sdk/h$c;->n:I

    .line 2198
    iput-object p1, p0, Lcom/nielsen/app/sdk/h$c;->k:Ljava/lang/String;

    .line 2200
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 2202
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v6

    .line 2204
    new-instance v1, Lcom/nielsen/app/sdk/h$f;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->d:Lcom/nielsen/app/sdk/h;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    const-string v8, ""

    invoke-direct/range {v1 .. v9}, Lcom/nielsen/app/sdk/h$f;-><init>(Lcom/nielsen/app/sdk/h;IILjava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V

    .line 2205
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 2207
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/h;->a()Lcom/nielsen/app/sdk/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nielsen/app/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 1225
    return-void
.end method

.method public final run()V
    .locals 10

    .prologue
    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->k:Ljava/lang/String;

    .line 2351
    iget-object v1, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_0

    .line 2353
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v6

    .line 2355
    new-instance v1, Lcom/nielsen/app/sdk/h$f;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->d:Lcom/nielsen/app/sdk/h;

    const/4 v3, 0x1

    iget v4, p0, Lcom/nielsen/app/sdk/h$c;->n:I

    iget-object v5, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nielsen/app/sdk/h$f;-><init>(Lcom/nielsen/app/sdk/h;IILjava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V

    .line 2356
    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 2383
    :cond_0
    new-instance v1, Lcom/nielsen/app/sdk/h$a;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->d:Lcom/nielsen/app/sdk/h;

    iget v3, p0, Lcom/nielsen/app/sdk/h$c;->g:I

    iget v4, p0, Lcom/nielsen/app/sdk/h$c;->h:I

    iget v5, p0, Lcom/nielsen/app/sdk/h$c;->i:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nielsen/app/sdk/h$a;-><init>(Lcom/nielsen/app/sdk/h;III)V

    iput-object v1, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    .line 2386
    iget v1, p0, Lcom/nielsen/app/sdk/h$c;->n:I

    packed-switch v1, :pswitch_data_0

    .line 2440
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid HTTP request type received"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    :catch_0
    move-exception v9

    .line 1311
    :try_start_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1315
    :try_start_2
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v6

    .line 1317
    new-instance v1, Lcom/nielsen/app/sdk/h$f;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->d:Lcom/nielsen/app/sdk/h;

    const/4 v3, 0x2

    iget v4, p0, Lcom/nielsen/app/sdk/h$c;->n:I

    iget-object v5, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    const-string v8, ""

    invoke-direct/range {v1 .. v9}, Lcom/nielsen/app/sdk/h$f;-><init>(Lcom/nielsen/app/sdk/h;IILjava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V

    .line 1318
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1333
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_2

    .line 1335
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 1336
    if-eqz v0, :cond_2

    .line 1337
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1339
    :cond_2
    invoke-static {}, Lcom/nielsen/app/sdk/h;->a()Lcom/nielsen/app/sdk/h;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nielsen/app/sdk/h;->a(Lcom/nielsen/app/sdk/h;Ljava/lang/Runnable;)V

    .line 1340
    :goto_1
    return-void

    .line 2390
    :pswitch_0
    :try_start_3
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2392
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2393
    const-string v2, "User-Agent"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    :cond_3
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2456
    :goto_2
    if-nez v0, :cond_a

    .line 2457
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There was no response oject on the Nielsen server response"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1328
    :catch_1
    move-exception v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x45

    :try_start_4
    const-string v4, "Thread (%s) out of memory"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1333
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_4

    .line 1335
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 1336
    if-eqz v0, :cond_4

    .line 1337
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1339
    :cond_4
    invoke-static {}, Lcom/nielsen/app/sdk/h;->a()Lcom/nielsen/app/sdk/h;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nielsen/app/sdk/h;->a(Lcom/nielsen/app/sdk/h;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2400
    :pswitch_1
    :try_start_5
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$c;->m:Ljava/lang/String;

    invoke-direct {v6, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 2402
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2403
    const-string v1, "User-Agent"

    invoke-virtual {v6, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    :cond_5
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->j:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2407
    new-instance v0, Lcom/nielsen/app/sdk/h$b;

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$c;->d:Lcom/nielsen/app/sdk/h;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    iget v3, p0, Lcom/nielsen/app/sdk/h$c;->n:I

    iget-object v4, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    iget-object v5, p0, Lcom/nielsen/app/sdk/h$c;->j:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lcom/nielsen/app/sdk/h$b;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;ILjava/util/concurrent/BlockingQueue;Ljava/util/List;)V

    .line 2408
    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2410
    :cond_6
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_2

    .line 2415
    :pswitch_2
    new-instance v6, Lorg/apache/http/client/methods/HttpPut;

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$c;->m:Ljava/lang/String;

    invoke-direct {v6, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 2417
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2418
    const-string v1, "User-Agent"

    invoke-virtual {v6, v1, v0}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    :cond_7
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->j:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2422
    new-instance v0, Lcom/nielsen/app/sdk/h$b;

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$c;->d:Lcom/nielsen/app/sdk/h;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    iget v3, p0, Lcom/nielsen/app/sdk/h$c;->n:I

    iget-object v4, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    iget-object v5, p0, Lcom/nielsen/app/sdk/h$c;->j:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lcom/nielsen/app/sdk/h$b;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;ILjava/util/concurrent/BlockingQueue;Ljava/util/List;)V

    .line 2423
    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2425
    :cond_8
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto/16 :goto_2

    .line 2430
    :pswitch_3
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 2432
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2433
    const-string v2, "User-Agent"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    :cond_9
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto/16 :goto_2

    .line 2459
    :cond_a
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 2461
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    .line 2462
    invoke-virtual {v2}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 2463
    invoke-virtual {v2}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v4

    .line 2464
    invoke-virtual {v2}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v2

    .line 2466
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    .line 2467
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 2471
    const/16 v6, 0xc8

    if-eq v1, v6, :cond_c

    const/16 v6, 0xc9

    if-eq v1, v6, :cond_c

    .line 2473
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Request failed. Reason("

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") Code("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Protocol("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Version("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2474
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1333
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_b

    .line 1335
    iget-object v1, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    .line 1336
    if-eqz v1, :cond_b

    .line 1337
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1339
    :cond_b
    invoke-static {}, Lcom/nielsen/app/sdk/h;->a()Lcom/nielsen/app/sdk/h;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/nielsen/app/sdk/h;->a(Lcom/nielsen/app/sdk/h;Ljava/lang/Runnable;)V

    throw v0

    .line 2477
    :cond_c
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Request executed. Reason("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Code("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") Protocol("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") Version("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2479
    iget-object v1, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_d

    .line 2481
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v6

    .line 2483
    new-instance v1, Lcom/nielsen/app/sdk/h$f;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->d:Lcom/nielsen/app/sdk/h;

    const/4 v3, 0x3

    iget v4, p0, Lcom/nielsen/app/sdk/h$c;->n:I

    iget-object v5, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nielsen/app/sdk/h$f;-><init>(Lcom/nielsen/app/sdk/h;IILjava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V

    .line 2484
    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 2487
    :cond_d
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 2488
    if-nez v0, :cond_e

    .line 2489
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There was no data on the Nielsen server response"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2491
    :cond_e
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 2493
    array-length v2, v1

    int-to-long v2, v2

    .line 2494
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_f

    .line 2496
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2498
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Client received an invalid response. Check if it has permition for the connection used. Content received length = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2502
    :cond_f
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_13

    .line 2503
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V

    .line 2507
    :goto_3
    const-string v0, "<br>"

    .line 2508
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2509
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2511
    :cond_10
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_11

    .line 2513
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v6

    .line 2515
    new-instance v1, Lcom/nielsen/app/sdk/h$f;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$c;->d:Lcom/nielsen/app/sdk/h;

    const/4 v3, 0x4

    iget v4, p0, Lcom/nielsen/app/sdk/h$c;->n:I

    iget-object v5, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/nielsen/app/sdk/h$f;-><init>(Lcom/nielsen/app/sdk/h;IILjava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V

    .line 2516
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 2519
    :cond_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/nielsen/app/sdk/h$c;->n:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1333
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_12

    .line 1335
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$c;->f:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 1336
    if-eqz v0, :cond_12

    .line 1337
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1339
    :cond_12
    invoke-static {}, Lcom/nielsen/app/sdk/h;->a()Lcom/nielsen/app/sdk/h;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nielsen/app/sdk/h;->a(Lcom/nielsen/app/sdk/h;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 2505
    :cond_13
    :try_start_7
    const-string v8, ""
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 1322
    :catch_2
    move-exception v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x45

    :try_start_8
    const-string v4, "Thread (%s) interrupted"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nielsen/app/sdk/h$c;->l:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
