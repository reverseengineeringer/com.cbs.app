.class public Landroid/support/v7/media/RemotePlaybackClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;,
        Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;,
        Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;,
        Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;,
        Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RemotePlaybackClient"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItemStatusPendingIntent:Landroid/app/PendingIntent;

.field private final mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mRouteSupportsQueuing:Z

.field private mRouteSupportsRemotePlayback:Z

.field private mRouteSupportsSessionManagement:Z

.field private mSessionId:Ljava/lang/String;

.field private final mSessionStatusPendingIntent:Landroid/app/PendingIntent;

.field private mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

.field private final mStatusReceiver:Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "RemotePlaybackClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    const-string v1, "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;-><init>(Landroid/support/v7/media/RemotePlaybackClient;Landroid/support/v7/media/RemotePlaybackClient$1;)V

    iput-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusReceiver:Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;

    .line 72
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusReceiver:Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mItemStatusPendingIntent:Landroid/app/PendingIntent;

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionStatusPendingIntent:Landroid/app/PendingIntent;

    .line 84
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->detectFeatures()V

    .line 85
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/support/v7/media/RemotePlaybackClient;->inferMissingResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/media/RemotePlaybackClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/media/RemotePlaybackClient;->adoptSession(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Landroid/support/v7/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/media/RemotePlaybackClient;Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/RemotePlaybackClient;->handleInvalidResult(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/media/RemotePlaybackClient;Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/RemotePlaybackClient;->handleError(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v7/media/RemotePlaybackClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/media/RemotePlaybackClient;)Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    return-object v0
.end method

.method private adoptSession(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 681
    if-eqz p1, :cond_0

    .line 682
    invoke-virtual {p0, p1}, Landroid/support/v7/media/RemotePlaybackClient;->setSessionId(Ljava/lang/String;)V

    .line 684
    :cond_0
    return-void
.end method

.method private static bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    if-eqz p0, :cond_0

    .line 777
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    .line 778
    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method private detectFeatures()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 712
    const-string v0, "android.media.intent.action.PLAY"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.SEEK"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.GET_STATUS"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.PAUSE"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.RESUME"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.STOP"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    .line 718
    iget-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.action.ENQUEUE"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.action.REMOVE"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsQueuing:Z

    .line 721
    iget-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.action.START_SESSION"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.action.GET_SESSION_STATUS"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.action.END_SESSION"

    invoke-direct {p0, v0}, Landroid/support/v7/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsSessionManagement:Z

    .line 725
    return-void

    :cond_0
    move v0, v2

    .line 712
    goto :goto_0

    :cond_1
    move v0, v2

    .line 718
    goto :goto_1

    :cond_2
    move v1, v2

    .line 721
    goto :goto_2
.end method

.method private handleError(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 696
    if-eqz p4, :cond_0

    .line 697
    const-string v1, "android.media.intent.extra.ERROR_CODE"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 702
    :cond_0
    sget-boolean v1, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received error from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Landroid/support/v7/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_1
    invoke-virtual {p2, p3, v0, p4}, Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 709
    return-void
.end method

.method private handleInvalidResult(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received invalid result data from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/support/v7/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 691
    return-void
.end method

.method private static inferMissingResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 766
    :goto_0
    return-object p0

    .line 761
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object p0, p1

    .line 763
    goto :goto_0

    .line 766
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static logRequest(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 770
    sget-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    :cond_0
    return-void
.end method

.method private performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 7

    .prologue
    .line 585
    const-string v0, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    if-eqz p2, :cond_0

    .line 587
    const-string v0, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    :cond_0
    if-eqz p3, :cond_1

    .line 590
    const-string v0, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    :cond_1
    if-eqz p4, :cond_2

    .line 593
    invoke-virtual {p1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 595
    :cond_2
    invoke-static {p1}, Landroid/support/v7/media/RemotePlaybackClient;->logRequest(Landroid/content/Intent;)V

    .line 596
    iget-object v6, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    new-instance v0, Landroid/support/v7/media/RemotePlaybackClient$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RemotePlaybackClient$1;-><init>(Landroid/support/v7/media/RemotePlaybackClient;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V

    invoke-virtual {v6, p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->sendControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)V

    .line 631
    return-void
.end method

.method private performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .prologue
    .line 635
    const-string v0, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    if-eqz p2, :cond_0

    .line 637
    const-string v0, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    :cond_0
    if-eqz p3, :cond_1

    .line 640
    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 642
    :cond_1
    invoke-static {p1}, Landroid/support/v7/media/RemotePlaybackClient;->logRequest(Landroid/content/Intent;)V

    .line 643
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    new-instance v1, Landroid/support/v7/media/RemotePlaybackClient$2;

    invoke-direct {v1, p0, p2, p1, p4}, Landroid/support/v7/media/RemotePlaybackClient$2;-><init>(Landroid/support/v7/media/RemotePlaybackClient;Ljava/lang/String;Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->sendControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)V

    .line 678
    return-void
.end method

.method private playOrEnqueue(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentUri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfRemotePlaybackNotSupported()V

    .line 293
    const-string v0, "android.media.intent.action.ENQUEUE"

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfQueuingNotSupported()V

    .line 297
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v0, "android.media.intent.extra.ITEM_STATUS_UPDATE_RECEIVER"

    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient;->mItemStatusPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    if-eqz p3, :cond_2

    .line 302
    const-string v0, "android.media.intent.extra.ITEM_METADATA"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 304
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-eqz v0, :cond_3

    .line 305
    const-string v0, "android.media.intent.extra.ITEM_POSITION"

    invoke-virtual {v1, v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 307
    :cond_3
    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RemotePlaybackClient;->performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V

    .line 308
    return-void
.end method

.method private routeSupportsAction(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    const-string v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private throwIfNoCurrentSession()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 752
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no current session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_0
    return-void
.end method

.method private throwIfQueuingNotSupported()V
    .locals 2

    .prologue
    .line 738
    iget-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsQueuing:Z

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The route does not support queuing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    return-void
.end method

.method private throwIfRemotePlaybackNotSupported()V
    .locals 2

    .prologue
    .line 732
    iget-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The route does not support remote playback."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    return-void
.end method

.method private throwIfSessionManagementNotSupported()V
    .locals 2

    .prologue
    .line 744
    iget-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsSessionManagement:Z

    if-nez v0, :cond_0

    .line 745
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The route does not support session management."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    return-void
.end method


# virtual methods
.method public endSession(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfSessionManagementNotSupported()V

    .line 576
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.intent.action.END_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/support/v7/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 580
    return-void
.end method

.method public enqueue(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 10

    .prologue
    .line 282
    const-string v8, "android.media.intent.action.ENQUEUE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/support/v7/media/RemotePlaybackClient;->playOrEnqueue(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionStatus(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .prologue
    .line 544
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfSessionManagementNotSupported()V

    .line 545
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.intent.action.GET_SESSION_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/support/v7/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 549
    return-void
.end method

.method public getStatus(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 6

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 373
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.GET_STATUS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RemotePlaybackClient;->performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V

    .line 375
    return-void
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQueuingSupported()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsQueuing:Z

    return v0
.end method

.method public isRemotePlaybackSupported()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    return v0
.end method

.method public isSessionManagementSupported()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mRouteSupportsSessionManagement:Z

    return v0
.end method

.method public pause(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .prologue
    .line 431
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.intent.action.PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/support/v7/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 435
    return-void
.end method

.method public play(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 10

    .prologue
    .line 247
    const-string v8, "android.media.intent.action.PLAY"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/support/v7/media/RemotePlaybackClient;->playOrEnqueue(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusReceiver:Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    return-void
.end method

.method public remove(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 6

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfQueuingNotSupported()V

    .line 404
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 406
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.REMOVE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RemotePlaybackClient;->performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V

    .line 408
    return-void
.end method

.method public resume(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .prologue
    .line 458
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.intent.action.RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/support/v7/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 462
    return-void
.end method

.method public seek(Ljava/lang/String;JLandroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 6

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 342
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.SEEK"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    const-string v0, "android.media.intent.extra.ITEM_POSITION"

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 344
    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RemotePlaybackClient;->performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;)V

    .line 345
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    :cond_0
    sget-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 183
    :cond_1
    iput-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onSessionChanged(Ljava/lang/String;)V

    .line 188
    :cond_2
    return-void
.end method

.method public setStatusCallback(Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    .line 215
    return-void
.end method

.method public startSession(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 3

    .prologue
    .line 514
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfSessionManagementNotSupported()V

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.intent.action.START_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    const-string v1, "android.media.intent.extra.SESSION_STATUS_UPDATE_RECEIVER"

    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionStatusPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 519
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/support/v7/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 520
    return-void
.end method

.method public stop(Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.intent.action.STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/support/v7/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 489
    return-void
.end method
