.class public Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking$2;
    }
.end annotation


# static fields
.field private static final ADMETASTR:Ljava/lang/String; = "adMetaData"

.field private static final CHANNELSTR:Ljava/lang/String; = "channel"

.field private static final CHAPTERMETASTR:Ljava/lang/String; = "chapterMetaData"

.field private static final CONFIGSTR:Ljava/lang/String; = "configuration"

.field private static final OVPSTR:Ljava/lang/String; = "ovp"

.field private static final PLAYERNAMESTR:Ljava/lang/String; = "playerName"

.field private static final PUBLISHERSTR:Ljava/lang/String; = "publisher"

.field private static final SDKSTR:Ljava/lang/String; = "sdk"

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPOmnitureHBTracking"

.field private static final TAG1:Ljava/lang/String; = "HBTEST"

.field private static final TRACKINGSERVERSTR:Ljava/lang/String; = "trackingServer"

.field private static final VIDEOIDSTR:Ljava/lang/String; = "videoID"

.field private static final VIDEOMETASTR:Ljava/lang/String; = "videoMetaData"

.field private static final VIDEONAMESTR:Ljava/lang/String; = "videoName"


# instance fields
.field private _aaPlugin:Lcom/adobe/b/c/a/a/a;

.field private _adBreakInfo:Lcom/adobe/b/c/a/c/a;

.field private _adInfo:Lcom/adobe/b/c/a/c/b;

.field _adMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _ahPlugin:Lcom/adobe/b/c/a/b/a;

.field private _channel:Ljava/lang/String;

.field private _chapterInfo:Lcom/adobe/b/c/a/c/c;

.field _chapterMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _debug:Z

.field private _event:Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

.field private _heartbeat:Lcom/adobe/b/c/b;

.field private _ovp:Ljava/lang/String;

.field private _period:Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

.field private _playerName:Ljava/lang/String;

.field private _playerPlugin:Lcom/adobe/b/c/a/c/f;

.field private _publisher:Ljava/lang/String;

.field private _qosInfo:Lcom/adobe/b/c/a/c/d;

.field private _sdk:Ljava/lang/String;

.field private _trackingServer:Ljava/lang/String;

.field private final _unknown_idx:I

.field private _videoId:Ljava/lang/String;

.field private _videoInfo:Lcom/adobe/b/c/a/c/e;

