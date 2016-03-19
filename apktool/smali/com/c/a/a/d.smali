.class public final Lcom/c/a/a/d;
.super Lcom/c/a/a/c;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/a/a/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/c/a/a/c;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 139
    invoke-super {p0, p1}, Lcom/c/a/a/c;->a(Landroid/os/Message;)V

    .line 142
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 136
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Throwable;

    .line 2100
    invoke-virtual {p0, v0}, Lcom/c/a/a/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Ljava/lang/Throwable;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/c/a/a/d;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/d;->b(Landroid/os/Message;)V

    .line 114
    return-void
.end method

.method final a(Lorg/apache/http/HttpResponse;)V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 146
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 147
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 149
    array-length v3, v0

    if-eq v3, v1, :cond_0

    .line 151
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v3, "None, or more than one, Content-Type Header found!"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/c/a/a/d;->a(Ljava/lang/Throwable;[B)V

    .line 182
    :goto_0
    return-void

    .line 154
    :cond_0
    aget-object v6, v0, v4

    .line 156
    sget-object v7, Lcom/c/a/a/d;->a:[Ljava/lang/String;

    array-length v8, v7

    move v3, v4

    move v0, v4

    :goto_1
    if-ge v3, v8, :cond_2

    aget-object v9, v7, v3

    .line 157
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v0, v1

    .line 156
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    :cond_2
    if-nez v0, :cond_3

    .line 163
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v3, "Content-Type not allowed!"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/c/a/a/d;->a(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 168
    :cond_3
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_5

    .line 170
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 172
    :goto_2
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_3
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_4

    .line 178
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/c/a/a/d;->a(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {p0, v0, v2}, Lcom/c/a/a/d;->a(Ljava/lang/Throwable;[B)V

    move-object v0, v2

    goto :goto_3

    .line 2109
    :cond_4
    invoke-virtual {p0, v4, v0}, Lcom/c/a/a/d;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/d;->b(Landroid/os/Message;)V

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method
