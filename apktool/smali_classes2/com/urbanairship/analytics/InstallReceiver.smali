.class public Lcom/urbanairship/analytics/InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 70
    invoke-static {p1}, Lcom/urbanairship/c;->a(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/urbanairship/p;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/urbanairship/p;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string v0, "InstallReceiver - unable to track install referrer, takeOff not called."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Lcom/urbanairship/analytics/l;

    invoke-direct {v1, v0}, Lcom/urbanairship/analytics/l;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    goto :goto_0
.end method
