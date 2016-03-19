.class final Lcom/urbanairship/g;
.super Lcom/urbanairship/d;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/g$b;,
        Lcom/urbanairship/g$c;,
        Lcom/urbanairship/g$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/urbanairship/a;

.field private final d:Lcom/urbanairship/push/j;

.field private final e:Landroid/support/v4/app/NotificationManagerCompat;

.field private f:Lcom/urbanairship/g$a;

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/a;Lcom/urbanairship/push/j;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/urbanairship/g;-><init>(Landroid/content/Context;Lcom/urbanairship/a;Lcom/urbanairship/push/j;Landroid/support/v4/app/NotificationManagerCompat;)V

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/a;Lcom/urbanairship/push/j;Landroid/support/v4/app/NotificationManagerCompat;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/urbanairship/d;-><init>()V

    .line 94
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/g;->a:Ljava/util/concurrent/Executor;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/urbanairship/g;->c:Lcom/urbanairship/a;

    .line 112
    iput-object p3, p0, Lcom/urbanairship/g;->d:Lcom/urbanairship/push/j;

    .line 113
    iput-object p4, p0, Lcom/urbanairship/g;->e:Landroid/support/v4/app/NotificationManagerCompat;

    .line 115
    new-instance v0, Lcom/urbanairship/g$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/g$1;-><init>(Lcom/urbanairship/g;)V

    iput-object v0, p0, Lcom/urbanairship/g;->g:Landroid/content/BroadcastReceiver;

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/g;Lcom/urbanairship/g$a;)Lcom/urbanairship/g$a;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/urbanairship/g;->f:Lcom/urbanairship/g$a;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-static {p0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 198
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    goto :goto_0

    .line 201
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/urbanairship/g;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v11, 0xbb8

    .line 66
    .line 1160
    iget-object v0, p0, Lcom/urbanairship/g;->d:Lcom/urbanairship/push/j;

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v4

    .line 1161
    invoke-static {v4}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/urbanairship/g;->f:Lcom/urbanairship/g$a;

    invoke-interface {v0}, Lcom/urbanairship/g$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 1166
    invoke-static {v0}, Lcom/urbanairship/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1251
    iget-object v0, p0, Lcom/urbanairship/g;->c:Lcom/urbanairship/a;

    invoke-virtual {v0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1252
    iget-object v0, p0, Lcom/urbanairship/g;->c:Lcom/urbanairship/a;

    invoke-virtual {v0}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 1256
    :goto_0
    array-length v8, v5

    if-ge v0, v8, :cond_0

    .line 1257
    aget-byte v8, v5, v0

    array-length v9, v6

    rem-int v9, v0, v9

    aget-byte v9, v6, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    .line 1258
    const-string v9, "%02x"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1261
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1169
    :cond_1
    :goto_1
    return-void

    .line 1174
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 1175
    const-string v5, "https://go.urbanairship.com/"

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CHANNEL"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1180
    :goto_2
    iget-object v3, p0, Lcom/urbanairship/g;->f:Lcom/urbanairship/g$a;

    invoke-interface {v3}, Lcom/urbanairship/g$a;->b()V

    .line 2272
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2273
    const-string v5, "text"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    const-string v5, "label"

    const-string v6, "Urban Airship Channel"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2277
    const-string v6, "clipboard_action"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    const-class v7, Lcom/urbanairship/CoreReceiver;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.urbanairship.ACTION_CHANNEL_CAPTURE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v6, "com.urbanairship.EXTRA_NOTIFICATION_ID"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v6, "com.urbanairship.EXTRA_ACTIONS"

    invoke-static {v5, v2}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 2285
    iget-object v5, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    invoke-static {v5, v11, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2216
    if-nez v0, :cond_4

    .line 2218
    :goto_3
    iget-object v0, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2219
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lcom/urbanairship/R$drawable;->ic_urbanairship_notification:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/urbanairship/R$color;->urban_airship_blue:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    sget v4, Lcom/urbanairship/R$string;->ua_channel_notification_ticker:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    if-nez v2, :cond_5

    move-object v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_copy:I

    iget-object v5, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    sget v6, Lcom/urbanairship/R$string;->ua_notification_button_copy:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 2234
    if-eqz v2, :cond_3

    .line 2235
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    sget v3, Lcom/urbanairship/R$drawable;->ic_notification_button_open_browser:I

    iget-object v4, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_save:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2241
    :cond_3
    iget-object v1, p0, Lcom/urbanairship/g;->e:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 2296
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2297
    const-string v6, "open_external_url_action"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    const-class v7, Lcom/urbanairship/CoreActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.urbanairship.ACTION_CHANNEL_CAPTURE"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "com.urbanairship.EXTRA_NOTIFICATION_ID"

    invoke-virtual {v0, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "com.urbanairship.EXTRA_ACTIONS"

    invoke-static {v5, v2}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2305
    iget-object v2, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    invoke-static {v2, v11, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto/16 :goto_3

    :cond_5
    move-object v0, v2

    .line 2219
    goto :goto_4

    :cond_6
    move-object v0, v2

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/urbanairship/g;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/urbanairship/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/urbanairship/g;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/urbanairship/g;->g:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/urbanairship/g;->c:Lcom/urbanairship/a;

    iget-boolean v0, v0, Lcom/urbanairship/a;->u:Z

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/urbanairship/g$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/g$2;-><init>(Lcom/urbanairship/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
