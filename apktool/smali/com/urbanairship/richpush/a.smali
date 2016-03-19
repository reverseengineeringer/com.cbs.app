.class final Lcom/urbanairship/richpush/a;
.super Lcom/urbanairship/BaseIntentService$a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/p;

.field private final b:Lcom/urbanairship/richpush/e;

.field private final c:Lcom/urbanairship/richpush/d;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/urbanairship/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;)V
    .locals 6

    .prologue
    .line 76
    new-instance v3, Lcom/urbanairship/b/b;

    invoke-direct {v3}, Lcom/urbanairship/b/b;-><init>()V

    new-instance v4, Lcom/urbanairship/richpush/d;

    invoke-direct {v4, p1}, Lcom/urbanairship/richpush/d;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/richpush/a;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/b/b;Lcom/urbanairship/richpush/d;Lcom/urbanairship/p;)V

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/b/b;Lcom/urbanairship/richpush/d;Lcom/urbanairship/p;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$a;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    .line 83
    iput-object p3, p0, Lcom/urbanairship/richpush/a;->e:Lcom/urbanairship/b/b;

    .line 84
    iput-object p4, p0, Lcom/urbanairship/richpush/a;->c:Lcom/urbanairship/richpush/d;

    .line 85
    iput-object p5, p0, Lcom/urbanairship/richpush/a;->a:Lcom/urbanairship/p;

    .line 86
    invoke-virtual {p5}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/e;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    .line 87
    invoke-virtual {p5}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/urbanairship/richpush/a;->d:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 310
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    iget-object v0, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/urbanairship/richpush/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "api/user/%s/messages/message/%s/"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 316
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 317
    goto :goto_1
.end method

