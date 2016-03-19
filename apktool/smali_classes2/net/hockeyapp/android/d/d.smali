.class public final Lnet/hockeyapp/android/d/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    iput-object p1, p0, Lnet/hockeyapp/android/d/d;->a:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lnet/hockeyapp/android/d/d;->c:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lnet/hockeyapp/android/d/d;->d:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lnet/hockeyapp/android/d/d;->e:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Lnet/hockeyapp/android/d/d;->f:Ljava/lang/String;

    .line 105
    iput-object p6, p0, Lnet/hockeyapp/android/d/d;->g:Ljava/lang/String;

    .line 106
    iput-object p7, p0, Lnet/hockeyapp/android/d/d;->h:Ljava/lang/String;

    .line 107
    iput-object p8, p0, Lnet/hockeyapp/android/d/d;->b:Landroid/os/Handler;

    .line 108
    iput-boolean p9, p0, Lnet/hockeyapp/android/d/d;->i:Z

    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-static {p1}, Lnet/hockeyapp/android/a;->a(Landroid/content/Context;)V

    .line 113
    :cond_0
    return-void
.end method

.method private a(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 188
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    iget-object v4, p0, Lnet/hockeyapp/android/d/d;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "email"

    iget-object v4, p0, Lnet/hockeyapp/android/d/d;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "subject"

    iget-object v4, p0, Lnet/hockeyapp/android/d/d;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "text"

    iget-object v4, p0, Lnet/hockeyapp/android/d/d;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bundle_identifier"

    sget-object v4, Lnet/hockeyapp/android/a;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bundle_short_version"

    sget-object v4, Lnet/hockeyapp/android/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bundle_version"

    sget-object v4, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "os_version"

    sget-object v4, Lnet/hockeyapp/android/a;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "oem"

    sget-object v4, Lnet/hockeyapp/android/a;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "model"

    sget-object v4, Lnet/hockeyapp/android/a;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v3, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 201
    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lnet/hockeyapp/android/d/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/hockeyapp/android/d/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/hockeyapp/android/d/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/d/d;->c:Ljava/lang/String;

    .line 207
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    iget-object v2, p0, Lnet/hockeyapp/android/d/d;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 214
    :goto_0
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 216
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    move-object v2, v0

    .line 223
    :goto_1
    if-eqz v2, :cond_2

    .line 224
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    const-string v4, "type"

    const-string v5, "send"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v4, "response"

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v3, "status"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :goto_2
    return-object v0

    .line 210
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lnet/hockeyapp/android/d/d;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 220
    invoke-interface {p1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 234
    goto :goto_2

    .line 237
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    move-object v0, v1

    .line 246
    goto :goto_2

    .line 240
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_3

    .line 243
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private b(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/hockeyapp/android/d/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/d/d;->h:Ljava/lang/String;

    invoke-static {v2}, Lnet/hockeyapp/android/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-interface {p1, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 263
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    const-string v3, "type"

    const-string v4, "fetch"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v3, "response"

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v2, "status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 282
    :goto_0
    return-object v0

    .line 273
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 282
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 279
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lnet/hockeyapp/android/d/d;->a:Landroid/content/Context;

    .line 121
    iput-object v0, p0, Lnet/hockeyapp/android/d/d;->j:Landroid/app/ProgressDialog;

    .line 122
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    .line 2138
    invoke-static {}, Lnet/hockeyapp/android/e/a;->a()Lnet/hockeyapp/android/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/e/a;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 2140
    iget-boolean v1, p0, Lnet/hockeyapp/android/d/d;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hockeyapp/android/d/d;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2142
    invoke-direct {p0, v0}, Lnet/hockeyapp/android/d/d;->b(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;

    move-result-object v0

    .line 2149
    :goto_0
    return-object v0

    .line 2144
    :cond_0
    iget-boolean v1, p0, Lnet/hockeyapp/android/d/d;->i:Z

    if-nez v1, :cond_1

    .line 2149
    invoke-direct {p0, v0}, Lnet/hockeyapp/android/d/d;->a(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 2152
    :cond_1
    const/4 v0, 0x0

    .line 69
    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 69
    check-cast p1, Ljava/util/HashMap;

    .line 1157
    iget-object v0, p0, Lnet/hockeyapp/android/d/d;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1159
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/d/d;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/hockeyapp/android/d/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1168
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1171
    const-string v3, "request_type"

    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v3, "feedback_response"

    const-string v0, "response"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v3, "feedback_status"

    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1176
    iget-object v0, p0, Lnet/hockeyapp/android/d/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    :cond_1
    return-void

    .line 1162
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 5

    .prologue
    .line 126
    const-string v0, "Sending feedback.."

    .line 127
    iget-boolean v1, p0, Lnet/hockeyapp/android/d/d;->i:Z

    if-eqz v1, :cond_0

    .line 128
    const-string v0, "Retrieving discussions..."

    .line 131
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/d/d;->j:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/hockeyapp/android/d/d;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    :cond_1
    iget-object v1, p0, Lnet/hockeyapp/android/d/d;->a:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/d/d;->j:Landroid/app/ProgressDialog;

    .line 134
    :cond_2
    return-void
.end method
