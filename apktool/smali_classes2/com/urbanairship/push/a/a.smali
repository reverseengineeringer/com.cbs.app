.class public final Lcom/urbanairship/push/a/a;
.super Lcom/urbanairship/push/a/e;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/net/Uri;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/urbanairship/push/a/e;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/a/a;->d:Landroid/net/Uri;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/a/a;->e:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/a/a;->f:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v0, p0, Lcom/urbanairship/push/a/a;->a:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/urbanairship/push/a/a;->b:I

    .line 64
    return-void
.end method

.method private a(Lcom/urbanairship/push/PushMessage;ILandroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2195
    iget v0, p0, Lcom/urbanairship/push/a/a;->a:I

    .line 1281
    if-nez v0, :cond_7

    .line 1282
    invoke-virtual {p0}, Lcom/urbanairship/push/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/urbanairship/push/a/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/a/a;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/push/a/a;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 109
    iget v0, p0, Lcom/urbanairship/push/a/a;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/a/a;->c(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 114
    :cond_0
    const/4 v0, 0x3

    .line 116
    iget-object v2, p0, Lcom/urbanairship/push/a/a;->d:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/urbanairship/push/a/a;->d:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    const/4 v0, 0x2

    .line 123
    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 125
    iget v0, p0, Lcom/urbanairship/push/a/a;->c:I

    if-lez v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/urbanairship/push/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/urbanairship/push/a/a;->c:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 129
    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 133
    :cond_3
    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/a/a;->a(Lcom/urbanairship/push/PushMessage;)Landroid/support/v4/app/NotificationCompat$Style;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_1
    if-eqz v0, :cond_a

    .line 141
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 146
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->n()Z

    move-result v0

    if-nez v0, :cond_5

    .line 148
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/a/a;->b(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5136
    :cond_5
    :goto_3
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/j;->b(Ljava/lang/String;)Lcom/urbanairship/push/a/d;

    move-result-object v0

    .line 5138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5140
    if-eqz v0, :cond_6

    .line 5141
    invoke-virtual {p0}, Lcom/urbanairship/push/a/e;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, p1, p2, v4}, Lcom/urbanairship/push/a/d;->a(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5144
    :cond_6
    new-instance v0, Lcom/urbanairship/push/a/e$1;

    invoke-direct {v0, p0, v2}, Lcom/urbanairship/push/a/e$1;-><init>(Lcom/urbanairship/push/a/e;Ljava/util/List;)V

    .line 154
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 156
    return-object v1

    .line 3195
    :cond_7
    iget v0, p0, Lcom/urbanairship/push/a/a;->a:I

    .line 1283
    if-lez v0, :cond_8

    .line 1284
    invoke-virtual {p0}, Lcom/urbanairship/push/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 4195
    iget v1, p0, Lcom/urbanairship/push/a/a;->a:I

    .line 1284
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1287
    :cond_8
    const-string v0, ""

    goto/16 :goto_0

    .line 95
    :cond_9
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->j()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    const-string v3, "Failed to create notification style."

    invoke-static {v3, v2}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 142
    :cond_a
    if-eqz p3, :cond_4

    .line 143
    invoke-virtual {v1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    .line 149
    :catch_1
    move-exception v0

    .line 150
    const-string v2, "Failed to create wearable extender."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/urbanairship/push/a/a;->e:I

    if-lez v0, :cond_0

    .line 80
    iget v0, p0, Lcom/urbanairship/push/a/a;->e:I

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/d/e;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/urbanairship/push/a/a;->a(Lcom/urbanairship/push/PushMessage;ILandroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method
