.class public final Lcom/urbanairship/push/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/urbanairship/push/a/c;->b:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/urbanairship/push/a/c;->c:I

    .line 62
    iput p2, p0, Lcom/urbanairship/push/a/c;->e:I

    .line 63
    iput-object p5, p0, Lcom/urbanairship/push/a/c;->a:Landroid/os/Bundle;

    .line 64
    iput-object p4, p0, Lcom/urbanairship/push/a/c;->f:Ljava/lang/String;

    .line 65
    iput-boolean p6, p0, Lcom/urbanairship/push/a/c;->d:Z

    .line 66
    iput-object p7, p0, Lcom/urbanairship/push/a/c;->g:Ljava/util/List;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;B)V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p7}, Lcom/urbanairship/push/a/c;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 149
    iget v0, p0, Lcom/urbanairship/push/a/c;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/urbanairship/push/a/c;->c:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/push/a/c;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 154
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    iget-object v4, p0, Lcom/urbanairship/push/a/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    iget-boolean v4, p0, Lcom/urbanairship/push/a/c;->d:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 163
    iget-boolean v2, p0, Lcom/urbanairship/push/a/c;->d:Z

    if-eqz v2, :cond_2

    .line 164
    const-class v2, Lcom/urbanairship/CoreActivity;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 171
    :goto_2
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget v3, p0, Lcom/urbanairship/push/a/c;->e:I

    invoke-direct {v2, v3, v0, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/urbanairship/push/a/c;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v1

    .line 174
    iget-object v0, p0, Lcom/urbanairship/push/a/c;->g:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/urbanairship/push/a/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/a/b;

    .line 176
    invoke-virtual {v0, p1}, Lcom/urbanairship/push/a/b;->a(Landroid/content/Context;)Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    goto :goto_3

    .line 149
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/push/a/c;->f:Ljava/lang/String;

    goto :goto_1

    .line 167
    :cond_2
    const-class v2, Lcom/urbanairship/CoreReceiver;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/urbanairship/push/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/urbanairship/push/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/urbanairship/push/a/c;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/urbanairship/push/a/c;->e:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/urbanairship/push/a/c;->d:Z

    return v0
.end method
