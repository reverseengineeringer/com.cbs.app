.class final Lcom/urbanairship/push/f;
.super Lcom/urbanairship/BaseIntentService$a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/NotificationManagerCompat;

.field private final b:Lcom/urbanairship/push/j;

.field private final c:Lcom/urbanairship/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/urbanairship/push/f;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/p;Landroid/support/v4/app/NotificationManagerCompat;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/p;Landroid/support/v4/app/NotificationManagerCompat;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$a;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    .line 92
    iput-object p3, p0, Lcom/urbanairship/push/f;->c:Lcom/urbanairship/p;

    .line 93
    invoke-virtual {p3}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/f;->b:Lcom/urbanairship/push/j;

    .line 94
    iput-object p4, p0, Lcom/urbanairship/push/f;->a:Landroid/support/v4/app/NotificationManagerCompat;

    .line 95
    return-void
.end method

.method private a(Lcom/urbanairship/push/PushMessage;Lcom/urbanairship/push/a/e;)Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 236
    if-nez p2, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NotificationFactory is null. Unable to display notification for message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    :goto_0
    return-object v0

    .line 242
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/urbanairship/push/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/urbanairship/push/a/e;->a(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 249
    if-eqz v2, :cond_7

    .line 250
    iget-object v3, p0, Lcom/urbanairship/push/f;->b:Lcom/urbanairship/push/j;

    invoke-virtual {v3}, Lcom/urbanairship/push/j;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/urbanairship/push/f;->b:Lcom/urbanairship/push/j;

    invoke-virtual {v3}, Lcom/urbanairship/push/j;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    :cond_1
    iput-object v0, v2, Landroid/app/Notification;->vibrate:[J

    .line 253
    iget v3, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/urbanairship/push/f;->b:Lcom/urbanairship/push/j;

    invoke-virtual {v3}, Lcom/urbanairship/push/j;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/urbanairship/push/f;->b:Lcom/urbanairship/push/j;

    invoke-virtual {v3}, Lcom/urbanairship/push/j;->q()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    :cond_3
    iput-object v0, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 259
    iget v0, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 262
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/f;->a()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/urbanairship/CoreReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 269
    iget-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_5

    .line 270
    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT"

    iget-object v4, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/f;->a()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/urbanairship/CoreReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    .line 279
    iget-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_6

    .line 280
    const-string v4, "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT"

    iget-object v5, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    :cond_6
    invoke-virtual {p0}, Lcom/urbanairship/push/f;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 284
    invoke-virtual {p0}, Lcom/urbanairship/push/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Posting notification "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with ID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v0, p0, Lcom/urbanairship/push/f;->a:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_7
    move-object v0, v1

    .line 290
    goto/16 :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    const-string v2, "Unable to create and display notification."

    invoke-static {v2, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/urbanairship/push/PushMessage;)V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/urbanairship/push/f;->b:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/push/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received a duplicate push with canonical ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/f;->b:Lcom/urbanairship/push/j;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/j;->a(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v0

    .line 2338
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2339
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2342
    :cond_3
    iget-object v1, p0, Lcom/urbanairship/push/f;->c:Lcom/urbanairship/p;

    invoke-virtual {v1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v1

    new-instance v2, Lcom/urbanairship/analytics/o;

    invoke-direct {v2, v0}, Lcom/urbanairship/analytics/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 189
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string v1, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->g()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/actions/p;->b:Lcom/urbanairship/actions/p;

    invoke-static {v1, v2, v3, v0}, Lcom/urbanairship/actions/ActionService;->a(Landroid/content/Context;Ljava/util/Map;Lcom/urbanairship/actions/p;Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->s()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_4

    .line 208
    iget-object v1, p0, Lcom/urbanairship/push/f;->c:Lcom/urbanairship/p;

    invoke-virtual {v1}, Lcom/urbanairship/p;->p()Lcom/urbanairship/push/iam/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 211
    :cond_4
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3317
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 3318
    iget-object v1, p0, Lcom/urbanairship/push/f;->c:Lcom/urbanairship/p;

    invoke-virtual {v1}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    new-instance v2, Lcom/urbanairship/push/f$1;

    invoke-direct {v2, p0, v0}, Lcom/urbanairship/push/f$1;-><init>(Lcom/urbanairship/push/f;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Lcom/urbanairship/richpush/RichPushManager;->a(Lcom/urbanairship/richpush/RichPushManager$a;)V

    .line 3326
    const-wide/32 v2, 0xea60

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/urbanairship/push/f;->b:Lcom/urbanairship/push/j;

    invoke-virtual {v1}, Lcom/urbanairship/push/j;->d()Z

    move-result v1

    if-nez v1, :cond_7

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User notifications disabled. Unable to display notification for message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4301
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4306
    if-eqz v0, :cond_6

    .line 4307
    const-string v2, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4310
    :cond_6
    invoke-virtual {p0}, Lcom/urbanairship/push/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_7
    iget-object v0, p0, Lcom/urbanairship/push/f;->b:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->e()Lcom/urbanairship/push/a/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/push/f;->a(Lcom/urbanairship/push/PushMessage;Lcom/urbanairship/push/a/e;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 353
    invoke-static {p1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 383
    :goto_0
    return v0

    .line 359
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/f;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v3, "com.urbanairship.push.LAST_CANONICAL_IDS"

    invoke-virtual {v0, v3}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->e()Lcom/urbanairship/json/b;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    :goto_2
    invoke-static {p1}, Lcom/urbanairship/json/JsonValue;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    .line 370
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 364
    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/json/b;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 375
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_3

    .line 377
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/f;->b()Lcom/urbanairship/l;

    move-result-object v3

    const-string v4, "com.urbanairship.push.LAST_CANONICAL_IDS"

    invoke-static {v0, v2}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 383
    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2139
    :cond_1
    :goto_1
    return-void

    .line 99
    :sswitch_0
    const-string v3, "com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1151
    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/push/f;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->u()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1152
    const-string v0, "Received intent from invalid transport acting as ADM."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1156
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/f;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1157
    const-string v0, "IncomingPushServiceDelegate - Received intent from ADM without registering."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1161
    :cond_3
    const-string v0, "com.urbanairship.push.EXTRA_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1162
    if-nez v0, :cond_4

    .line 1163
    const-string v0, "IncomingPushServiceDelegate - Received ADM message missing original intent."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1167
    :cond_4
    new-instance v1, Lcom/urbanairship/push/PushMessage;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/urbanairship/push/PushMessage;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/urbanairship/push/f;->a(Lcom/urbanairship/push/PushMessage;)V

    goto :goto_1

    .line 2115
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/push/f;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->u()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 2116
    const-string v0, "Received intent from invalid transport acting as GCM."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 2120
    :cond_5
    iget-object v0, p0, Lcom/urbanairship/push/f;->c:Lcom/urbanairship/p;

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->g()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2121
    const-string v0, "IncomingPushServiceDelegate - Received intent from GCM without registering."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 2125
    :cond_6
    const-string v0, "com.urbanairship.push.EXTRA_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2126
    if-nez v0, :cond_7

    .line 2127
    const-string v0, "IncomingPushServiceDelegate - Received GCM message missing original intent."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2131
    :cond_7
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2132
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/urbanairship/push/f;->c:Lcom/urbanairship/p;

    invoke-virtual {v2}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v2

    iget-object v2, v2, Lcom/urbanairship/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2137
    :cond_8
    const-string v1, "deleted_messages"

    const-string v2, "message_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM deleted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "total_deleted"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pending messages."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2142
    :cond_9
    new-instance v1, Lcom/urbanairship/push/PushMessage;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/urbanairship/push/PushMessage;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/urbanairship/push/f;->a(Lcom/urbanairship/push/PushMessage;)V

    goto/16 :goto_1

    .line 99
    :sswitch_data_0
    .sparse-switch
        -0x43dae3c5 -> :sswitch_1
        0x33125cd4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
