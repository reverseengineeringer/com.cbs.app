.class public abstract Lcom/urbanairship/push/BaseIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/urbanairship/push/PushMessage;)V
.end method

.method protected abstract a(Lcom/urbanairship/push/PushMessage;I)V
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract a(Lcom/urbanairship/push/PushMessage;Ljava/lang/String;)Z
.end method

.method protected abstract b(Lcom/urbanairship/push/PushMessage;)Z
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 80
    invoke-static {p1}, Lcom/urbanairship/c;->a(Landroid/content/Context;)V

    .line 82
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Received intent with action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1112
    :pswitch_0
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 1113
    if-nez v0, :cond_3

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseIntentReceiver - Intent is missing push message for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :sswitch_0
    const-string v4, "com.urbanairship.push.RECEIVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "com.urbanairship.push.OPENED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v4, "com.urbanairship.push.CHANNEL_UPDATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "com.urbanairship.push.DISMISSED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 1118
    :cond_3
    const-string v1, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1119
    const-string v1, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1120
    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/push/BaseIntentReceiver;->a(Lcom/urbanairship/push/PushMessage;I)V

    goto/16 :goto_0

    .line 1122
    :cond_4
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->a(Lcom/urbanairship/push/PushMessage;)V

    goto/16 :goto_0

    .line 1133
    :pswitch_1
    const-string v0, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1135
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 1136
    if-nez v0, :cond_5

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseIntentReceiver - Intent is missing push message for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1142
    :cond_5
    const-string v4, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1143
    const-string v4, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1144
    const-string v5, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1145
    invoke-virtual {p0, v0, v4}, Lcom/urbanairship/push/BaseIntentReceiver;->a(Lcom/urbanairship/push/PushMessage;Ljava/lang/String;)Z

    .line 1151
    :goto_2
    invoke-virtual {p0}, Lcom/urbanairship/push/BaseIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/BaseIntentReceiver;->getResultCode()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1152
    invoke-virtual {p0, v2}, Lcom/urbanairship/push/BaseIntentReceiver;->setResultCode(I)V

    goto/16 :goto_0

    .line 1147
    :cond_6
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->b(Lcom/urbanairship/push/PushMessage;)Z

    goto :goto_2

    .line 1163
    :pswitch_2
    const-string v0, "com.urbanairship.push.EXTRA_ERROR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    const-string v0, "com.urbanairship.push.EXTRA_CHANNEL_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    if-nez v0, :cond_7

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseIntentReceiver - Intent is missing channel ID for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1171
    :cond_7
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1182
    :pswitch_3
    const-string v0, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1184
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 1185
    if-nez v0, :cond_0

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseIntentReceiver - Intent is missing push message for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x6a14bbb8 -> :sswitch_0
        -0x640c1308 -> :sswitch_2
        -0x24da6b70 -> :sswitch_1
        0x74d3702 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
