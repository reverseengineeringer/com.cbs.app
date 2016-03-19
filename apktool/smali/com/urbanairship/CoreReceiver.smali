.class public Lcom/urbanairship/CoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 90
    const-string v0, "com.urbanairship.EXTRA_NOTIFICATION_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "com.urbanairship.EXTRA_NOTIFICATION_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 92
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 95
    :cond_0
    const-string v0, "com.urbanairship.EXTRA_ACTIONS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    sget-object v1, Lcom/urbanairship/actions/p;->a:Lcom/urbanairship/actions/p;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/urbanairship/actions/ActionService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/p;Landroid/os/Bundle;)V

    .line 103
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 313
    invoke-static {p0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    .line 4631
    iget-object v0, v0, Lcom/urbanairship/p;->n:Lcom/urbanairship/push/iam/d;

    .line 318
    invoke-virtual {v0}, Lcom/urbanairship/push/iam/d;->d()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    .line 319
    invoke-virtual {v0}, Lcom/urbanairship/push/iam/d;->e()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v2

    .line 322
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/urbanairship/push/iam/InAppMessage;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 327
    invoke-static {v1}, Lcom/urbanairship/push/iam/e;->a(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/e;

    move-result-object v0

    .line 328
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    .line 4640
    iget-object v1, v1, Lcom/urbanairship/p;->g:Lcom/urbanairship/analytics/c;

    .line 328
    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    .line 296
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 299
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 112
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 113
    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoreReceiver - Intent is missing push message for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v1, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 123
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    .line 1640
    iget-object v1, v1, Lcom/urbanairship/p;->g:Lcom/urbanairship/analytics/c;

    .line 123
    invoke-virtual {v0}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/analytics/c;->a(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/CoreReceiver;->a(Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/urbanairship/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 144
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 145
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoreReceiver - Intent is missing push message for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v1, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-nez v1, :cond_1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoreReceiver - Intent is missing notification button ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    const-string v2, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 157
    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 158
    const-string v4, "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notification opened ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " action button Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    if-eqz v3, :cond_2

    .line 164
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v5

    .line 2640
    iget-object v5, v5, Lcom/urbanairship/p;->g:Lcom/urbanairship/analytics/c;

    .line 164
    invoke-virtual {v0}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/urbanairship/analytics/c;->a(Ljava/lang/String;)V

    .line 168
    :cond_2
    invoke-virtual {v0}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/CoreReceiver;->a(Ljava/lang/String;)V

    .line 171
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 174
    new-instance v2, Lcom/urbanairship/analytics/m;

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/urbanairship/analytics/m;-><init>(Lcom/urbanairship/push/PushMessage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    .line 3640
    iget-object v0, v0, Lcom/urbanairship/p;->g:Lcom/urbanairship/analytics/c;

    .line 175
    invoke-virtual {v0, v2}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/urbanairship/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 56
    invoke-static {p1}, Lcom/urbanairship/c;->a(Landroid/content/Context;)V

    .line 58
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "CoreReceiver - Received intent: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    invoke-static {p1, p2}, Lcom/urbanairship/CoreReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :sswitch_0
    const-string v4, "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v4, "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "com.urbanairship.push.OPENED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "com.urbanairship.ACTION_CHANNEL_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    .line 69
    :pswitch_1
    invoke-static {p1, p2}, Lcom/urbanairship/CoreReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1193
    :pswitch_2
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 1194
    if-nez v0, :cond_3

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoreReceiver - Intent is missing push message for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1199
    :cond_3
    const-string v0, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1204
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1205
    if-eqz v0, :cond_4

    .line 1207
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :cond_4
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.DISMISSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1218
    invoke-static {}, Lcom/urbanairship/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1228
    :pswitch_3
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    .line 1595
    iget-object v2, v0, Lcom/urbanairship/p;->f:Lcom/urbanairship/a;

    .line 1230
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 1231
    if-nez v0, :cond_5

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoreReceiver - Intent is missing push message for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1236
    :cond_5
    const-string v4, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1237
    const-string v4, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1238
    const-string v4, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1240
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/urbanairship/CoreReceiver;->getResultCode()I

    move-result v5

    if-eq v5, v3, :cond_6

    iget-boolean v2, v2, Lcom/urbanairship/a;->s:Z

    if-eqz v2, :cond_6

    .line 1242
    invoke-static {p1}, Lcom/urbanairship/CoreReceiver;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/urbanairship/CoreReceiver;->isOrderedBroadcast()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1243
    invoke-virtual {p0, v3}, Lcom/urbanairship/CoreReceiver;->setResultCode(I)V

    .line 1247
    :cond_6
    invoke-static {v4}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1251
    if-eqz v1, :cond_7

    sget-object v1, Lcom/urbanairship/actions/p;->e:Lcom/urbanairship/actions/p;

    .line 1253
    :goto_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1254
    const-string v3, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1256
    invoke-static {p1, v4, v1, v2}, Lcom/urbanairship/actions/ActionService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/p;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1251
    :cond_7
    sget-object v1, Lcom/urbanairship/actions/p;->f:Lcom/urbanairship/actions/p;

    goto :goto_3

    .line 1261
    :cond_8
    invoke-virtual {p0}, Lcom/urbanairship/CoreReceiver;->getResultCode()I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 1262
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1263
    if-eqz v1, :cond_a

    .line 1265
    :try_start_1
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 1266
    invoke-virtual {p0}, Lcom/urbanairship/CoreReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1267
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/urbanairship/CoreReceiver;->setResultCode(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1281
    :cond_9
    :goto_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1282
    const-string v2, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1284
    invoke-virtual {v0}, Lcom/urbanairship/push/PushMessage;->g()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/urbanairship/actions/p;->c:Lcom/urbanairship/actions/p;

    invoke-static {p1, v0, v2, v1}, Lcom/urbanairship/actions/ActionService;->a(Landroid/content/Context;Ljava/util/Map;Lcom/urbanairship/actions/p;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1272
    :cond_a
    iget-boolean v1, v2, Lcom/urbanairship/a;->s:Z

    if-eqz v1, :cond_9

    .line 1274
    invoke-static {p1}, Lcom/urbanairship/CoreReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/urbanairship/CoreReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1275
    invoke-virtual {p0, v3}, Lcom/urbanairship/CoreReceiver;->setResultCode(I)V

    goto :goto_4

    .line 78
    :pswitch_4
    invoke-static {p1, p2}, Lcom/urbanairship/CoreReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 1271
    :catch_1
    move-exception v1

    goto :goto_4

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f9cb900 -> :sswitch_2
        -0x24da6b70 -> :sswitch_3
        -0x5a418f2 -> :sswitch_4
        0xa108010 -> :sswitch_0
        0x6574a2cd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
