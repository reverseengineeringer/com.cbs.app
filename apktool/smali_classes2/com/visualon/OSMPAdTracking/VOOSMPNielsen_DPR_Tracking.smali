.class public Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPNielsen_DPR_Tracking"


# instance fields
.field private monitorHeadPos:Ljava/util/TimerTask;

.field private monitorHeadTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->monitorHeadTimer:Ljava/util/Timer;

    .line 27
    invoke-super {p0, p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->setSubClass(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->needCreateAppSdk:Z

    .line 29
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->CreateAppSdk()V

    .line 30
    return-void
.end method

.method private playedType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->getAdInfoOfPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v1

    .line 90
    const/4 v0, -0x1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    .line 94
    :cond_0
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->getVideoType(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0
.end method


# virtual methods
.method protected GetTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "@@@VOOSMPNielsen_DPR_Tracking"

    return-object v0
.end method

.method protected appMonitorPlayHead()V
    .locals 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->monitorHeadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->monitorHeadTimer:Ljava/util/Timer;

    .line 143
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$1;-><init>(Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;)V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->monitorHeadPos:Ljava/util/TimerTask;

    .line 177
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->monitorHeadTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->monitorHeadPos:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method protected initConfig()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-wide/16 v0, 0x0

    .line 103
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v2, :cond_2

    .line 104
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 106
    :cond_2
    const-string v2, "content"

    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->playedType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"channelName\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->channelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "initConfig play & loadMetadata & appMonitorPlayHead"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->getAdInfoOfPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v2

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->getADCID(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    const-string v4, ""

    if-ne v2, v4, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "get assetid from cid is empty, so get guid instead"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->getVideoGuid()Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_3
    invoke-static {v3}, Lcom/nielsen/app/sdk/l;->c(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"dataSrc\":\"cms\",\"type\":\"content\",\"assetid\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"tv\":\"true\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"title\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->strEpisodeTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"category\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->strCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"length\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/nielsen/app/sdk/l;->a(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;

    .line 133
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->appMonitorPlayHead()V

    .line 135
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[TRACKING], Nielsen, loadMetadata %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 36
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$2;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    :goto_1
    return-object v0

    .line 38
    :pswitch_0
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop Nielsen SDK."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/nielsen/app/sdk/l;->c()Lcom/nielsen/app/sdk/l;

    .line 42
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_1

    .line 46
    :pswitch_1
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8888888888888888888Stop Nielsen SDK."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lcom/nielsen/app/sdk/l;->c()Lcom/nielsen/app/sdk/l;

    .line 52
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_1

    .line 56
    :cond_1
    :pswitch_2
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appsdk stop here because is ad"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/nielsen/app/sdk/l;->c()Lcom/nielsen/app/sdk/l;

    goto :goto_0

    .line 64
    :cond_2
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-nez v0, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->CreateAppSdk()V

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sAppSdk initConfig."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->initConfig()V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
