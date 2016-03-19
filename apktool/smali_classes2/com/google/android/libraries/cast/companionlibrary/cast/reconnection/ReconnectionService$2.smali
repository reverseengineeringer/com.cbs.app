.class final Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 105
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 106
    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->a(ZLjava/lang/String;)V

    .line 109
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
