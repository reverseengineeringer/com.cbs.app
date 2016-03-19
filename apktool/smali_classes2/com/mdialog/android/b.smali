.class Lcom/mdialog/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/c;
    .locals 2

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 67
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/mdialog/android/a/a;->a(Lorg/apache/http/client/methods/HttpRequestBase;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 75
    new-instance v1, Lcom/mdialog/android/a/b;

    invoke-static {v0}, Lcom/mdialog/android/b;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mdialog/android/a/b;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lcom/mdialog/android/a/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mdialog/android/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :pswitch_0
    :try_start_1
    invoke-static {v0, p1}, Lcom/mdialog/android/b;->a(Lorg/apache/http/HttpResponse;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lorg/apache/http/HttpResponse;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/c;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/mdialog/android/a/a;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/mdialog/android/stream/c;->a(Lorg/json/JSONObject;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lcom/mdialog/android/a/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mdialog/android/a/b;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static a(Ljava/lang/String;)Lcom/mdialog/android/stream/e;
    .locals 2

    .prologue
    .line 26
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 28
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/mdialog/android/a/a;->a(Lorg/apache/http/client/methods/HttpRequestBase;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 35
    new-instance v1, Lcom/mdialog/android/a/b;

    invoke-static {v0}, Lcom/mdialog/android/b;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mdialog/android/a/b;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lcom/mdialog/android/a/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mdialog/android/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :pswitch_0
    :try_start_1
    invoke-static {v0}, Lcom/mdialog/android/b;->a(Lorg/apache/http/HttpResponse;)Lcom/mdialog/android/stream/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 30
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Lcom/mdialog/android/stream/e;
    .locals 2

    .prologue
    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/mdialog/android/a/a;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mdialog/android/stream/e;->a(Lorg/json/JSONObject;)Lcom/mdialog/android/stream/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lcom/mdialog/android/a/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mdialog/android/a/b;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcom/mdialog/android/a/a;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 88
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/mdialog/android/a/a;->a(Lorg/apache/http/client/methods/HttpRequestBase;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 106
    :goto_0
    :sswitch_0
    return-void

    .line 96
    :sswitch_1
    new-instance v1, Lcom/mdialog/android/a/e;

    invoke-static {v0}, Lcom/mdialog/android/b;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mdialog/android/a/e;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    :sswitch_2
    :try_start_1
    new-instance v1, Lcom/mdialog/android/a/e;

    invoke-static {v0}, Lcom/mdialog/android/b;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mdialog/android/a/e;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x194 -> :sswitch_1
        0x19a -> :sswitch_2
    .end sparse-switch
.end method
