.class public final Lcom/adobe/mobile/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/adobe/mobile/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/mobile/h$a",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/adobe/mobile/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adobe/mobile/h$a",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/adobe/mobile/i$a;->a:Ljava/util/Map;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    .line 155
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 165
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->d()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/mobile/i$a$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/mobile/i$a$1;-><init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/af;->m()Lcom/adobe/mobile/ag;

    move-result-object v0

    sget-object v2, Lcom/adobe/mobile/ag;->b:Lcom/adobe/mobile/ag;

    if-ne v0, v2, :cond_2

    .line 171
    const-string v0, "Audience Manager - Privacy status is set to opt out, no signals will be submitted."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/mobile/i$a$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/mobile/i$a$1;-><init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 175
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/adobe/mobile/i$a;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/adobe/mobile/i;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 178
    const-string v0, "Audience Manager - Unable to create URL object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/mobile/i$a$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/mobile/i$a$1;-><init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 182
    :cond_3
    :try_start_3
    const-string v2, "Audience Manager - request (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 186
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 191
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 193
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 194
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 196
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 199
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    :try_start_4
    const-string v2, "Audience Manager - Unable to read response from server (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/mobile/i$a$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/mobile/i$a$1;-><init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 203
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 206
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-static {v2}, Lcom/adobe/mobile/i;->a(Lorg/json/JSONObject;)V

    .line 215
    const-string v0, "uuid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/mobile/i;->a(Ljava/lang/String;)V

    .line 218
    invoke-static {v2}, Lcom/adobe/mobile/i;->b(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_6

    .line 222
    const-string v0, "Audience Manager - response was empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/mobile/i$a$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/mobile/i$a$1;-><init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 226
    :cond_6
    :try_start_6
    const-string v2, "Audience Manager - response (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-static {v0}, Lcom/adobe/mobile/i;->c(Ljava/util/Map;)V

    .line 232
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/mobile/i$a$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/mobile/i$a$1;-><init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 237
    :catch_1
    move-exception v0

    .line 238
    :try_start_7
    const-string v2, "Audience Manager - Unable to parse JSON data (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/mobile/i$a$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/mobile/i$a$1;-><init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 240
    :catch_2
    move-exception v0

    .line 241
    :try_start_8
    const-string v2, "Audience Manager - Unexpected error parsing result (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/mobile/i$a$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/mobile/i$a$1;-><init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 245
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/adobe/mobile/i$a;->b:Lcom/adobe/mobile/h$a;

    if-eqz v2, :cond_7

    .line 246
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/adobe/mobile/i$a$1;

    invoke-direct {v3, p0, v1}, Lcom/adobe/mobile/i$a$1;-><init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_7
    throw v0
.end method
