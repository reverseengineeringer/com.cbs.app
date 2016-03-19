.class public final Lcom/urbanairship/actions/m;
.super Lcom/urbanairship/actions/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/m$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/urbanairship/actions/a;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public final b(Lcom/urbanairship/actions/b;)Z
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/urbanairship/actions/m$2;->a:[I

    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->b()Lcom/urbanairship/actions/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 83
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v0, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/urbanairship/push/PushMessage;->d()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->c()Lcom/urbanairship/richpush/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/b;->a(Ljava/lang/String;)Lcom/urbanairship/richpush/c;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/urbanairship/actions/m$1;

    invoke-direct {v2, p0, v0}, Lcom/urbanairship/actions/m$1;-><init>(Lcom/urbanairship/actions/m;Lcom/urbanairship/richpush/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    invoke-static {}, Lcom/urbanairship/actions/e;->a()Lcom/urbanairship/actions/e;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
