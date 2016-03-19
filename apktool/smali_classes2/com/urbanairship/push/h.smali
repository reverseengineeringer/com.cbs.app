.class final Lcom/urbanairship/push/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field private final b:Lcom/urbanairship/b/b;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/urbanairship/b/b;

    invoke-direct {v0}, Lcom/urbanairship/b/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/push/h;-><init>(Lcom/urbanairship/b/b;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/b/b;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/urbanairship/push/h;->b:Lcom/urbanairship/b/b;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/named_users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/h;->a:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Lcom/urbanairship/b/c;
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v2, "POST"

    invoke-static {v2, p0}, Lcom/urbanairship/b/b;->a(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, p1, v1}, Lcom/urbanairship/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v1, "Accept"

    const-string v2, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/b/a;->b()Lcom/urbanairship/b/c;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    .line 140
    const-string v1, "Failed to receive a response for named user."

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received a response for named user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->u()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 163
    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    const-string v0, "android"

    goto :goto_0

    .line 160
    :pswitch_1
    const-string v0, "amazon"

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/urbanairship/b/c;
    .locals 3

    .prologue
    .line 101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    :try_start_0
    const-string v0, "channel_id"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v0, "device_type"

    invoke-static {}, Lcom/urbanairship/push/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/urbanairship/push/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/disassociate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/urbanairship/push/h;->a(Ljava/net/URL;Ljava/lang/String;)Lcom/urbanairship/b/c;

    move-result-object v0

    :goto_1
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v2, "Failed to create disassociate named user payload as json."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    const-string v1, "Invalid hostURL"

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/c;
    .locals 3

    .prologue
    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 74
    :try_start_0
    const-string v0, "channel_id"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v0, "device_type"

    invoke-static {}, Lcom/urbanairship/push/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v0, "named_user_id"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/urbanairship/push/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/associate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/urbanairship/push/h;->a(Ljava/net/URL;Ljava/lang/String;)Lcom/urbanairship/b/c;

    move-result-object v0

    :goto_1
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v2, "Failed to create associate named user payload as json."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    const-string v1, "Invalid hostURL"

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v0, 0x0

    goto :goto_1
.end method