.method private a(Lcom/urbanairship/json/b;)V
    .locals 6

    .prologue
    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 183
    invoke-virtual {p1}, Lcom/urbanairship/json/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 184
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->l()Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InboxServiceDelegate - Invalid message payload: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v4

    const-string v5, "message_id"

    invoke-virtual {v4, v5}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v4

    .line 190
    if-nez v4, :cond_2

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InboxServiceDelegate - Invalid message payload, missing message ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v5, p0, Lcom/urbanairship/richpush/a;->c:Lcom/urbanairship/richpush/d;

    invoke-virtual {v5, v4, v0}, Lcom/urbanairship/richpush/d;->a(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 198
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/urbanairship/richpush/a;->c:Lcom/urbanairship/richpush/d;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/d;->a(Ljava/util/List;)I

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/richpush/a;->c:Lcom/urbanairship/richpush/d;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/d;->b()Ljava/util/Set;

    move-result-object v0

    .line 209
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 210
    iget-object v1, p0, Lcom/urbanairship/richpush/a;->c:Lcom/urbanairship/richpush/d;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/d;->c(Ljava/util/Set;)I

    .line 213
    iget-object v0, p0, Lcom/urbanairship/richpush/a;->a:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->c()Lcom/urbanairship/richpush/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/b;->a()V

    .line 214
    return-void
.end method

.method private c()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    const-string v0, "api/user/%s/messages/"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 128
    :cond_0
    const-string v3, "GET"

    invoke-static {v3, v0}, Lcom/urbanairship/b/b;->a(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/b/a;

    move-result-object v0

    iget-object v3, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v3}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/urbanairship/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v3, "Accept"

    const-string v4, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v0, v3, v4}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    const-string v3, "X-UA-Channel-ID"

    iget-object v4, p0, Lcom/urbanairship/richpush/a;->a:Lcom/urbanairship/p;

    invoke-virtual {v4}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/richpush/a;->b()Lcom/urbanairship/l;

    move-result-object v3

    const-string v4, "com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/urbanairship/l;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/urbanairship/b/a;->a(J)Lcom/urbanairship/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/b/a;->b()Lcom/urbanairship/b/c;

    move-result-object v3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "InboxServiceDelegate - Fetch inbox messages response: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    if-nez v3, :cond_1

    const/4 v0, -0x1

    .line 140
    :goto_1
    const/16 v4, 0x130

    if-ne v0, v4, :cond_2

    move v0, v2

    .line 142
    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v3}, Lcom/urbanairship/b/c;->a()I

    move-result v0

    goto :goto_1

    .line 146
    :cond_2
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_6

    .line 147
    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-virtual {v3}, Lcom/urbanairship/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v4

    .line 150
    if-eqz v4, :cond_3

    .line 151
    const-string v0, "messages"

    invoke-virtual {v4, v0}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->e()Lcom/urbanairship/json/b;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/urbanairship/json/b;->a()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    :goto_2
    move v0, v2

    .line 166
    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to update inbox. Unable to parse response body: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/urbanairship/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v1

    .line 155
    goto/16 :goto_0

    .line 161
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Received "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/json/b;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " inbox messages."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/a;->a(Lcom/urbanairship/json/b;)V

    .line 163
    invoke-virtual {p0}, Lcom/urbanairship/richpush/a;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v1, "com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME"

    invoke-virtual {v3}, Lcom/urbanairship/b/c;->c()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/urbanairship/l;->b(Ljava/lang/String;J)V

    goto :goto_2

    :cond_6
    move v0, v1

    .line 170
    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_1
    :goto_1
    return-void

    .line 92
    :sswitch_0
    const-string v4, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "com.urbanairship.richpush.SYNC_MESSAGE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-static {}, Lcom/urbanairship/richpush/e;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    invoke-static {p1, v1}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Landroid/content/Intent;Z)V

    goto :goto_1

    .line 99
    :cond_2
    invoke-direct {p0}, Lcom/urbanairship/richpush/a;->c()Z

    move-result v0

    .line 100
    invoke-static {p1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Landroid/content/Intent;Z)V

    .line 1261
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/richpush/a;->c:Lcom/urbanairship/richpush/d;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/d;->c()Ljava/util/Set;

    move-result-object v0

    .line 1263
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1269
    const-string v3, "api/user/%s/messages/unread/"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v5}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v3

    .line 1270
    if-eqz v3, :cond_3

    .line 1274
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InboxServiceDelegate - Found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messages to mark read."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    const-string v4, "mark_as_read"

    invoke-direct {p0, v4, v0}, Lcom/urbanairship/richpush/a;->a(Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1281
    if-eqz v4, :cond_3

    .line 1285
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InboxServiceDelegate - Marking inbox messages read request with payload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1286
    const-string v5, "POST"

    invoke-static {v5, v3}, Lcom/urbanairship/b/b;->a(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/b/a;

    move-result-object v3

    iget-object v5, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v5}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v6}, Lcom/urbanairship/richpush/e;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/urbanairship/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v3

    const-string v4, "X-UA-Channel-ID"

    iget-object v5, p0, Lcom/urbanairship/richpush/a;->a:Lcom/urbanairship/p;

    invoke-virtual {v5}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v3

    const-string v4, "Accept"

    const-string v5, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/b/a;->b()Lcom/urbanairship/b/c;

    move-result-object v3

    .line 1293
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InboxServiceDelegate - Mark inbox messages read response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1295
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/urbanairship/b/c;->a()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 1296
    iget-object v3, p0, Lcom/urbanairship/richpush/a;->c:Lcom/urbanairship/richpush/d;

    invoke-virtual {v3, v0}, Lcom/urbanairship/richpush/d;->b(Ljava/util/Set;)I

    .line 2220
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/richpush/a;->c:Lcom/urbanairship/richpush/d;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/d;->d()Ljava/util/Set;

    move-result-object v0

    .line 2222
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2227
    const-string v3, "api/user/%s/messages/delete/"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v1

    .line 2228
    if-eqz v1, :cond_1

    .line 2232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InboxServiceDelegate - Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messages to delete."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    const-string v2, "delete"

    invoke-direct {p0, v2, v0}, Lcom/urbanairship/richpush/a;->a(Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2239
    if-eqz v2, :cond_1

    .line 2243
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InboxServiceDelegate - Deleting inbox messages with payload: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2244
    const-string v3, "POST"

    invoke-static {v3, v1}, Lcom/urbanairship/b/b;->a(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/b/a;

    move-result-object v1

    iget-object v3, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v3}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/richpush/a;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v1

    const-string v2, "X-UA-Channel-ID"

    iget-object v3, p0, Lcom/urbanairship/richpush/a;->a:Lcom/urbanairship/p;

    invoke-virtual {v3}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/b/a;->b()Lcom/urbanairship/b/c;

    move-result-object v1

    .line 2251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InboxServiceDelegate - Delete inbox messages response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2252
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/urbanairship/b/c;->a()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 2253
    iget-object v1, p0, Lcom/urbanairship/richpush/a;->c:Lcom/urbanairship/richpush/d;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/d;->c(Ljava/util/Set;)I

    goto/16 :goto_1

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x65472331 -> :sswitch_0
        0x7be57f40 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
