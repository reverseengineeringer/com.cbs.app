.class public final Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/media/AudioManager;Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 39
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/b;->a:Z

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    goto :goto_0
.end method

.method public static b(Landroid/media/AudioManager;Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 52
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/b;->a:Z

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    goto :goto_0
.end method
