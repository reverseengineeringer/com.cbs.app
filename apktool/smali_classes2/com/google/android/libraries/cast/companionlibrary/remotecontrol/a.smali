.class public final Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a:Z

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Landroid/media/RemoteControlClient;

    invoke-direct {v0, p1}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 184
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 190
    :goto_0
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a$a;-><init>(Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;Ljava/lang/Object;B)V

    return-object v1

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 209
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/media/MediaRouter;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->addRemoteControlClient(Ljava/lang/Object;)V

    .line 246
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 229
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->a:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/RemoteControlClient;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public final b(Landroid/support/v7/media/MediaRouter;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->removeRemoteControlClient(Ljava/lang/Object;)V

    .line 255
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/remotecontrol/a;->b:Ljava/lang/Object;

    return-object v0
.end method
