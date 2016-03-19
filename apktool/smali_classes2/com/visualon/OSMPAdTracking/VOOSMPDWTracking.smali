.class public Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking$1;
    }
.end annotation


# static fields
.field protected static final DW_MAPP_Str:Ljava/lang/String; = "mapp="

.field protected static final DW_V22:Ljava/lang/String; = "&v22="

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPDWTracking"

.field protected static str_V22:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->str_V22:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
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
    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected GetTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "@@@VOOSMPDWTracking"

    return-object v0
.end method

.method protected replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 429
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 430
    if-ne v0, v2, :cond_0

    .line 432
    const-string v0, "@@@VOOSMPDWTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---DW Tracking--- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reIndex Star not find ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    :goto_0
    return-void

    .line 435
    :cond_0
    const-string v1, "&"

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 436
    if-ne v1, v2, :cond_1

    .line 438
    const-string v0, "@@@VOOSMPDWTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---DW Tracking--- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reIndex End not find ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {p1, v0, v1, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 12

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING] VOOSMPTrackingEvent or ADSInfo is null, don\'t sendTrackingEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 424
    :goto_0
    return-object v0

    .line 61
    :cond_1
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->str_V22:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 64
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    if-nez v2, :cond_2

    .line 65
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getVideoGuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->str_V22:Ljava/lang/String;

    .line 69
    :cond_3
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->str_V22:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->str_V22:Ljava/lang/String;

    .line 73
    :cond_4
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v2

    .line 75
    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v1, :cond_5

    .line 77
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING] Don\'t find action.mPeriodID on ADSInfo. , don\'t sendSegmentEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 81
    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    const-string v0, "http://dw.cbsi.com/levt/video/e.gif?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->isLive()Z

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendStringFromHashMap(Ljava/lang/StringBuffer;Z)Z

    move-result v0

    .line 86
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.MM.dd.HH.mm.ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v4, "&ts="

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->ALL:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 89
    const-string v0, "&siteid="

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->DW_SITEID_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "&srchost="

    const-string v1, ""

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "&componentid="

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->DW_COMPONENTID_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "&playersz="

    const-string v1, "640*360"

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "&part="

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mPartner:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v0, v1, :cond_7

    .line 98
    const-string v0, "&playertime="

    const-string v1, "0"

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mTime:J

    .line 105
    :goto_2
    const/4 v0, 0x0

    .line 106
    if-eqz v2, :cond_27

    .line 107
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_3
    move v1, v0

    .line 109
    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->isMDialogVod()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 111
    const-string v0, "@@@VOOSMPDWTracking"

    const-string v1, "[TRACKING],  --- MDialog Engine, VOD, AD Tracking  not support. ---"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 87
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    :cond_7
    const-string v0, "&playertime="

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 107
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 115
    :cond_9
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking$1;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 381
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , event value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 119
    :pswitch_0
    const-string v0, "&event="

    const-string v1, "init"

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->INIT:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 121
    const-string v0, "OSMP;"

    .line 122
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_26

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 126
    :goto_5
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mHashMap:Ljava/util/HashMap;

    const-string v2, "mapp"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 133
    :goto_6
    const-string v1, "&mapp="

    invoke-virtual {p0, v3, v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->sendHTTPRequest(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 136
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 131
    :cond_a
    const-string v0, "@@@VOOSMPDWTracking"

    const-string v2, "[TRACKING] DW , mapp is null or empty. Use default value."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_6

    .line 140
    :pswitch_1
    if-eqz v1, :cond_e

    .line 142
    const-string v0, "&event="

    const-string v4, "start"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->START:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 144
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->isLastPeriod(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 145
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_b
    :goto_7
    if-nez v1, :cond_c

    .line 160
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getCaptionURL()Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 163
    const-string v0, "&gestval="

    const-string v4, "caption_avaliable:1"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_c
    :goto_8
    const-string v0, "&v22="

    sget-object v4, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->str_V22:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "&medastid="

    const-string v4, "595"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "&medid="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "&medlength="

    iget-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mContentTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "&medtime="

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetMedTime(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "&mednum="

    iget v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mPlayNo:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "&medtitle="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->getADTitle(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v4, "&sdlvrytype="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    sget-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v0, v5, :cond_23

    const/4 v0, 0x2

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v0, "&adnum="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->getADNum(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v0, "&distntwrk="

    const-string v4, "can"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    if-nez v1, :cond_24

    .line 400
    const-string v0, "&eventcat="

    const-string v1, "video"

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_d
    :goto_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->sendHTTPRequest(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 424
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 146
    :cond_e
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->isFirstContent(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mContentStart:Z

    if-nez v0, :cond_f

    .line 148
    const-string v0, "&event="

    const-string v4, "start"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->START:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mContentStart:Z

    goto/16 :goto_7

    .line 153
    :cond_f
    const-string v0, "&event="

    const-string v4, "play"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PLAY:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 155
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 170
    :pswitch_2
    const-string v0, "&event="

    const-string v4, "end"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->CLOSE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 172
    if-nez v1, :cond_10

    .line 174
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getCaptionURL()Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 177
    const-string v0, "&gestval="

    const-string v4, "caption_avaliable:1"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_10
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 185
    :pswitch_3
    const-string v0, "&event="

    const-string v4, "stop"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->STOP:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 187
    if-nez v1, :cond_c

    .line 189
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getCaptionURL()Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 192
    const-string v0, "&gestval="

    const-string v4, "caption_avaliable:1"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 199
    :pswitch_4
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_ACTION_START, event value is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , Period type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 205
    :pswitch_5
    if-eqz v1, :cond_12

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x19

    cmp-long v0, v4, v6

    if-eqz v0, :cond_11

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x32

    cmp-long v0, v4, v6

    if-eqz v0, :cond_11

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x4b

    cmp-long v0, v4, v6

    if-nez v0, :cond_12

    .line 207
    :cond_11
    const-string v0, "&event="

    const-string v4, "play"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PLAY:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 209
    const-string v0, "&gestval="

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pct:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 213
    :cond_12
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PERCENTAGE, event value is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , Period type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 220
    :pswitch_6
    if-nez v1, :cond_14

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x19

    cmp-long v0, v4, v6

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x32

    cmp-long v0, v4, v6

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x4b

    cmp-long v0, v4, v6

    if-nez v0, :cond_14

    .line 222
    :cond_13
    const-string v0, "&event="

    const-string v4, "play"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PLAY:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 224
    const-string v0, "&gestval="

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pct:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 226
    :cond_14
    if-nez v1, :cond_16

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v0, v4, v6

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x14

    cmp-long v0, v4, v6

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v0, v4, v6

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x28

    cmp-long v0, v4, v6

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    cmp-long v0, v4, v6

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x46

    cmp-long v0, v4, v6

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x50

    cmp-long v0, v4, v6

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x5a

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    .line 230
    :cond_15
    const-string v0, "&event="

    const-string v4, "play"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PLAY:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 232
    const-string v0, "&gestval="

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pct:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 236
    :cond_16
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PERCENTAGE, event value is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , Period type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 243
    :pswitch_7
    if-nez v1, :cond_1b

    .line 245
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 246
    const/4 v4, 0x5

    if-ge v0, v4, :cond_17

    iget-boolean v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->isFirstTimePass:Z

    if-nez v4, :cond_17

    .line 248
    const-string v0, "&event="

    const-string v4, "play"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PLAY:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->isFirstTimePass:Z

    .line 251
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 252
    :cond_17
    const/4 v4, 0x5

    if-lt v0, v4, :cond_18

    const/16 v4, 0x3d

    if-ge v0, v4, :cond_18

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v4

    sget-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-eq v4, v5, :cond_18

    rem-int/lit8 v4, v0, 0xf

    if-nez v4, :cond_18

    .line 254
    const-string v0, "&event="

    const-string v4, "play"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PLAY:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->isFirstTimePass:Z

    .line 257
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 258
    :cond_18
    const/4 v4, 0x5

    if-lt v0, v4, :cond_19

    const/16 v4, 0x3d

    if-ge v0, v4, :cond_19

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v4

    sget-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v4, v5, :cond_19

    rem-int/lit8 v4, v0, 0x5

    if-nez v4, :cond_19

    .line 260
    const-string v0, "&event="

    const-string v4, "play"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PLAY:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->isFirstTimePass:Z

    .line 263
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 264
    :cond_19
    const/16 v4, 0x3d

    if-lt v0, v4, :cond_1a

    rem-int/lit8 v0, v0, 0x3c

    if-nez v0, :cond_1a

    .line 266
    const-string v0, "&event="

    const-string v4, "play"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PLAY:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->isFirstTimePass:Z

    .line 269
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 272
    :cond_1a
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_TIMEPASSED, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 277
    :cond_1b
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_TIMEPASSED, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 284
    :pswitch_8
    const-string v0, "&event="

    const-string v4, "pause"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PAUSE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mPauseTime:J

    .line 287
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 292
    :pswitch_9
    const-string v0, "&event="

    const-string v4, "unpause"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->PAUSE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 295
    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mPauseTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 296
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Current time is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pause time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mPauseTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    const-string v4, "&eventdur="

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mPauseTime:J

    .line 299
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 304
    :pswitch_a
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->getPlaylistTime(J)J

    move-result-wide v4

    .line 306
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->getCurrentContentPosition(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)J

    move-result-wide v6

    .line 307
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gez v0, :cond_1c

    .line 309
    const-string v0, "&event="

    const-string v8, "rewind"

    invoke-virtual {p0, v3, v0, v8}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->SEEK:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 311
    const-string v0, "&eventdur="

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v0, v8}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "mapp="

    const-string v8, ""

    invoke-virtual {p0, v3, v0, v8}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_b
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "VO_OSMP_ADS_TRACKING_EVENT_SEEKS, id is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , event value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , playingTime is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "seek pos is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , current Content pos is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 315
    :cond_1c
    const-string v0, "&event="

    const-string v8, "forward"

    invoke-virtual {p0, v3, v0, v8}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->SEEK:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 317
    const-string v0, "&eventdur="

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v0, v8}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "mapp="

    const-string v8, ""

    invoke-virtual {p0, v3, v0, v8}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 326
    :pswitch_b
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1d

    .line 328
    const-string v0, "&event="

    const-string v4, "fullscreen"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->SCREEN:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mFullScreenTime:J

    .line 331
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 332
    :cond_1d
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1f

    .line 334
    const-string v0, "&event="

    const-string v4, "normalscreen"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->SCREEN:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 336
    const/4 v0, 0x0

    .line 337
    iget-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mFullScreenTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1e

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mFullScreenTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 341
    :cond_1e
    const-string v4, "&eventdur="

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mFullScreenTime:J

    .line 343
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 346
    :cond_1f
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PLAYER_FULLSCREEN, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 352
    :pswitch_c
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_20

    .line 354
    const-string v0, "&event="

    const-string v4, "caption"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->CAPTION:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 356
    const-string v0, "&gestval="

    const-string v4, "caption:on"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mClosedCaptionTime:J

    .line 358
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 359
    :cond_20
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_22

    .line 361
    const-string v0, "&event="

    const-string v4, "caption"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->CAPTION:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V

    .line 363
    const-string v0, "&gestval="

    const-string v4, "caption:off"

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    .line 365
    iget-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mClosedCaptionTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_21

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mClosedCaptionTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 369
    :cond_21
    const-string v4, "&eventdur="

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v4, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mClosedCaptionTime:J

    .line 371
    const-string v0, "mapp="

    const-string v4, ""

    invoke-virtual {p0, v3, v0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->replaceFromUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 374
    :cond_22
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] DW don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PLAYER_CLOSEDCAPTION, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 394
    :cond_23
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 401
    :cond_24
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_CLOSEDCAPTION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v1, :cond_d

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_FULLSCREEN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v1, :cond_d

    .line 404
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mTrackingServer:Ljava/lang/String;

    const-string v1, "Development"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    .line 406
    const-string v0, "&adid="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "&adtitle="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TRACKING], VO_OSMP_AD_DEVELOPMENT_SERVER is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mTrackingServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :goto_c
    const-string v0, "&adastid="

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->DW_ADASTID_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v0, "&adtime="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->getADTime(IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "&adtype="

    const-string v1, "1"

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "&adpos="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->getADPos(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 411
    :cond_25
    const-string v0, "&adid="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "&adtitle="

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->GetTagString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TRACKING], VO_OSMP_AD_PRODUCTION_SERVER is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->mTrackingServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_26
    move-object v1, v0

    goto/16 :goto_5

    :cond_27
    move v1, v0

    goto/16 :goto_4

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
