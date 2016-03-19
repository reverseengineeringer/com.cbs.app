.class final Lcom/adobe/b/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/b/a/f;->a(Lcom/adobe/b/a/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/a/f$b;

.field final synthetic b:Lcom/adobe/b/a/f;


# direct methods
.method constructor <init>(Lcom/adobe/b/a/f;Lcom/adobe/b/a/f$b;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    iput-object p2, p0, Lcom/adobe/b/a/f$1;->a:Lcom/adobe/b/a/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    iget-object v2, p0, Lcom/adobe/b/a/f$1;->a:Lcom/adobe/b/a/f$b;

    invoke-virtual {v2}, Lcom/adobe/b/a/f$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/b/a/f;->a(Lcom/adobe/b/a/f;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    :try_start_1
    iget-object v1, p0, Lcom/adobe/b/a/f$1;->a:Lcom/adobe/b/a/f$b;

    invoke-virtual {v1}, Lcom/adobe/b/a/f$b;->a()Lcom/adobe/b/a/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/b/a/f$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/adobe/b/a/f;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 133
    invoke-static {}, Lcom/adobe/b/a/f;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 134
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/adobe/b/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/adobe/b/a/f$1;->a:Lcom/adobe/b/a/f$b;

    invoke-virtual {v1}, Lcom/adobe/b/a/f$b;->a()Lcom/adobe/b/a/f$a;

    move-result-object v1

    sget-object v2, Lcom/adobe/b/a/f$a;->b:Lcom/adobe/b/a/f$a;

    if-ne v1, v2, :cond_0

    .line 138
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/adobe/b/a/f$1;->a:Lcom/adobe/b/a/f$b;

    invoke-virtual {v1}, Lcom/adobe/b/a/f$b;->c()Ljava/lang/String;

    move-result-object v1

    .line 141
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 142
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 144
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 147
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 149
    iget-object v1, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    invoke-static {v1}, Lcom/adobe/b/a/f;->b(Lcom/adobe/b/a/f;)Lcom/adobe/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    invoke-static {v2}, Lcom/adobe/b/a/f;->a(Lcom/adobe/b/a/f;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#load() - Request sent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adobe/b/a/f$1;->a:Lcom/adobe/b/a/f$b;

    invoke-virtual {v4}, Lcom/adobe/b/a/f$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 153
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 156
    const/16 v4, 0x34

    if-eq v3, v4, :cond_1

    const/16 v4, 0x35

    if-ne v3, v4, :cond_4

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    invoke-static {v3}, Lcom/adobe/b/a/f;->b(Lcom/adobe/b/a/f;)Lcom/adobe/b/a/c;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    invoke-static {v4}, Lcom/adobe/b/a/f;->a(Lcom/adobe/b/a/f;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#load() - Server status error code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 166
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 167
    iget-object v1, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    invoke-static {v1}, Lcom/adobe/b/a/f;->c(Lcom/adobe/b/a/f;)Lcom/adobe/b/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/b/a/b/a;->a()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 178
    :cond_3
    :goto_1
    return-void

    .line 159
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    invoke-static {v2, v1}, Lcom/adobe/b/a/f;->a(Lcom/adobe/b/a/f;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 162
    const-string v4, "server_response"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v2, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    invoke-static {v2}, Lcom/adobe/b/a/f;->c(Lcom/adobe/b/a/f;)Lcom/adobe/b/a/b/a;

    move-result-object v2

    new-instance v4, Lcom/adobe/b/a/a;

    const-string v5, "success"

    invoke-direct {v4, v5, v3}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/adobe/b/a/b/a;->a(Lcom/adobe/b/a/a;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    :try_start_3
    iget-object v1, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#load() - Timed out sending request("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/b/a/f$1;->a:Lcom/adobe/b/a/f$b;

    invoke-virtual {v3}, Lcom/adobe/b/a/f$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/b/a/f;->b(Lcom/adobe/b/a/f;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 171
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 172
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#load() - IOException while sending request, may retry("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/b/a/f;->b(Lcom/adobe/b/a/f;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 176
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 174
    :catch_2
    move-exception v1

    :try_start_5
    iget-object v1, p0, Lcom/adobe/b/a/f$1;->b:Lcom/adobe/b/a/f;

    const-string v2, "#load() - Unable to create HTTP connection"

    invoke-static {v1, v2}, Lcom/adobe/b/a/f;->b(Lcom/adobe/b/a/f;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 176
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 171
    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method
