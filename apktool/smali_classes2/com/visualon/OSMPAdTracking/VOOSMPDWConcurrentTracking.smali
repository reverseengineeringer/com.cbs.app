.class public Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$2;
    }
.end annotation


# static fields
.field protected static final DW_AFFILIATE:Ljava/lang/String; = "&affiliate="

.field protected static final DW_EPISODE:Ljava/lang/String; = "&episode="

.field protected static final DW_HTTP_Header:Ljava/lang/String; = "http://dw.cbsi.com/levt/beacon/e.gif?"

.field protected static final DW_PLATFORM:Ljava/lang/String; = "&platform="

.field protected static final DW_USERID:Ljava/lang/String; = "&userid="

.field protected static final DW_V22:Ljava/lang/String; = "&v22="

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPDWConcurrentTracking"


# instance fields
.field private period:I

.field private timer:Ljava/util/Timer;


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
    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->timer:Ljava/util/Timer;

    .line 39
    const/16 v0, 0x2710

    iput v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->period:I

    .line 51
    return-void
.end method


# virtual methods
.method protected GetTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "@@@VOOSMPDWConcurrentTracking"

    return-object v0
.end method

.method protected addV21()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected isLive()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 188
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_2

    .line 190
    const-string v3, "@@@VOOSMPDWConcurrentTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PriodList("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") --- priod type= NORMALCONTENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v3

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v3, v4, :cond_2

    .line 192
    const-string v3, "@@@VOOSMPDWConcurrentTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PriodList("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") --- stream type="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    const/4 v2, 0x1

    goto :goto_0

    .line 185
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 160
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->eventCurrent:Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

    .line 161
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$2;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->startTimer()V

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->stopTimer()V

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->stopTimer()V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTimerPeriod(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    iget v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->period:I

    .line 65
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    if-lez v0, :cond_1

    .line 63
    iput v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->period:I

    .line 65
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->period:I

    goto :goto_0
.end method

.method protected startTimer()V
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->timer:Ljava/util/Timer;

    .line 72
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;-><init>(Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;)V

    .line 146
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->period:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method protected stopTimer()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->timer:Ljava/util/Timer;

    .line 155
    :cond_0
    return-void
.end method
