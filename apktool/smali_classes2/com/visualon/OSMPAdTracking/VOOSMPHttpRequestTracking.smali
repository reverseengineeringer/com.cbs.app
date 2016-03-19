.class public Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private advertisingId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "@@@VOOSMPDoubleClick"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->advertisingId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private getAdvertisingId()V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdvertisingID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->advertisingId:Ljava/lang/String;

    .line 62
    :cond_0
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->TAG:Ljava/lang/String;

    const-string v1, "Get advertising ID %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->advertisingId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method


# virtual methods
.method public sendHttpRequest(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt v1, v3, :cond_1

    .line 32
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->TAG:Ljava/lang/String;

    const-string v2, "[TRACKING], url content is %s, %s, %s."

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v0, v5

    aput-object v4, v3, v5

    aget-object v4, v0, v6

    aput-object v4, v3, v6

    aget-object v0, v0, v7

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const-string v0, "#{ADVERTISER_ID}"

    .line 37
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->advertisingId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;

    invoke-direct {v1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;-><init>()V

    .line 40
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->executeMultiThread([Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->TAG:Ljava/lang/String;

    const-string v2, "advertisingId: %s "

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->advertisingId:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->TAG:Ljava/lang/String;

    const-string v2, "[TRACKING], url: %s "

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;

    invoke-direct {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;-><init>()V

    .line 49
    new-array v1, v6, [Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->executeMultiThread([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v2

    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v3, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[TRACKING] VOOSMPTrackingEvent or ADSInfo is null, don\'t sendTrackingEvent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 133
    :goto_0
    return-object v0

    .line 79
    :cond_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v0

    .line 81
    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[TRACKING] Don\'t find action.mPeriodID on ADSInfo. , don\'t sendTrackingEvent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 87
    :cond_2
    const/4 v3, 0x1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-ne v3, v0, :cond_3

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->isMDialogVod()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->TAG:Ljava/lang/String;

    const-string v2, "[TRACKING], --- MDialog Engine, AD Tracking  not support. ---"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 93
    :cond_3
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking$1;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 131
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->advertisingId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->advertisingId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    :cond_4
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->getAdvertisingId()V

    .line 113
    :cond_5
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 115
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TRACKING], doubleclick, event.getEventText() is null, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    :cond_6
    move v0, v1

    .line 119
    :goto_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 121
    sget-object v3, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING], ready send, doubleclick url is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->sendHttpRequest(Ljava/lang/String;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 133
    goto/16 :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
