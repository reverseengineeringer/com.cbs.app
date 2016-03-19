.class final Lcom/urbanairship/richpush/f;
.super Lcom/urbanairship/BaseIntentService$a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/p;

.field private final b:Lcom/urbanairship/richpush/e;

.field private final c:Lcom/urbanairship/b/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/urbanairship/b/b;

    invoke-direct {v0}, Lcom/urbanairship/b/b;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/urbanairship/richpush/f;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/b/b;Lcom/urbanairship/p;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/b/b;Lcom/urbanairship/p;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$a;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    .line 76
    iput-object p3, p0, Lcom/urbanairship/richpush/f;->c:Lcom/urbanairship/b/b;

    .line 77
    iput-object p4, p0, Lcom/urbanairship/richpush/f;->a:Lcom/urbanairship/p;

    .line 78
    invoke-virtual {p4}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/e;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/richpush/f;->b:Lcom/urbanairship/richpush/e;

    .line 79
    return-void
.end method

.method private c()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    iget-object v1, p0, Lcom/urbanairship/richpush/f;->a:Lcom/urbanairship/p;

    invoke-virtual {v1}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 161
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string v4, "api/user/"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v4

    .line 119
    if-nez v4, :cond_1

    move v0, v2

    .line 120
    goto :goto_0

    .line 2208
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2209
    invoke-direct {p0}, Lcom/urbanairship/richpush/f;->d()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    aput-object v1, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    sget-object v1, Lcom/urbanairship/json/JsonValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-static {v5, v1}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v5, "POST"

    invoke-static {v5, v4}, Lcom/urbanairship/b/b;->a(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/urbanairship/richpush/f;->a:Lcom/urbanairship/p;

    invoke-virtual {v5}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/urbanairship/richpush/f;->a:Lcom/urbanairship/p;

    invoke-virtual {v6}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v4

    const-string v5, "application/json"

    invoke-virtual {v4, v1, v5}, Lcom/urbanairship/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v1

    const-string v4, "Accept"

    const-string v5, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v1, v4, v5}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/b/a;->b()Lcom/urbanairship/b/c;

    move-result-object v4

    .line 132
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/urbanairship/b/c;->a()I

    move-result v1

    const/16 v5, 0xc9

    if-eq v1, v5, :cond_3

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserServiceDelegate - Rich Push user creation failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 134
    goto :goto_0

    .line 141
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Lcom/urbanairship/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v5

    .line 142
    if-eqz v5, :cond_6

    .line 143
    const-string v0, "user_id"

    invoke-virtual {v5, v0}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v0, "password"

    invoke-virtual {v5, v0}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_1
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 152
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserServiceDelegate - Rich Push user creation failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v2

    .line 153
    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserServiceDelegate - Unable to parse Rich Push user response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v2

    .line 148
    goto/16 :goto_0

    .line 157
    :cond_5
    invoke-virtual {p0}, Lcom/urbanairship/richpush/f;->b()Lcom/urbanairship/l;

    move-result-object v2

    const-string v4, "com.urbanairship.user.LAST_UPDATE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/urbanairship/l;->b(Ljava/lang/String;J)V

    .line 158
    invoke-virtual {p0}, Lcom/urbanairship/richpush/f;->b()Lcom/urbanairship/l;

    move-result-object v2

    const-string v4, "com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME"

    invoke-virtual {v2, v4}, Lcom/urbanairship/l;->c(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/urbanairship/richpush/f;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v2, v1, v0}, Lcom/urbanairship/richpush/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 161
    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/richpush/f;->a:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    const-string v0, "android_channels"

    :goto_0
    return-object v0

    .line 236
    :pswitch_0
    const-string v0, "amazon_channels"

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    const-string v2, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v2, "com.urbanairship.richpush.EXTRA_FORCEFULLY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/urbanairship/richpush/f;->b()Lcom/urbanairship/l;

    move-result-object v2

    const-string v3, "com.urbanairship.user.LAST_UPDATE_TIME"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/urbanairship/l;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 90
    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 97
    :cond_2
    invoke-static {}, Lcom/urbanairship/richpush/e;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 98
    invoke-direct {p0}, Lcom/urbanairship/richpush/f;->c()Z

    move-result v0

    .line 103
    :cond_3
    :goto_1
    invoke-static {p1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 1170
    :cond_4
    iget-object v2, p0, Lcom/urbanairship/richpush/f;->a:Lcom/urbanairship/p;

    invoke-virtual {v2}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v2

    .line 1172
    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1178
    const-string v3, "api/user/%s/"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/urbanairship/richpush/f;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v5}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v3

    .line 1179
    if-eqz v3, :cond_3

    .line 1219
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1220
    const-string v5, "add"

    new-array v6, v1, [Ljava/lang/String;

    aput-object v2, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1223
    invoke-direct {p0}, Lcom/urbanairship/richpush/f;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v4, Lcom/urbanairship/json/JsonValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-static {v2, v4}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1185
    const-string v4, "POST"

    invoke-static {v4, v3}, Lcom/urbanairship/b/b;->a(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/richpush/f;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v4}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/urbanairship/richpush/f;->b:Lcom/urbanairship/richpush/e;

    invoke-virtual {v5}, Lcom/urbanairship/richpush/e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v3, v2, v4}, Lcom/urbanairship/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v2

    const-string v3, "Accept"

    const-string v4, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/b/a;->b()Lcom/urbanairship/b/c;

    move-result-object v2

    .line 1191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UserServiceDelegate - Update Rich Push user response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1192
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/urbanairship/b/c;->a()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 1194
    invoke-virtual {p0}, Lcom/urbanairship/richpush/f;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v2, "com.urbanairship.user.LAST_UPDATE_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/urbanairship/l;->b(Ljava/lang/String;J)V

    move v0, v1

    .line 1195
    goto/16 :goto_1

    .line 1198
    :cond_5
    invoke-virtual {p0}, Lcom/urbanairship/richpush/f;->b()Lcom/urbanairship/l;

    move-result-object v1

    const-string v2, "com.urbanairship.user.LAST_UPDATE_TIME"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/l;->b(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method
