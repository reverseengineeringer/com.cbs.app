.class public Lcom/cbs/app/service/social/TwitterOAuthImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/os/Handler;

.field private static c:I


# instance fields
.field private d:Lcom/cbs/app/service/social/TwitterOAuthResponse;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a:Ljava/lang/String;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/cbs/app/service/social/TwitterOAuthImpl;->b:Landroid/os/Handler;

    .line 27
    const/16 v0, 0x2710

    sput v0, Lcom/cbs/app/service/social/TwitterOAuthImpl;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl;->e:Z

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/service/social/TwitterOAuthImpl;Ljava/lang/String;I)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 23
    .line 1132
    new-instance v0, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/cbs/app/service/social/TwitterOAuthImpl$3;-><init>(Lcom/cbs/app/service/social/TwitterOAuthImpl;Ljava/lang/String;I)V

    .line 23
    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/service/social/TwitterOAuthImpl;Lcom/cbs/app/service/social/OAuthRequestBundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-static {p1}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->b(Lcom/cbs/app/service/social/OAuthRequestBundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/service/social/TwitterOAuthImpl;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl;->e:Z

    return v0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/cbs/app/service/social/TwitterOAuthImpl;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/service/social/TwitterOAuthImpl;)Lcom/cbs/app/service/social/TwitterOAuthResponse;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl;->d:Lcom/cbs/app/service/social/TwitterOAuthResponse;

    return-object v0
.end method

.method private static b(Lcom/cbs/app/service/social/OAuthRequestBundle;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 41
    .line 44
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/cbs/app/service/social/OAuthRequestBundle;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 48
    iget-object v2, p0, Lcom/cbs/app/service/social/OAuthRequestBundle;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 49
    const-string v2, "Content-Type"

    iget-object v3, p0, Lcom/cbs/app/service/social/OAuthRequestBundle;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "User_Agent"

    const-string v3, "CBS android"

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "Host"

    const-string v3, "api.twitter.com"

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "Authorization"

    iget-object v3, p0, Lcom/cbs/app/service/social/OAuthRequestBundle;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "Content-Language"

    const-string v3, "en-US"

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget v2, Lcom/cbs/app/service/social/TwitterOAuthImpl;->c:I

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 55
    sget v2, Lcom/cbs/app/service/social/TwitterOAuthImpl;->c:I

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 58
    iget-object v2, p0, Lcom/cbs/app/service/social/OAuthRequestBundle;->a:Ljava/lang/String;

    .line 59
    if-eqz v2, :cond_0

    .line 60
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1099
    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1100
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1102
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1105
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1108
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_4

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http response code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed with response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    move-object v0, v1

    .line 78
    :goto_0
    return-object v0

    .line 1104
    :catchall_0
    move-exception v2

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 1105
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1108
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 72
    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 73
    :goto_2
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception in gethttpresponse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 75
    if-eqz v2, :cond_3

    .line 76
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    move-object v0, v1

    .line 78
    goto :goto_0

    .line 68
    :cond_4
    :try_start_7
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    invoke-static {v2}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v1

    .line 75
    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    move-object v0, v1

    goto :goto_0

    .line 75
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_6

    .line 76
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    throw v0

    .line 75
    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 72
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 1104
    :catchall_4
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl;->e:Z

    .line 84
    return-void
.end method

.method public final a(Lcom/cbs/app/service/social/OAuthRequestBundle;)V
    .locals 2

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Lcom/cbs/app/service/social/TwitterOAuthImpl$1;

    .line 1122
    new-instance v1, Lcom/cbs/app/service/social/TwitterOAuthImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/service/social/TwitterOAuthImpl$2;-><init>(Lcom/cbs/app/service/social/TwitterOAuthImpl;Lcom/cbs/app/service/social/OAuthRequestBundle;)V

    .line 115
    invoke-direct {v0, p0, v1}, Lcom/cbs/app/service/social/TwitterOAuthImpl$1;-><init>(Lcom/cbs/app/service/social/TwitterOAuthImpl;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/cbs/app/service/social/TwitterOAuthImpl$1;->start()V

    .line 119
    :cond_0
    return-void
.end method

.method public setTwitterOAuthResponse(Lcom/cbs/app/service/social/TwitterOAuthResponse;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cbs/app/service/social/TwitterOAuthImpl;->d:Lcom/cbs/app/service/social/TwitterOAuthResponse;

    .line 37
    return-void
.end method
