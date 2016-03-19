.class public Lcom/urbanairship/CoreActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/urbanairship/CoreActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/c;->a(Landroid/app/Application;)V

    .line 44
    invoke-virtual {p0}, Lcom/urbanairship/CoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CoreActivity - Received intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {p0, v0}, Lcom/urbanairship/CoreReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/CoreActivity;->finish()V

    .line 59
    return-void

    .line 51
    :cond_1
    const-string v1, "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-static {p0, v0}, Lcom/urbanairship/CoreReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "com.urbanairship.ACTION_CHANNEL_CAPTURE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p0, v0}, Lcom/urbanairship/CoreReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
