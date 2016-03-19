.class public Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPNielsen_mTVR_Tracking"


# instance fields
.field protected id3InfoListener:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;


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
    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 29
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$1;-><init>(Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;)V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->id3InfoListener:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    .line 24
    invoke-super {p0, p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->setSubClass(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->needCreateAppSdk:Z

    .line 26
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->CreateAppSdk()V

    .line 27
    return-void
.end method


# virtual methods
.method protected GetTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "@@@VOOSMPNielsen_mTVR_Tracking"

    return-object v0
.end method

.method protected initConfig()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->getAdInfoOfPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"channelName\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initConfig play & loadMetadata"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-static {v0}, Lcom/nielsen/app/sdk/l;->c(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;

    .line 154
    const-string v0, "{\"adModel\":\"1\"}"

    .line 156
    invoke-static {v0}, Lcom/nielsen/app/sdk/l;->a(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;

    .line 157
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[TRACKING], Nielsen, loadMetadata %s "

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    sput-boolean v5, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->isAppSdkInitied:Z

    goto :goto_0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING] VOOSMPTrackingEvent or ADSInfo is null, don\'t sendTrackingEvent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 140
    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v0

    .line 90
    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING] getADSPeriod(eventCurrent.getPeriodID()) return null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 96
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->isMDialogVod()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "@@@VOOSMPNielsen_mTVR_Tracking"

    const-string v1, "[TRACKING],  --- MDialog Engine, AD Tracking  not support. ---"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 102
    :cond_3
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking$2;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    :cond_4
    :goto_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 105
    :pswitch_0
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop Nielsen SDK."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/nielsen/app/sdk/l;->c()Lcom/nielsen/app/sdk/l;

    .line 109
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 113
    :pswitch_1
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-eqz v0, :cond_4

    .line 115
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 117
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop Nielsen SDK."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lcom/nielsen/app/sdk/l;->c()Lcom/nielsen/app/sdk/l;

    .line 119
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 123
    :cond_5
    :pswitch_2
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-nez v0, :cond_6

    .line 125
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->CreateAppSdk()V

    goto :goto_1

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sAppSdk initConfig."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->initConfig()V

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 66
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getIID3Infor()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->id3InfoListener:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->setIID3Infor(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;)V

    .line 72
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
