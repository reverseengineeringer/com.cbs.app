.class public Lcom/urbanairship/push/ADMPushReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-static {p1}, Lcom/urbanairship/c;->a(Landroid/content/Context;)V

    .line 49
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ADMPushReceiver - Received intent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ge v0, v2, :cond_2

    .line 56
    const-string v0, "ADMPushReceiver - Received intent from ADM transport on an unsupported API version."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_3
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_2
    invoke-virtual {p0}, Lcom/urbanairship/push/ADMPushReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/ADMPushReceiver;->setResultCode(I)V

    goto :goto_0

    .line 60
    :sswitch_0
    const-string v2, "com.amazon.device.messaging.intent.RECEIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.amazon.device.messaging.intent.REGISTRATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .line 62
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.urbanairship.push.EXTRA_INTENT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    invoke-static {p1, v0}, Lcom/urbanairship/push/ADMPushReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 69
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.urbanairship.push.EXTRA_INTENT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    invoke-static {p1, v0}, Lcom/urbanairship/push/ADMPushReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 60
    :sswitch_data_0
    .sparse-switch
        -0x2c4aaffa -> :sswitch_1
        0x3f326356 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
