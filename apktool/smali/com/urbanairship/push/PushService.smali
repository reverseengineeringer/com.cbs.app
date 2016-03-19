.class public Lcom/urbanairship/push/PushService;
.super Lcom/urbanairship/BaseIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "PushService"

    invoke-direct {p0, v0}, Lcom/urbanairship/BaseIntentService;-><init>(Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lcom/urbanairship/l;)Lcom/urbanairship/BaseIntentService$a;
    .locals 2

    .prologue
    .line 124
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 124
    :sswitch_0
    const-string v1, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "com.urbanairship.push.ACTION_START_REGISTRATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    .line 128
    :pswitch_0
    new-instance v0, Lcom/urbanairship/push/l;

    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/urbanairship/push/l;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    goto :goto_1

    .line 131
    :pswitch_1
    new-instance v0, Lcom/urbanairship/push/i;

    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/urbanairship/push/i;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    goto :goto_1

    .line 137
    :pswitch_2
    new-instance v0, Lcom/urbanairship/push/d;

    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/urbanairship/push/d;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    goto/16 :goto_1

    .line 141
    :pswitch_3
    new-instance v0, Lcom/urbanairship/push/f;

    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/urbanairship/push/f;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    goto/16 :goto_1

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        -0x541d02fb -> :sswitch_3
        -0x43dae3c5 -> :sswitch_9
        -0x3bd17948 -> :sswitch_5
        -0x35b60096 -> :sswitch_7
        -0x31a5a6d5 -> :sswitch_2
        0x2af863e1 -> :sswitch_4
        0x33125cd4 -> :sswitch_8
        0x395d4313 -> :sswitch_0
        0x3e781ee9 -> :sswitch_1
        0x539af969 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