.field _videoMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _videoName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_heartbeat:Lcom/adobe/b/c/b;

    .line 56
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    .line 57
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_aaPlugin:Lcom/adobe/b/c/a/a/a;

    .line 58
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_ahPlugin:Lcom/adobe/b/c/a/b/a;

    .line 61
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    .line 62
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adBreakInfo:Lcom/adobe/b/c/a/c/a;

    .line 63
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    .line 64
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterInfo:Lcom/adobe/b/c/a/c/c;

    .line 65
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_qosInfo:Lcom/adobe/b/c/a/c/d;

    .line 68
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerName:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoId:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoName:Ljava/lang/String;

    .line 71
    const-string v0, "heartbeats.omtrdc.net"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_trackingServer:Ljava/lang/String;

    .line 72
    const-string v0, "cbsinteractive"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_publisher:Ljava/lang/String;

    .line 73
    const-string v0, "CBS News"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_channel:Ljava/lang/String;

    .line 74
    const-string v0, "Native Android Player"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_ovp:Ljava/lang/String;

    .line 75
    const-string v0, "1.5.1.0"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_sdk:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_period:Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 86
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_event:Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_debug:Z

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_unknown_idx:I

    .line 98
    invoke-direct {p0, p10}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->setConfigurationMetaData(Ljava/util/HashMap;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v1, Lcom/adobe/b/c/a/c/f;

    new-instance v2, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;

    invoke-direct {v2, p0}, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;-><init>(Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;)V

    invoke-direct {v1, v2}, Lcom/adobe/b/c/a/c/f;-><init>(Lcom/adobe/b/c/a/c/h;)V

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    .line 109
    new-instance v1, Lcom/adobe/b/c/a/c/g;

    invoke-direct {v1}, Lcom/adobe/b/c/a/c/g;-><init>()V

    .line 110
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->isDebug()Z

    move-result v2

    iput-boolean v2, v1, Lcom/adobe/b/c/a/c/g;->a:Z

    .line 111
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v2, v1}, Lcom/adobe/b/c/a/c/f;->a(Lcom/adobe/b/a/a/d;)V

    .line 112
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/adobe/b/c/a/a/a;

    new-instance v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdobeAnalyticsPluginDelegate;

    invoke-direct {v2}, Lcom/visualon/OSMPAdTracking/VOOSMPAdobeAnalyticsPluginDelegate;-><init>()V

    invoke-direct {v1, v2}, Lcom/adobe/b/c/a/a/a;-><init>(Lcom/adobe/b/c/a/a/c;)V

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_aaPlugin:Lcom/adobe/b/c/a/a/a;

    .line 116
    new-instance v1, Lcom/adobe/b/c/a/a/b;

    invoke-direct {v1}, Lcom/adobe/b/c/a/a/b;-><init>()V

    .line 117
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_channel:Ljava/lang/String;

    iput-object v2, v1, Lcom/adobe/b/c/a/a/b;->a:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->isDebug()Z

    move-result v2

    iput-boolean v2, v1, Lcom/adobe/b/c/a/a/b;->b:Z

    .line 119
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_aaPlugin:Lcom/adobe/b/c/a/a/a;

    invoke-virtual {v2, v1}, Lcom/adobe/b/c/a/a/a;->a(Lcom/adobe/b/a/a/d;)V

    .line 120
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_aaPlugin:Lcom/adobe/b/c/a/a/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lcom/adobe/b/c/a/b/a;

    new-instance v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdobeHeartbeatPluginDelegate;

    invoke-direct {v2}, Lcom/visualon/OSMPAdTracking/VOOSMPAdobeHeartbeatPluginDelegate;-><init>()V

    invoke-direct {v1, v2}, Lcom/adobe/b/c/a/b/a;-><init>(Lcom/adobe/b/c/a/b/c;)V

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_ahPlugin:Lcom/adobe/b/c/a/b/a;

    .line 124
    new-instance v1, Lcom/adobe/b/c/a/b/b;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_trackingServer:Ljava/lang/String;

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_publisher:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/adobe/b/c/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_ovp:Ljava/lang/String;

    iput-object v2, v1, Lcom/adobe/b/c/a/b/b;->b:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_sdk:Ljava/lang/String;

    iput-object v2, v1, Lcom/adobe/b/c/a/b/b;->c:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->isDebug()Z

    move-result v2

    iput-boolean v2, v1, Lcom/adobe/b/c/a/b/b;->g:Z

    .line 129
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_ahPlugin:Lcom/adobe/b/c/a/b/a;

    invoke-virtual {v2, v1}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/a/a/d;)V

    .line 130
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_ahPlugin:Lcom/adobe/b/c/a/b/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/adobe/b/c/b;

    new-instance v2, Lcom/visualon/OSMPAdTracking/VOOSMPHeartbeatDelegate;

    invoke-direct {v2}, Lcom/visualon/OSMPAdTracking/VOOSMPHeartbeatDelegate;-><init>()V

    invoke-direct {v1, v0}, Lcom/adobe/b/c/b;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_heartbeat:Lcom/adobe/b/c/b;

    .line 134
    new-instance v0, Lcom/adobe/b/c/c;

    invoke-direct {v0}, Lcom/adobe/b/c/c;-><init>()V

    .line 135
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->isDebug()Z

    move-result v1

    iput-boolean v1, v0, Lcom/adobe/b/c/c;->a:Z

    .line 136
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_heartbeat:Lcom/adobe/b/c/b;

    invoke-virtual {v1, v0}, Lcom/adobe/b/c/b;->a(Lcom/adobe/b/c/c;)V

    .line 137
    return-void
.end method

.method private GetHBTrackTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "HBTEST"

    return-object v0
