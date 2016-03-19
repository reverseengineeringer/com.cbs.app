.class public Lcom/urbanairship/richpush/RichPushUpdateService;
.super Lcom/urbanairship/BaseIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "RichPushUpdateService"

    invoke-direct {p0, v0}, Lcom/urbanairship/BaseIntentService;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/a;->e:Ljava/lang/String;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 135
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v1, "Invalid userURL"

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Intent;Z)V
    .locals 3

    .prologue
    .line 114
    const-string v0, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    if-eqz p1, :cond_1

    .line 117
    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v1, 0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lcom/urbanairship/l;)Lcom/urbanairship/BaseIntentService$a;
    .locals 2

    .prologue
    .line 96
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 96
    :sswitch_0
    const-string v1, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.urbanairship.richpush.SYNC_MESSAGE_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 98
    :pswitch_0
    new-instance v0, Lcom/urbanairship/richpush/f;

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/urbanairship/richpush/f;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    goto :goto_1

    .line 102
    :pswitch_1
    new-instance v0, Lcom/urbanairship/richpush/a;

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/urbanairship/richpush/a;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    goto :goto_1

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        -0x494379ae -> :sswitch_0
        0x65472331 -> :sswitch_2
        0x7be57f40 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
