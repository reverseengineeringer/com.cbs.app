.class public Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPComScore2Tracking"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
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
    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 22
    const-string v0, "@@@VOOSMPComScore2Tracking"

    const-string v1, "VOOSMPComScoreTracking construct"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 33
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v1, :cond_1

    .line 36
    const-string v0, "@@@VOOSMPComScore2Tracking"

    const-string v1, "[TRACKING] VOOSMPTrackingEvent or ADSInfo is null, don\'t sendTrackingEvent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 76
    :goto_0
    return-object v0

    .line 40
    :cond_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v0

    .line 42
    if-nez v0, :cond_2

    .line 44
    const-string v0, "@@@VOOSMPComScore2Tracking"

    const-string v1, "[TRACKING] Don\'t find action.mPeriodID on ADSInfo. , don\'t sendTrackingEvent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_HTTP_HEADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking$1;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 69
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 55
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_C1_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&C2="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_C2_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&C3="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_C3_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&C4="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_C4_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&C5="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_C5_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&C6="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_C6_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&C7="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_C7_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&C8="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_C8_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&C9="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->COMSCORE_C9_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;

    invoke-direct {v1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;-><init>()V

    .line 74
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->executeMultiThread([Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
