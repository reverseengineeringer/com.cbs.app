.class final Lcom/urbanairship/richpush/RichPushManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/richpush/RichPushManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/richpush/RichPushManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/RichPushManager;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushManager$1;->a:Lcom/urbanairship/richpush/RichPushManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 104
    const-string v0, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$1;->a:Lcom/urbanairship/richpush/RichPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->d()V

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.richpush.SYNC_MESSAGE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
