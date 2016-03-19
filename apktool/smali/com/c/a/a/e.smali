.class public Lcom/c/a/a/e;
.super Lcom/c/a/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/c/a/a/c;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 115
    :cond_1
    if-nez v1, :cond_2

    .line 118
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lcom/c/a/a/c;->a(Landroid/os/Message;)V

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1099
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 1100
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/c/a/a/e;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1101
    :cond_1
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_0

    .line 1104
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/c/a/a/e;->a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    :try_start_0
    invoke-static {p1}, Lcom/c/a/a/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/c/a/a/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/e;->b(Landroid/os/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/c/a/a/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method protected final c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    if-eqz p2, :cond_2

    .line 125
    :try_start_0
    invoke-static {p2}, Lcom/c/a/a/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/e;->a(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 139
    :goto_0
    return-void

    .line 128
    :cond_0
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    .line 129
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/e;->a(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, p2}, Lcom/c/a/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/c/a/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
