.class final Lcom/nielsen/app/sdk/h$a;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/h$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/h;

.field private final b:I

.field private final c:I

.field private d:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/h;III)V
    .locals 2

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/nielsen/app/sdk/h$a;->a:Lcom/nielsen/app/sdk/h;

    .line 1102
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 919
    const/16 v0, 0x50

    iput v0, p0, Lcom/nielsen/app/sdk/h$a;->b:I

    .line 920
    const/16 v0, 0x1bb

    iput v0, p0, Lcom/nielsen/app/sdk/h$a;->c:I

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/h$a;->d:Ljava/security/KeyStore;

    .line 1104
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/h$a;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p1, Lcom/nielsen/app/sdk/h;->b:Lorg/apache/http/params/HttpParams;

    .line 1106
    iget-object v0, p1, Lcom/nielsen/app/sdk/h;->b:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.socket.timeout"

    invoke-interface {v0, v1, p3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1107
    iget-object v0, p1, Lcom/nielsen/app/sdk/h;->b:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.connection.timeout"

    invoke-interface {v0, v1, p2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1109
    iget-object v0, p1, Lcom/nielsen/app/sdk/h;->b:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.socket.buffer-size"

    invoke-interface {v0, v1, p4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1111
    iget-object v0, p1, Lcom/nielsen/app/sdk/h;->b:Lorg/apache/http/params/HttpParams;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p1, Lcom/nielsen/app/sdk/h;->b:Lorg/apache/http/params/HttpParams;

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 1114
    iget-object v0, p1, Lcom/nielsen/app/sdk/h;->b:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/h$a;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1115
    return-void
.end method

.method private a()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1013
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/app/sdk/h$a;->d:Ljava/security/KeyStore;

    .line 1017
    iget-object v1, p0, Lcom/nielsen/app/sdk/h$a;->d:Ljava/security/KeyStore;

    if-eqz v1, :cond_3

    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/nielsen/app/sdk/h$a;->a:Lcom/nielsen/app/sdk/h;

    invoke-static {v1}, Lcom/nielsen/app/sdk/h;->a(Lcom/nielsen/app/sdk/h;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1024
    if-eqz v1, :cond_5

    .line 1026
    const-string v3, "nielsen"

    const-string v4, "raw"

    iget-object v5, p0, Lcom/nielsen/app/sdk/h$a;->a:Lcom/nielsen/app/sdk/h;

    invoke-static {v5}, Lcom/nielsen/app/sdk/h;->a(Lcom/nielsen/app/sdk/h;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1027
    if-eqz v3, :cond_5

    .line 1029
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1030
    if-eqz v1, :cond_4

    .line 1032
    const/16 v2, 0x8

    :try_start_1
    new-array v2, v2, [C

    fill-array-data v2, :array_0

    .line 1033
    iget-object v3, p0, Lcom/nielsen/app/sdk/h$a;->d:Ljava/security/KeyStore;

    invoke-virtual {v3, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1045
    :goto_0
    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$a;->d:Ljava/security/KeyStore;

    invoke-virtual {v0, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1048
    :cond_0
    if-eqz v1, :cond_1

    .line 1049
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1051
    :cond_1
    :goto_1
    new-instance v0, Lcom/nielsen/app/sdk/h$a$a;

    iget-object v1, p0, Lcom/nielsen/app/sdk/h$a;->d:Ljava/security/KeyStore;

    invoke-direct {v0, p0, v1}, Lcom/nielsen/app/sdk/h$a$a;-><init>(Lcom/nielsen/app/sdk/h$a;Ljava/security/KeyStore;)V

    .line 1056
    return-object v0

    .line 1041
    :catch_0
    move-exception v0

    move-object v6, v7

    :goto_2
    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x45

    :try_start_2
    const-string v4, "It failed in loadeing the keystore, it will try to handle the HTTPS calls without credentings. If the CA authorirty id well-known, then there should be no issue"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1046
    iget-object v0, p0, Lcom/nielsen/app/sdk/h$a;->d:Ljava/security/KeyStore;

    invoke-virtual {v0, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1048
    if-eqz v6, :cond_1

    .line 1049
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 1045
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 1046
    :goto_3
    iget-object v2, p0, Lcom/nielsen/app/sdk/h$a;->d:Ljava/security/KeyStore;

    invoke-virtual {v2, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1048
    if-eqz v1, :cond_2

    .line 1049
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0

    .line 1054
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not get the default trust store type (BKS)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_3

    .line 1041
    :catch_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    move-object v1, v7

    goto :goto_0

    .line 1032
    nop

    :array_0
    .array-data 2
        0x6es
        0x31s
        0x33s
        0x6cs
        0x73s
        0x33s
        0x6es
        0x21s
    .end array-data
.end method


# virtual methods
.method protected final createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 7

    .prologue
    .line 1065
    const/4 v6, 0x0

    .line 1068
    :try_start_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1070
    invoke-direct {p0}, Lcom/nielsen/app/sdk/h$a;->a()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 1071
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1074
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 1075
    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1077
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v0

    .line 1078
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 1079
    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1081
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v2, p0, Lcom/nielsen/app/sdk/h$a;->a:Lcom/nielsen/app/sdk/h;

    iget-object v2, v2, Lcom/nielsen/app/sdk/h;->b:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    return-object v0

    .line 1085
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x45

    const-string v4, "Could not create the socket"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    goto :goto_0
.end method
