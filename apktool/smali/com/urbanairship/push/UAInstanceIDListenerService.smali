.class public Lcom/urbanairship/push/UAInstanceIDListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->b()V

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/UAInstanceIDListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/urbanairship/push/UAInstanceIDListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    return-void
.end method
