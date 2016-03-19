.class final Lcom/urbanairship/push/d;
.super Lcom/urbanairship/BaseIntentService$a;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z


# instance fields
.field private final c:Lcom/urbanairship/p;

.field private final d:Lcom/urbanairship/push/j;

.field private final e:Lcom/urbanairship/push/k;

.field private final f:Lcom/urbanairship/push/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/urbanairship/push/d;->a:Z

    .line 73
    sput-boolean v0, Lcom/urbanairship/push/d;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/urbanairship/push/a;

    invoke-direct {v0}, Lcom/urbanairship/push/a;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/urbanairship/push/d;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/push/a;Lcom/urbanairship/p;)V

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/push/a;Lcom/urbanairship/p;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$a;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    .line 87
    iput-object p3, p0, Lcom/urbanairship/push/d;->f:Lcom/urbanairship/push/a;

    .line 88
    iput-object p4, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    .line 89
    invoke-virtual {p4}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    .line 90
    invoke-virtual {p4}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->f()Lcom/urbanairship/push/k;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/d;->e:Lcom/urbanairship/push/k;

    .line 91
    return-void
.end method

.method private a(Lcom/urbanairship/push/b;)V
    .locals 4

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v1, "com.urbanairship.push.LAST_REGISTRATION_PAYLOAD"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Lcom/urbanairship/json/d;)V

    .line 488
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v1, "com.urbanairship.push.LAST_REGISTRATION_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/l;->b(Ljava/lang/String;J)V

    .line 489
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.CHANNEL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.push.EXTRA_CHANNEL_ID"

    iget-object v2, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v2}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 537
    if-nez p1, :cond_0

    .line 538
    const-string v1, "com.urbanairship.push.EXTRA_ERROR"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method private c()Ljava/net/URL;
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->u()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-object v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Channel location from preferences was invalid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/urbanairship/push/b;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v2, "com.urbanairship.push.LAST_REGISTRATION_PAYLOAD"

    invoke-virtual {v0, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4322
    :try_start_0
    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v3

    .line 4323
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/urbanairship/json/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 4324
    :goto_0
    return-object v0

    .line 4327
    :cond_1
    new-instance v4, Lcom/urbanairship/push/b$a;

    invoke-direct {v4}, Lcom/urbanairship/push/b$a;-><init>()V

    .line 4329
    const-string v0, "channel"

    invoke-virtual {v3, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v5

    .line 4330
    if-eqz v5, :cond_4

    .line 4331
    const-string v0, "opt_in"

    invoke-virtual {v5, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/JsonValue;->a(Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/b$a;->a(Z)Lcom/urbanairship/push/b$a;

    move-result-object v0

    const-string v2, "background"

    invoke-virtual {v5, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/urbanairship/json/JsonValue;->a(Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/b$a;->b(Z)Lcom/urbanairship/push/b$a;

    move-result-object v0

    const-string v2, "device_type"

    invoke-virtual {v5, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/b$a;->b(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v0

    const-string v2, "push_address"

    invoke-virtual {v5, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/b$a;->c(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v0

    const-string v2, "alias"

    invoke-virtual {v5, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/b$a;->a(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v0

    const-string v2, "user_id"

    invoke-virtual {v5, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/b$a;->d(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v0

    const-string v2, "apid"

    invoke-virtual {v5, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/b$a;->e(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    .line 4340
    const-string v0, "tags"

    invoke-virtual {v5, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4341
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4342
    const-string v0, "tags"

    invoke-virtual {v5, v0}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->e()Lcom/urbanairship/json/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/b;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 4343
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->h()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4344
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string v2, "ChannelServiceDelegate - Failed to parse payload from JSON."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 504
    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    .line 4349
    :goto_2
    :try_start_1
    const-string v2, "set_tags"

    invoke-virtual {v5, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/urbanairship/json/JsonValue;->a(Z)Z

    move-result v2

    invoke-virtual {v4, v2, v0}, Lcom/urbanairship/push/b$a;->a(ZLjava/util/Set;)Lcom/urbanairship/push/b$a;

    .line 4352
    :cond_4
    const-string v0, "identity_hints"

    invoke-virtual {v3, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    .line 4354
    if-eqz v0, :cond_5

    .line 4355
    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/urbanairship/push/b$a;->d(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    move-result-object v2

    const-string v3, "apid"

    invoke-virtual {v0, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/urbanairship/push/b$a;->e(Ljava/lang/String;)Lcom/urbanairship/push/b$a;

    .line 4359
    :cond_5
    invoke-virtual {v4}, Lcom/urbanairship/push/b$a;->a()Lcom/urbanairship/push/b;
    :try_end_1
    .catch Lcom/urbanairship/json/a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3363
    :cond_1
    :goto_1
    return-void

    .line 95
    :sswitch_0
    const-string v2, "com.urbanairship.push.ACTION_START_REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1119
    :pswitch_0
    sget-boolean v0, Lcom/urbanairship/push/d;->b:Z

    if-nez v0, :cond_1

    .line 1124
    const/4 v0, 0x1

    sput-boolean v0, Lcom/urbanairship/push/d;->b:Z

    .line 1410
    iget-object v0, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1424
    :cond_2
    const/4 v0, 0x0

    .line 1126
    :goto_2
    if-eqz v0, :cond_9

    .line 1438
    invoke-static {}, Lcom/urbanairship/p;->e()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, p0, Lcom/urbanairship/push/d;->e:Lcom/urbanairship/push/k;

    invoke-virtual {v1}, Lcom/urbanairship/push/k;->l()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChannelServiceDelegate - Version code changed to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/p;->e()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Push re-registration required."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    const/4 v0, 0x1

    .line 1126
    :goto_3
    if-eqz v0, :cond_9

    .line 1127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/urbanairship/push/d;->a:Z

    .line 1130
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1132
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 1412
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Lcom/urbanairship/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1416
    const/4 v0, 0x1

    goto :goto_2

    .line 1418
    :pswitch_2
    iget-object v0, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    const-string v1, "ADM"

    invoke-virtual {v0, v1}, Lcom/urbanairship/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1422
    const/4 v0, 0x1

    goto :goto_2

    .line 1441
    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/d;->e:Lcom/urbanairship/push/k;

    invoke-virtual {v1}, Lcom/urbanairship/push/k;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1443
    const/4 v0, 0x1

    goto :goto_3

    .line 1446
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 1477
    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    .line 1448
    :pswitch_3
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1449
    const/4 v0, 0x1

    goto :goto_3

    .line 1452
    :cond_5
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1453
    const/4 v0, 0x1

    goto :goto_3

    .line 1456
    :cond_6
    iget-object v0, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/a;->d()Ljava/util/Set;

    move-result-object v0

    .line 1457
    iget-object v1, p0, Lcom/urbanairship/push/d;->e:Lcom/urbanairship/push/k;

    invoke-virtual {v1}, Lcom/urbanairship/push/k;->r()Ljava/util/Set;

    move-result-object v1

    .line 1460
    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1462
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1465
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChannelServiceDelegate - GCM already registered with ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v1}, Lcom/urbanairship/push/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1469
    :pswitch_4
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1470
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1473
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChannelServiceDelegate - ADM already registered with ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v1}, Lcom/urbanairship/push/j;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1135
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1137
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 2147
    :pswitch_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/push/d;->a:Z

    .line 2149
    iget-object v0, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 2185
    const-string v0, "Unknown platform type. Unable to register for push."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 2188
    :cond_a
    :goto_5
    sget-boolean v0, Lcom/urbanairship/push/d;->a:Z

    if-nez v0, :cond_1

    .line 2190
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2193
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 2152
    :pswitch_6
    const-string v0, "com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2153
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/j;->e(Ljava/lang/String;)V

    .line 2154
    const-string v0, "com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2157
    :cond_b
    invoke-static {}, Lcom/urbanairship/google/a;->b()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2158
    const-string v0, "GCM is unavailable. Unable to register for push notifications. If using the modular Google Play Services dependencies, make sure the application includes the com.google.android.gms:play-services-gcm dependency."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 2165
    :cond_c
    :try_start_0
    invoke-static {}, Lcom/urbanairship/push/e;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2166
    const-string v0, "GCM registration failed."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 2168
    :catch_0
    move-exception v0

    .line 2169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM registration failed, will retry. GCM error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 2170
    const/4 v0, 0x1

    sput-boolean v0, Lcom/urbanairship/push/d;->a:Z

    .line 2171
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/d;->b(Landroid/content/Intent;)V

    goto :goto_5

    .line 2177
    :pswitch_7
    invoke-static {}, Lcom/urbanairship/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2178
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/a/a;->a(Landroid/content/Context;)V

    .line 2179
    const/4 v0, 0x1

    sput-boolean v0, Lcom/urbanairship/push/d;->a:Z

    goto :goto_5

    .line 2181
    :cond_d
    const-string v0, "ADM is not supported on this device."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 2203
    :pswitch_8
    iget-object v0, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->u()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/urbanairship/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2204
    :cond_e
    const-string v0, "Received intent from invalid transport acting as ADM."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2208
    :cond_f
    const-string v0, "com.urbanairship.push.EXTRA_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2209
    if-nez v0, :cond_10

    .line 2210
    const-string v0, "ChannelServiceDelegate - Received ADM message missing original intent."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2214
    :cond_10
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADM error occurred: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 2224
    :cond_11
    :goto_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/push/d;->a:Z

    .line 2227
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2229
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 2217
    :cond_12
    const-string v1, "registration_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2218
    if-eqz v0, :cond_11

    .line 2220
    iget-object v1, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/j;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 2236
    :pswitch_9
    sget-boolean v0, Lcom/urbanairship/push/d;->a:Z

    if-nez v0, :cond_1

    .line 2243
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->i()Lcom/urbanairship/push/b;

    move-result-object v2

    .line 2244
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v0

    .line 2245
    invoke-direct {p0}, Lcom/urbanairship/push/d;->c()Ljava/net/URL;

    move-result-object v3

    .line 2247
    if-eqz v3, :cond_1a

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2379
    invoke-direct {p0}, Lcom/urbanairship/push/d;->d()Lcom/urbanairship/push/b;

    move-result-object v4

    .line 2380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2514
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v1, "com.urbanairship.push.LAST_REGISTRATION_TIME"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v1, v8, v9}, Lcom/urbanairship/l;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v0, v8

    if-lez v5, :cond_13

    .line 2518
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v1, "com.urbanairship.push.LAST_REGISTRATION_TIME"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/urbanairship/l;->b(Ljava/lang/String;I)V

    .line 2519
    const-wide/16 v0, 0x0

    .line 2380
    :cond_13
    sub-long v0, v6, v0

    .line 2381
    invoke-virtual {v2, v4}, Lcom/urbanairship/push/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-ltz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 2262
    :goto_7
    if-eqz v0, :cond_1

    .line 2267
    iget-object v0, p0, Lcom/urbanairship/push/d;->f:Lcom/urbanairship/push/a;

    invoke-virtual {v0, v3, v2}, Lcom/urbanairship/push/a;->a(Ljava/net/URL;Lcom/urbanairship/push/b;)Lcom/urbanairship/push/c;

    move-result-object v0

    .line 2270
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v1

    invoke-static {v1}, Lcom/urbanairship/d/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2272
    :cond_15
    const-string v0, "Channel registration failed, will retry."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/d;->b(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2381
    :cond_16
    const/4 v0, 0x0

    goto :goto_7

    .line 2278
    :cond_17
    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v1

    invoke-static {v1}, Lcom/urbanairship/d/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Channel registration succeeded with status: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2282
    invoke-direct {p0, v2}, Lcom/urbanairship/push/d;->a(Lcom/urbanairship/push/b;)V

    .line 2283
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/urbanairship/push/d;->a(Z)V

    goto/16 :goto_1

    .line 2288
    :cond_18
    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_19

    .line 2290
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/push/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2295
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 2301
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Channel registration failed with status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 2302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/d;->a(Z)V

    goto/16 :goto_1

    .line 3313
    :cond_1a
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3318
    iget-object v0, p0, Lcom/urbanairship/push/d;->f:Lcom/urbanairship/push/a;

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/a;->a(Lcom/urbanairship/push/b;)Lcom/urbanairship/push/c;

    move-result-object v0

    .line 3321
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v1

    invoke-static {v1}, Lcom/urbanairship/d/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3323
    :cond_1b
    const-string v0, "Channel registration failed, will retry."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 3324
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/d;->b(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3329
    :cond_1c
    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1d

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v1

    const/16 v3, 0xc9

    if-ne v1, v3, :cond_20

    .line 3330
    :cond_1d
    invoke-virtual {v0}, Lcom/urbanairship/push/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 3331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Channel creation succeeded with status: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " channel ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3334
    iget-object v1, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/push/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    invoke-direct {p0, v2}, Lcom/urbanairship/push/d;->a(Lcom/urbanairship/push/b;)V

    .line 3336
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/urbanairship/push/d;->a(Z)V

    .line 3338
    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1e

    .line 3340
    iget-object v0, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/a;->o:Z

    if-eqz v0, :cond_1e

    .line 3342
    iget-object v0, p0, Lcom/urbanairship/push/d;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->k()Lcom/urbanairship/push/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/g;->c()V

    .line 3347
    :cond_1e
    invoke-static {}, Lcom/urbanairship/push/g;->d()V

    .line 3348
    invoke-static {}, Lcom/urbanairship/push/j;->j()V

    .line 3349
    invoke-static {}, Lcom/urbanairship/push/j;->v()V

    .line 3350
    iget-object v0, p0, Lcom/urbanairship/push/d;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/RichPushManager;->a(Z)V

    .line 3353
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.analytics.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3355
    invoke-virtual {p0}, Lcom/urbanairship/push/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 3358
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to register with channel ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channel location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 3360
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/d;->a(Z)V

    goto/16 :goto_1

    .line 3367
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Channel registration failed with status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/c;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 3368
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/d;->a(Z)V

    goto/16 :goto_1

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bd17948 -> :sswitch_0
        -0x35b60096 -> :sswitch_1
        0x2af863e1 -> :sswitch_2
        0x539af969 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1410
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1446
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 2149
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
