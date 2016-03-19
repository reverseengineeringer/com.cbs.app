.class public Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 46
    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    :try_start_0
    const-string v0, "Toggling playback via CastManager"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->R()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;->a:Ljava/lang/String;

    const-string v2, "onReceive(): Failed to toggle playback"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const-string v0, "com.google.android.libraries.cast.companionlibrary.action.toggleplayback"

    .line 1084
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 49
    :sswitch_0
    const-string v3, "com.google.android.libraries.cast.companionlibrary.action.toggleplayback"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "com.google.android.libraries.cast.companionlibrary.action.stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 60
    :pswitch_1
    const-string v0, "Calling stopApplication from intent"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->l()V

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 65
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 72
    :pswitch_3
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->R()V
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 75
    :goto_2
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/VideoIntentReceiver;->a:Ljava/lang/String;

    const-string v2, "Failed to toggle playback"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 49
    :sswitch_data_0
    .sparse-switch
        -0x62e5ebf2 -> :sswitch_1
        0x44c76a7b -> :sswitch_0
        0x7708a552 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 69
    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_3
    .end packed-switch
.end method
