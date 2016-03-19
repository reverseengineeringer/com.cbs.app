.class public final Lcom/urbanairship/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/net/URL;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/urbanairship/b/a;->h:J

    .line 65
    iput-boolean v7, p0, Lcom/urbanairship/b/a;->i:Z

    .line 74
    iput-object p1, p0, Lcom/urbanairship/b/a;->d:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/urbanairship/b/a;->a:Ljava/net/URL;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/b/a;->g:Ljava/util/Map;

    .line 78
    iget-object v1, p0, Lcom/urbanairship/b/a;->g:Ljava/util/Map;

    const-string v2, "User-Agent"

    .line 1242
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->u()I

    move-result v0

    if-ne v0, v8, :cond_0

    const-string v0, "amazon"

    .line 1244
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s (%s; %s; UrbanAirshipLib-%s/%s; %s; %s)"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v0, 0x4

    invoke-static {}, Lcom/urbanairship/p;->k()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x5

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void

    .line 1242
    :cond_0
    const-string v0, "android"

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 254
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 264
    :catchall_0
    move-exception v0

    .line 265
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 266
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :goto_2
    throw v0

    .line 262
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 266
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 272
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const-string v1, "Failed to close streams"

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 267
    :catch_1
    move-exception v1

    .line 268
    const-string v2, "Failed to close streams"

    invoke-static {v2, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public final a()Lcom/urbanairship/b/a;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/b/a;->i:Z

    .line 153
    return-object p0
.end method

.method public final a(J)Lcom/urbanairship/b/a;
    .locals 1

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/urbanairship/b/a;->h:J

    .line 119
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/urbanairship/b/a;->b:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/urbanairship/b/a;->c:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/urbanairship/b/a;->e:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/urbanairship/b/a;->f:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public final b()Lcom/urbanairship/b/c;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 162
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/b/a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/urbanairship/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/urbanairship/b/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 170
    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/urbanairship/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 177
    iget-wide v4, p0, Lcom/urbanairship/b/a;->h:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 178
    iget-wide v4, p0, Lcom/urbanairship/b/a;->h:J

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/b/a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    iget-object v2, p0, Lcom/urbanairship/b/a;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request - Request failed URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/urbanairship/b/a;->a:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v3

    :goto_2
    return-object v0

    .line 185
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/urbanairship/b/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/urbanairship/b/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/urbanairship/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v2, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Basic "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/urbanairship/b/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 193
    iget-boolean v1, p0, Lcom/urbanairship/b/a;->i:Z

    if-eqz v1, :cond_7

    .line 194
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 198
    iget-object v5, p0, Lcom/urbanairship/b/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4}, Ljava/io/Writer;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 201
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 211
    :cond_5
    :goto_3
    new-instance v1, Lcom/urbanairship/b/c$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/urbanairship/b/c$a;-><init>(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/b/c$a;->a(Ljava/lang/String;)Lcom/urbanairship/b/c$a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/b/c$a;->a(Ljava/util/Map;)Lcom/urbanairship/b/c$a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/urbanairship/b/c$a;->a(J)Lcom/urbanairship/b/c$a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 218
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/b/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/b/c$a;->b(Ljava/lang/String;)Lcom/urbanairship/b/c$a;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Lcom/urbanairship/b/c$a;->a()Lcom/urbanairship/b/c;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 229
    if-eqz v0, :cond_6

    .line 230
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-object v0, v1

    goto/16 :goto_2

    .line 203
    :cond_7
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 204
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v2, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/urbanairship/b/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 207
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 229
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_5
    if-eqz v3, :cond_8

    .line 230
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    .line 220
    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/b/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/b/c$a;->b(Ljava/lang/String;)Lcom/urbanairship/b/c$a;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 229
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 226
    :catch_2
    move-exception v0

    move-object v0, v3

    goto/16 :goto_1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;
    .locals 1

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/urbanairship/b/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_0
    return-object p0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/b/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