.end method

.method private checkEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 485
    if-nez p1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 521
    :goto_0
    return-object v0

    .line 490
    :cond_0
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v3

    .line 493
    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->eventHasNoPeriodID(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;)Z

    move-result v0

    if-ne v1, v0, :cond_5

    move v0, v1

    .line 498
    :goto_1
    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->eventHasNoAdsInfo(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;)Z

    move-result v3

    if-ne v1, v3, :cond_4

    .line 502
    :goto_2
    if-nez v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-nez v1, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mADSInfo is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mADSInfo.getPeriodList is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 513
    :cond_2
    if-nez v0, :cond_3

    .line 514
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v0

    .line 515
    if-nez v0, :cond_3

    .line 516
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "curPeriod is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 521
    :cond_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private eventHasNoAdsInfo(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;)Z
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_OPEN_COMPLETE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, p1, :cond_1

    .line 478
    :cond_0
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private eventHasNoPeriodID(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;)Z
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_OPEN_COMPLETE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, p1, :cond_1

    .line 468
    :cond_0
    const/4 v0, 0x1

    .line 470
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdBreakInfoIdx()J
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v6

    .line 374
    if-eqz v6, :cond_0

    invoke-direct {p0, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-wide v0, v4

    .line 395
    :goto_0
    return-wide v0

    .line 379
    :cond_1
    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    move v1, v0

    .line 381
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 382
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 383
    const/4 v7, 0x1

    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v8

    if-ne v7, v8, :cond_3

    .line 384
    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsContent(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 385
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 388
    :cond_3
    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v7

    if-eq v3, v7, :cond_4

    .line 381
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto :goto_1

    .line 391
    :cond_4
    int-to-long v0, v2

    goto :goto_0

    :cond_5
    move-wide v0, v4

    .line 395
    goto :goto_0
.end method

.method private getAdInfoIdx()J
    .locals 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    .line 421
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v5

    .line 422
    invoke-direct {p0, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-wide v0, v6

    .line 445
    :goto_0
    return-wide v0

    .line 427
    :cond_1
    const/4 v1, 0x0

    .line 429
    const/4 v0, 0x0

    move v2, v3

    move-object v4, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 430
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 431
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v8

    if-ne v3, v8, :cond_3

    .line 432
    if-eqz v4, :cond_2

    invoke-direct {p0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsContent(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move v2, v3

    .line 438
    :cond_3
    :goto_2
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v8

    if-eq v4, v8, :cond_5

    .line 429
    add-int/lit8 v1, v1, 0x1

    move-object v4, v0

    goto :goto_1

    .line 435
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 441
    :cond_5
    int-to-long v0, v2

    goto :goto_0

    :cond_6
    move-wide v0, v6

    .line 445
    goto :goto_0
.end method

.method private getChapterInfoIdx()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v3

    .line 400
    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsContent(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-wide v0, v4

    .line 417
    :goto_0
    return-wide v0

    :cond_1
    move v1, v0

    move v2, v0

    .line 406
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 408
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v6

    if-eq v7, v6, :cond_2

    .line 410
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsContent(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v6

    if-ne v7, v6, :cond_2

    .line 411
    add-int/lit8 v2, v2, 0x1

    .line 412
    invoke-interface {v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 413
    int-to-long v0, v2

    goto :goto_0

    .line 406
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-wide v0, v4

    .line 417
    goto :goto_0
.end method

.method private getCurEvent()Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_event:Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

    return-object v0
.end method

.method private getCurPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_period:Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    return-object v0
.end method

.method private getHBStreamType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne p1, v0, :cond_0

    .line 290
    const-string v0, "live"

    .line 294
    :goto_0
    return-object v0

    .line 291
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_VOD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne p1, v0, :cond_1

    .line 292
    const-string v0, "vod"

    goto :goto_0

    .line 294
    :cond_1
    const-string v0, "vod"

    goto :goto_0
.end method

.method private getPeriodLength(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)D
    .locals 4

    .prologue
    .line 299
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 300
    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_0
.end method

.method private initVideoInfo()V
    .locals 6

    .prologue
    .line 351
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/adobe/b/c/a/c/e;

    invoke-direct {v0}, Lcom/adobe/b/c/a/c/e;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    .line 353
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->setVideoId()V

    .line 354
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->setVideoName()V

    .line 355
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/b/c/a/c/e;->a:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mPlaybackTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/b/c/a/c/e;->d:Ljava/lang/Double;

    .line 357
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    const-string v1, "live"

    iput-object v1, v0, Lcom/adobe/b/c/a/c/e;->f:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/b/c/a/c/e;->e:Ljava/lang/Double;

    .line 360
    :cond_0
    return-void
.end method

.method private isDebug()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method private periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 368
    if-nez p1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private periodIsContent(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 363
    if-nez p1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preSendTrackEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->checkEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 526
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-ne v1, v0, :cond_0

    .line 527
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->setCurEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)V

    .line 528
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v1

    .line 529
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Event type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    invoke-direct {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->eventHasNoPeriodID(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->setCurPeriod(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)V

    .line 534
    :cond_0
    return-object v0
.end method

.method private setConfiguration(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    if-nez p1, :cond_1

    .line 247
    :cond_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 214
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 222
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    const-string v3, "playerName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 225
    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Type of key or value is not correct"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    :cond_3
    :try_start_1
    const-string v3, "videoID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 227
    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoId:Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_4
    const-string v3, "videoName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 229
    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoName:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_5
    const-string v3, "trackingServer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 231
    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_trackingServer:Ljava/lang/String;

    goto :goto_0

    .line 232
    :cond_6
    const-string v3, "publisher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 233
    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_publisher:Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_7
    const-string v3, "channel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 235
    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_channel:Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_8
    const-string v3, "ovp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 237
    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_ovp:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_9
    const-string v3, "sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_sdk:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setConfigurationMetaData(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    if-nez p1, :cond_1

    .line 278
    :cond_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 253
    :cond_2
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 261
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    .line 263
    const-string v2, "configuration"

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 264
    invoke-direct {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->setConfiguration(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Type of key or value is not correct"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 265
    :cond_3
    :try_start_1
    const-string v2, "videoMetaData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 266
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoMetadata:Ljava/util/HashMap;

    goto :goto_0

    .line 267
    :cond_4
    const-string v2, "adMetaData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 268
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adMetadata:Ljava/util/HashMap;

    goto :goto_0

    .line 269
    :cond_5
    const-string v2, "chapterMetaData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 270
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterMetadata:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setCurEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_event:Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

    .line 450
    return-void
.end method

.method private setCurPeriod(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_period:Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 458
    return-void
.end method

.method private setVideoId()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getStreamUrl()Ljava/lang/String;

    move-result-object v6

    .line 307
    iget-object v7, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoId:Ljava/lang/String;

    move v2, v3

    move-object v1, v4

    .line 311
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 312
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 313
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsContent(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v8

    if-ne v5, v8, :cond_2

    .line 314
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getVideoGuid()Ljava/lang/String;

    move-result-object v4

    move v0, v3

    .line 325
    :goto_2
    if-eqz v4, :cond_3

    .line 326
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iput-object v4, v0, Lcom/adobe/b/c/a/c/e;->b:Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Guid is taken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_2
    if-nez v1, :cond_7

    .line 319
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodURL()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 328
    :cond_3
    if-eqz v7, :cond_4

    .line 329
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iput-object v7, v0, Lcom/adobe/b/c/a/c/e;->b:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Configuration video id is taken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    :cond_4
    if-eqz v6, :cond_5

    .line 335
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iput-object v6, v0, Lcom/adobe/b/c/a/c/e;->b:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content url is taken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 337
    :cond_5
    if-ne v5, v0, :cond_6

    if-eqz v1, :cond_6

    .line 338
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iput-object v1, v0, Lcom/adobe/b/c/a/c/e;->b:Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Ad url is taken: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 341
    :cond_6
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Video Id is not available"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    move v0, v5

    goto/16 :goto_2
.end method

.method private setVideoName()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getContentName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/b/c/a/c/e;->c:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iget-object v0, v0, Lcom/adobe/b/c/a/c/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoName:Ljava/lang/String;

    .line 348
    return-void
.end method


# virtual methods
.method protected GetTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "@@@VOOSMPOmnitureHBTracking"

    return-object v0
.end method

.method public getAdBreakInfo()Lcom/adobe/b/c/a/c/a;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/adobe/b/c/a/c/a;

    invoke-direct {v0}, Lcom/adobe/b/c/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adBreakInfo:Lcom/adobe/b/c/a/c/a;

    .line 155
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adBreakInfo:Lcom/adobe/b/c/a/c/a;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/b/c/a/c/a;->a:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adBreakInfo:Lcom/adobe/b/c/a/c/a;

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getAdBreakInfoIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/b/c/a/c/a;->c:Ljava/lang/Long;

    .line 159
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v1

    .line 161
    if-eqz v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adBreakInfo:Lcom/adobe/b/c/a/c/a;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/b/c/a/c/a;->b:Ljava/lang/String;

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getAdBreakInfo: position = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adBreakInfo:Lcom/adobe/b/c/a/c/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/c/a;->c:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " _adBreakInfo.name = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adBreakInfo:Lcom/adobe/b/c/a/c/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/c/a;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adBreakInfo:Lcom/adobe/b/c/a/c/a;

    return-object v0

    .line 165
    :cond_1
    const-string v0, "N/A"

    goto :goto_0
.end method

.method public getAdInfo()Lcom/adobe/b/c/a/c/b;
    .locals 4

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    .line 177
    :cond_0
    new-instance v1, Lcom/adobe/b/c/a/c/b;

    invoke-direct {v1}, Lcom/adobe/b/c/a/c/b;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    .line 178
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/b/c/a/c/b;->a:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getPeriodLength(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/b/c/a/c/b;->c:Ljava/lang/Double;

    .line 180
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getAdInfoIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/b/c/a/c/b;->d:Ljava/lang/Long;

    .line 181
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/b/c/a/c/b;->b:Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAdInfo: length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    iget-object v2, v2, Lcom/adobe/b/c/a/c/b;->c:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    iget-object v2, v2, Lcom/adobe/b/c/a/c/b;->d:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " period title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    iget-object v2, v2, Lcom/adobe/b/c/a/c/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adInfo:Lcom/adobe/b/c/a/c/b;

    goto :goto_0
.end method

.method public getChapterInfo()Lcom/adobe/b/c/a/c/c;
    .locals 6

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsContent(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 192
    :cond_0
    new-instance v1, Lcom/adobe/b/c/a/c/c;

    invoke-direct {v1}, Lcom/adobe/b/c/a/c/c;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterInfo:Lcom/adobe/b/c/a/c/c;

    .line 193
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterInfo:Lcom/adobe/b/c/a/c/c;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getPeriodLength(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/b/c/a/c/c;->b:Ljava/lang/Double;

    .line 194
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterInfo:Lcom/adobe/b/c/a/c/c;

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getChapterInfoIdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/b/c/a/c/c;->c:Ljava/lang/Long;

    .line 195
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterInfo:Lcom/adobe/b/c/a/c/c;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/b/c/a/c/c;->d:Ljava/lang/Double;

    .line 196
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getChapterInfo: length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterInfo:Lcom/adobe/b/c/a/c/c;

    iget-object v2, v2, Lcom/adobe/b/c/a/c/c;->b:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterInfo:Lcom/adobe/b/c/a/c/c;

    iget-object v2, v2, Lcom/adobe/b/c/a/c/c;->c:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterInfo:Lcom/adobe/b/c/a/c/c;

    iget-object v2, v2, Lcom/adobe/b/c/a/c/c;->d:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterInfo:Lcom/adobe/b/c/a/c/c;

    goto :goto_0
.end method

.method public getQosInfo()Lcom/adobe/b/c/a/c/d;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoInfo()Lcom/adobe/b/c/a/c/e;
    .locals 6

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->initVideoInfo()V

    .line 141
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getHBStreamType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/b/c/a/c/e;->f:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurEvent()Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurrentContentPosition(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/b/c/a/c/e;->e:Ljava/lang/Double;

    .line 145
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVideoInfo: streamType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iget-object v2, v2, Lcom/adobe/b/c/a/c/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getPlayingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurEvent()Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

    move-result-object v2

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playhead = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iget-object v2, v2, Lcom/adobe/b/c/a/c/e;->e:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    iget-object v2, v2, Lcom/adobe/b/c/a/c/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoInfo:Lcom/adobe/b/c/a/c/e;

    return-object v0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 539
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->preSendTrackEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 540
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v1, v0, :cond_0

    .line 636
    :goto_0
    return-object v0

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getCurPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v0

    .line 546
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v1

    .line 547
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking$2;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 636
    :cond_1
    :goto_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 549
    :pswitch_0
    const-string v0, "trackPlay"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->f()V

    goto :goto_1

    .line 553
    :pswitch_1
    const-string v0, "trackPlay"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->f()V

    goto :goto_1

    .line 557
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsContent(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v2

    if-ne v5, v2, :cond_2

    .line 558
    const-string v0, "trackChapterStart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_aaPlugin:Lcom/adobe/b/c/a/a/a;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_chapterMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/adobe/b/c/a/a/a;->c(Ljava/util/Map;)V

    .line 560
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->l()V

    goto :goto_1

    .line 561
    :cond_2
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v0

    if-ne v5, v0, :cond_3

    .line 562
    const-string v0, "trackAdStart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_aaPlugin:Lcom/adobe/b/c/a/a/a;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_adMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/adobe/b/c/a/a/a;->b(Ljava/util/Map;)V

    .line 564
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->n()V

    goto :goto_1

    .line 567
    :cond_3
    const-string v0, "PLAYBACKSTART does not supported this type"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 571
    :pswitch_3
    const-string v0, "trackPause"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->g()V

    goto :goto_1

    .line 576
    :pswitch_4
    new-instance v2, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking$1;

    invoke-direct {v2, p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking$1;-><init>(Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;)V

    .line 583
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsAd(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v3

    if-ne v5, v3, :cond_4

    .line 584
    const-string v0, "trackAdComplete"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->o()V

    .line 587
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-object v0, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPosType:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_POS:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v0, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsEnd:Z

    if-ne v0, v5, :cond_1

    .line 591
    const-string v0, "trackComplete"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0, v2}, Lcom/adobe/b/c/a/c/f;->a(Lcom/adobe/b/a/b;)V

    goto/16 :goto_1

    .line 594
    :cond_4
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->periodIsContent(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    move-result v0

    if-ne v5, v0, :cond_5

    .line 595
    const-string v0, "trackChapterComplete"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->m()V

    goto/16 :goto_1

    .line 605
    :cond_5
    const-string v0, "PLAYBACKCOMPLETE does not suport this type"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 609
    :pswitch_5
    const-string v0, "trackSeekStart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->j()V

    goto/16 :goto_1

    .line 613
    :pswitch_6
    const-string v0, "trackSeekComplete"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->k()V

    goto/16 :goto_1

    .line 617
    :pswitch_7
    const-string v0, "trackBufferStart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->h()V

    goto/16 :goto_1

    .line 621
    :pswitch_8
    const-string v0, "trackBufferComplete"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->i()V

    goto/16 :goto_1

    .line 625
    :pswitch_9
    const-string v0, "trackVideoLoad()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_aaPlugin:Lcom/adobe/b/c/a/a/a;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_videoMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/adobe/b/c/a/a/a;->a(Ljava/util/Map;)V

    .line 627
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->d()V

    goto/16 :goto_1

    .line 630
    :pswitch_a
    const-string v0, "trackVideoUnload()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->_playerPlugin:Lcom/adobe/b/c/a/c/f;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/c/f;->e()V

    goto/16 :goto_1

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
