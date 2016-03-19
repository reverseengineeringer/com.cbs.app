.class final Lcom/c/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lcom/c/a/a/c;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/c/a/a/c;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/c/a/a/b;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 41
    iput-object p2, p0, Lcom/c/a/a/b;->b:Lorg/apache/http/protocol/HttpContext;

    .line 42
    iput-object p3, p0, Lcom/c/a/a/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 43
    iput-object p4, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    .line 44
    instance-of v0, p4, Lcom/c/a/a/d;

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/b;->e:Z

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    invoke-virtual {v0}, Lcom/c/a/a/c;->a()V

    .line 1088
    :cond_0
    const/4 v0, 0x1

    .line 1090
    iget-object v2, p0, Lcom/c/a/a/b;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move v2, v0

    move-object v0, v1

    .line 1091
    :goto_0
    if-eqz v2, :cond_3

    .line 2073
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2074
    iget-object v0, p0, Lcom/c/a/a/b;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/c/a/a/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v4, p0, Lcom/c/a/a/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2075
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2076
    iget-object v2, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    if-eqz v2, :cond_1

    .line 2077
    iget-object v2, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    invoke-virtual {v2, v0}, Lcom/c/a/a/c;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 57
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    invoke-virtual {v0}, Lcom/c/a/a/c;->b()V

    .line 70
    :cond_2
    :goto_2
    return-void

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    iget-object v2, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    if-eqz v2, :cond_1

    .line 1097
    iget-object v2, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    const-string v3, "can\'t resolve host"

    invoke-virtual {v2, v0, v3}, Lcom/c/a/a/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    .line 61
    iget-object v2, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    if-eqz v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    invoke-virtual {v2}, Lcom/c/a/a/c;->b()V

    .line 63
    iget-boolean v2, p0, Lcom/c/a/a/b;->e:Z

    if-eqz v2, :cond_4

    .line 64
    iget-object v2, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    invoke-virtual {v2, v0, v1}, Lcom/c/a/a/c;->a(Ljava/lang/Throwable;[B)V

    goto :goto_2

    .line 1101
    :catch_2
    move-exception v0

    .line 1102
    :try_start_3
    iget v2, p0, Lcom/c/a/a/b;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/c/a/a/b;->f:I

    iget-object v4, p0, Lcom/c/a/a/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_0

    .line 1103
    :catch_3
    move-exception v0

    .line 1107
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NPE in HttpClient"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1108
    iget v0, p0, Lcom/c/a/a/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/a/a/b;->f:I

    iget-object v4, p0, Lcom/c/a/a/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v2, v0, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 1109
    goto/16 :goto_0

    .line 1113
    :cond_3
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    .line 1114
    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1115
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 66
    :cond_4
    iget-object v2, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/c;

    invoke-virtual {v2, v0, v1}, Lcom/c/a/a/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2
.end method
