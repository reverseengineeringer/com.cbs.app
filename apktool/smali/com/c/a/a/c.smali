.class public Lcom/c/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/c/a/a/c$1;

    invoke-direct {v0, p0}, Lcom/c/a/a/c$1;-><init>(Lcom/c/a/a/c;)V

    iput-object v0, p0, Lcom/c/a/a/c;->a:Landroid/os/Handler;

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/c/a/a/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/c/a/a/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 201
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 202
    iput p1, v0, Landroid/os/Message;->what:I

    .line 203
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final a()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/c;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/c;->b(Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 177
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/c/a/a/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/c/a/a/c;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/c;->b(Landroid/os/Message;)V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/c/a/a/c;->a(Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method

.method protected a(Ljava/lang/Throwable;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/c/a/a/c;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/c;->b(Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method a(Lorg/apache/http/HttpResponse;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 215
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    .line 217
    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 218
    const-string v1, "UTF-8"

    invoke-static {v3, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0x12c

    if-lt v1, v3, :cond_1

    .line 225
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/c/a/a/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 229
    :goto_1
    return-void

    .line 220
    :catch_0
    move-exception v1

    .line 221
    invoke-virtual {p0, v1, v0}, Lcom/c/a/a/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0, v0}, Lcom/c/a/a/c;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/c/a/a/c;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/c;->b(Landroid/os/Message;)V

    .line 152
    return-void
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/c/a/a/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/c/a/a/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lcom/c/a/a/c;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/c/a/a/c;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/c;->b(Landroid/os/Message;)V

    .line 140
    return-void
.end method

.method protected c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/c/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 165
    return-void
.end method
