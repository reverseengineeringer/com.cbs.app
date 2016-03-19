.class public Lcom/cbs/app/cast/VideoCastNotificationService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Z

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/app/Notification;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

.field private k:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

.field private l:Lcom/google/android/libraries/cast/companionlibrary/a/a;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/cbs/app/cast/VideoCastNotificationService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/cast/VideoCastNotificationService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->e:I

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->h:Z

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->i:Z

    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v1, v2

    .line 80
    goto :goto_1
.end method

.method static synthetic a(Lcom/cbs/app/cast/VideoCastNotificationService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/cast/VideoCastNotificationService;Lcom/google/android/gms/cast/d;Landroid/graphics/Bitmap;Z)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/google/android/gms/cast/d;Landroid/graphics/Bitmap;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/cast/d;Landroid/graphics/Bitmap;Z)Landroid/widget/RemoteViews;
    .locals 10

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Build version is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    iget-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->i:Z

    if-eqz v0, :cond_2

    .line 3356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.toggleplayback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3357
    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3358
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3362
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.libraries.cast.companionlibrary.action.stop"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3363
    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3364
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3367
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b(Lcom/google/android/gms/cast/d;)Landroid/os/Bundle;

    move-result-object v0

    .line 3368
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->d:Ljava/lang/Class;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3369
    const-string v4, "media"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3372
    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v4

    .line 3373
    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800ae

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v9}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3375
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v6

    .line 3376
    iget-object v7, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->d:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 3377
    invoke-virtual {v6, v3}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 3378
    invoke-virtual {v6}, Landroid/support/v4/app/TaskStackBuilder;->getIntentCount()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_0

    .line 3379
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Landroid/support/v4/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v3

    const-string v7, "media"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3381
    :cond_0
    const/4 v0, 0x1

    const/high16 v3, 0x8000000

    invoke-virtual {v6, v0, v3}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3384
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f02018e

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v6, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v4, v6}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    if-eqz p3, :cond_1

    const v0, 0x7f02017f

    :goto_0
    const v4, 0x7f0800cf

    invoke-virtual {p0, v4}, Lcom/cbs/app/cast/VideoCastNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f020155

    const v3, 0x7f0800af

    invoke-virtual {p0, v3}, Lcom/cbs/app/cast/VideoCastNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$MediaStyle;

    invoke-direct {v1}, Landroid/app/Notification$MediaStyle;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->f:Landroid/app/Notification;

    .line 299
    const/4 v0, 0x0

    .line 348
    :goto_1
    return-object v0

    .line 3384
    :cond_1
    const v0, 0x7f020183

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b(Lcom/google/android/gms/cast/d;)Landroid/os/Bundle;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->d:Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    const-string v2, "media"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 306
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v2

    .line 308
    iget-object v3, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->d:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 310
    invoke-virtual {v2, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 311
    invoke-virtual {v2}, Landroid/support/v4/app/TaskStackBuilder;->getIntentCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 312
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "media"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 316
    :cond_3
    const/4 v0, 0x1

    const/high16 v1, 0x8000000

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 319
    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v2

    .line 321
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030039

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 322
    iget-boolean v3, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->h:Z

    if-eqz v3, :cond_4

    .line 3403
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.libraries.cast.companionlibrary.action.toggleplayback"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3404
    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3405
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3408
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.libraries.cast.companionlibrary.action.stop"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3409
    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3410
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 3412
    const v5, 0x7f0f012a

    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3413
    const v3, 0x7f0f0129

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3415
    if-eqz p3, :cond_6

    .line 3416
    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 3417
    const v3, 0x7f0f012a

    const v4, 0x7f020149

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 325
    :cond_4
    :goto_2
    if-eqz p2, :cond_7

    .line 326
    const v3, 0x7f0f0128

    invoke-virtual {v0, v3, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 332
    :goto_3
    const v3, 0x7f0f012c

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 333
    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ae

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v6}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 335
    const v3, 0x7f0f012e

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 336
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02018e

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->f:Landroid/app/Notification;

    .line 346
    iget-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->f:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 3419
    :cond_5
    const v3, 0x7f0f012a

    const v4, 0x7f02013f

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 3423
    :cond_6
    const v3, 0x7f0f012a

    const v4, 0x7f020145

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 328
    :cond_7
    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020060

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 330
    const v4, 0x7f0f0121

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 3384
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic a(Lcom/cbs/app/cast/VideoCastNotificationService;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/cbs/app/cast/VideoCastNotificationService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/cast/VideoCastNotificationService;I)V
    .locals 3

    .prologue
    .line 60
    .line 4231
    iget v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->e:I

    if-eq v0, p1, :cond_0

    .line 4235
    iput p1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->e:I

    .line 4236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRemoteMediaPlayerStatusUpdated() reached with status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 4238
    packed-switch p1, :pswitch_data_0

    .line 4269
    :cond_0
    :goto_0
    return-void

    .line 4240
    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->c:Z

    .line 4241
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/google/android/gms/cast/d;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4267
    :catch_0
    move-exception v0

    .line 4268
    :goto_1
    sget-object v1, Lcom/cbs/app/cast/VideoCastNotificationService;->a:Ljava/lang/String;

    const-string v2, "Failed to update the playback status due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4244
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->c:Z

    .line 4245
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/google/android/gms/cast/d;)V

    goto :goto_0

    .line 4267
    :catch_1
    move-exception v0

    goto :goto_1

    .line 4248
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->c:Z

    .line 4249
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/google/android/gms/cast/d;)V

    goto :goto_0

    .line 4252
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->c:Z

    .line 4253
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->T()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->stopForeground(Z)V

    goto :goto_0

    .line 4257
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/google/android/gms/cast/d;)V

    goto :goto_0

    .line 4261
    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->c:Z

    .line 4262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->stopForeground(Z)V
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/android/gms/cast/d;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 174
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->l:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->l:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 182
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->c:Z

    invoke-direct {p0, p1, v0, v2}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/google/android/gms/cast/d;Landroid/graphics/Bitmap;Z)Landroid/widget/RemoteViews;
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    sget-object v2, Lcom/cbs/app/cast/VideoCastNotificationService;->a:Ljava/lang/String;

    const-string v3, "Failed to build notification"

    invoke-static {v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 195
    :goto_1
    new-instance v1, Lcom/cbs/app/cast/VideoCastNotificationService$2;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/cast/VideoCastNotificationService$2;-><init>(Lcom/cbs/app/cast/VideoCastNotificationService;Lcom/google/android/gms/cast/d;)V

    iput-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->l:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 219
    iget-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->l:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 186
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->b()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 187
    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/cbs/app/cast/VideoCastNotificationService;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/cbs/app/cast/VideoCastNotificationService;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/cbs/app/cast/VideoCastNotificationService;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->f:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/cast/VideoCastNotificationService;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->m:I

    return v0
.end method

.method static synthetic e(Lcom/cbs/app/cast/VideoCastNotificationService;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/cast/VideoCastNotificationService;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->c:Z

    return v0
.end method

.method static synthetic g(Lcom/cbs/app/cast/VideoCastNotificationService;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->l:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/cast/VideoCastNotificationService;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->l:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 90
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->m:I

    .line 94
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 1453
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    const-string v1, "cast-activity-name"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1456
    if-eqz v0, :cond_2

    .line 1457
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->d:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 1741
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->g(I)V

    .line 99
    :cond_0
    new-instance v0, Lcom/cbs/app/cast/VideoCastNotificationService$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/VideoCastNotificationService$1;-><init>(Lcom/cbs/app/cast/VideoCastNotificationService;)V

    iput-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->k:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    .line 123
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->k:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 126
    :cond_1
    return-void

    .line 1459
    :cond_2
    :try_start_1
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    iput-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->d:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1462
    :catch_0
    move-exception v0

    .line 1463
    sget-object v1, Lcom/cbs/app/cast/VideoCastNotificationService;->a:Ljava/lang/String;

    const-string v2, "Failed to find the targetActivity class"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 278
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->l:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->l:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 3226
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 283
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->k:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->k:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 288
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 135
    const-string v0, "onStartCommand"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 136
    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.toggleplayback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->h:Z

    if-eqz v1, :cond_0

    .line 140
    const-string v0, "onStartCommand(): Action: ACTION_TOGGLE_PLAYBACK"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 2429
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->R()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return v3

    .line 2430
    :catch_0
    move-exception v0

    .line 2431
    sget-object v1, Lcom/cbs/app/cast/VideoCastNotificationService;->a:Ljava/lang/String;

    const-string v2, "Failed to toggle the playback"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 142
    :cond_0
    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->h:Z

    if-eqz v1, :cond_1

    .line 143
    const-string v0, "onStartCommand(): Action: ACTION_STOP"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 2441
    :try_start_1
    const-string v0, "Calling stopApplication"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 2442
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2446
    :goto_1
    invoke-virtual {p0}, Lcom/cbs/app/cast/VideoCastNotificationService;->stopSelf()V

    goto :goto_0

    .line 2443
    :catch_1
    move-exception v0

    .line 2444
    sget-object v1, Lcom/cbs/app/cast/VideoCastNotificationService;->a:Ljava/lang/String;

    const-string v2, "Failed to disconnect application"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 145
    :cond_1
    const-string v1, "com.google.android.libraries.cast.companionlibrary.action.notificationvisibility"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const-string v0, "visible"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->g:Z

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartCommand(): Action: ACTION_VISIBILITY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->g:Z

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->f:Landroid/app/Notification;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->f:Landroid/app/Notification;

    invoke-virtual {p0, v3, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 153
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/cbs/app/cast/VideoCastNotificationService;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/cast/VideoCastNotificationService;->a(Lcom/google/android/gms/cast/d;)V
    :try_end_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 154
    :catch_2
    move-exception v0

    .line 155
    :goto_2
    sget-object v1, Lcom/cbs/app/cast/VideoCastNotificationService;->a:Ljava/lang/String;

    const-string v2, "onStartCommand() failed to get media"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p0, v3}, Lcom/cbs/app/cast/VideoCastNotificationService;->stopForeground(Z)V

    goto :goto_0

    .line 162
    :cond_4
    const-string v0, "onStartCommand(): Action: none"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_5
    const-string v0, "onStartCommand(): Intent was null"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :catch_3
    move-exception v0

    goto :goto_2
.end method
