.class public final Lcom/urbanairship/actions/n;
.super Lcom/urbanairship/actions/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/n$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/urbanairship/actions/a;-><init>()V

    .line 92
    return-void
.end method


# virtual methods
.method public final b(Lcom/urbanairship/actions/b;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    sget-object v2, Lcom/urbanairship/actions/n$2;->a:[I

    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->b()Lcom/urbanairship/actions/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/actions/p;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "auto"

    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 88
    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v0, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 103
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->c()Lcom/urbanairship/richpush/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/b;->a(Ljava/lang/String;)Lcom/urbanairship/richpush/c;

    move-result-object v1

    .line 111
    if-nez v1, :cond_1

    .line 112
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find message with ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/urbanairship/actions/e;->a(Ljava/lang/Exception;)Lcom/urbanairship/actions/e;

    move-result-object v0

    .line 133
    :goto_1
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/urbanairship/actions/n$1;

    invoke-direct {v2, p0, v1}, Lcom/urbanairship/actions/n$1;-><init>(Lcom/urbanairship/actions/n;Lcom/urbanairship/richpush/c;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    invoke-static {}, Lcom/urbanairship/actions/e;->a()Lcom/urbanairship/actions/e;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
