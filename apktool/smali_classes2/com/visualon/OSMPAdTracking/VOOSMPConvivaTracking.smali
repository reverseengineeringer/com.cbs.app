.class public Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking$1;
    }
.end annotation


# static fields
.field private static final CONVIVA_CUSTOMER_TAG_ADCLIPID:Ljava/lang/String; = "adClipId"

.field private static final CONVIVA_CUSTOMER_TAG_ADSERVERNAME:Ljava/lang/String; = "adServerName"

.field private static final CONVIVA_CUSTOMER_TAG_ADTITLE:Ljava/lang/String; = "adTitle"

.field private static final CONVIVA_CUSTOMER_TAG_DYNAMICSTREAMING:Ljava/lang/String; = "dynamicStreaming"

.field private static final CONVIVA_CUSTOMER_TAG_ISAD:Ljava/lang/String; = "isAd"

.field private static final CONVIVA_CUSTOMER_TAG_ISEPISODE:Ljava/lang/String; = "isEpisode"

.field private static final CONVIVA_CUSTOMER_TAG_PARTNERID:Ljava/lang/String; = "Partner_ID"

.field private static final CONVIVA_CUSTOMER_TAG_PLAYERVERSION:Ljava/lang/String; = "Player_Version"

.field private static final CONVIVA_CUSTOMER_TAG_SERUESTITLE:Ljava/lang/String; = "seriesTitle"

.field private static final CONVIVA_CUSTOMER_TAG_WINDIMENSION:Ljava/lang/String; = "winDimension"

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPConvivaTracking"


# instance fields
.field private bFirstStartRender:Z

.field private bWinDimensionChanged:Z

.field private mAdServerName:Ljava/lang/String;

.field private mCustomerKey:Ljava/lang/String;

.field private mDefaultReportingCdnName:Ljava/lang/String;

.field private mInputData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPartnerID:Ljava/lang/String;

.field private mPlayer:Ljava/lang/Object;

.field private mPlayerName:Ljava/lang/String;

.field private mPlayerVersion:Ljava/lang/String;

.field private mViewerId:Ljava/lang/String;

.field private mWinDimensionValue:Ljava/lang/String;

.field private m_LivePassSessionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    .line 34
    iput-boolean v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->bWinDimensionChanged:Z

    .line 35
    iput-boolean v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->bFirstStartRender:Z

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mWinDimensionValue:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mInputData:Ljava/util/HashMap;

    .line 67
    const-string v0, "player"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPlayer:Ljava/lang/Object;

    .line 68
    const-string v0, "customerKey"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mCustomerKey:Ljava/lang/String;

    .line 69
    const-string v0, "defaultReportingCdnName"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mDefaultReportingCdnName:Ljava/lang/String;

    .line 70
    const-string v0, "playerName"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPlayerName:Ljava/lang/String;

    .line 71
    const-string v0, "viewerId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mViewerId:Ljava/lang/String;

    .line 73
    const-string v0, "adServerName"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mAdServerName:Ljava/lang/String;

    .line 74
    const-string v0, "Partner_ID"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPartnerID:Ljava/lang/String;

    .line 75
    const-string v0, "Player_Version"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPlayerVersion:Ljava/lang/String;

    .line 77
    const-string v0, "logging"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    const-string v1, "gatewayUrl"

    const-string v2, "https://cbscom-test.testonly.conviva.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mCustomerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/conviva/LivePass;->initWithSettings(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    .line 86
    const-string v0, "@@@VOOSMPConvivaTracking"

    const-string v1, "[TRACKING], Conviva debug mode init success."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/conviva/LivePass;->toggleTraces(Ljava/lang/Boolean;)V

    .line 103
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v0

    const-string v0, "@@@VOOSMPConvivaTracking"

    const-string v1, "[TRACKING], Conviva debug mode init failed ."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mCustomerKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/conviva/LivePass;->init(Ljava/lang/String;Landroid/content/Context;)V

    .line 96
    const-string v0, "@@@VOOSMPConvivaTracking"

    const-string v1, "[TRACKING], Conviva production mode init success."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    const-string v0, "@@@VOOSMPConvivaTracking"

    const-string v1, "[TRACKING], Conviva production mode init failed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private cleanSession(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    .line 188
    :try_start_0
    iget v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    invoke-static {v2}, Lcom/conviva/LivePass;->cleanupSession(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :try_start_1
    const-string v1, "@@@VOOSMPConvivaTracking"

    const-string v2, "[TRACKING], Conviva, cleanupSession is %d, event type is %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getADInfo(I)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 481
    .line 484
    const/4 v0, -0x1

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v0

    move v7, v2

    move v8, v2

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 495
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 496
    if-nez v1, :cond_0

    .line 498
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v5

    if-nez v5, :cond_6

    move v5, v2

    .line 504
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v10

    if-nez v10, :cond_1

    move v5, v2

    .line 509
    :cond_1
    if-nez v6, :cond_2

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    if-ne v6, v9, :cond_2

    if-nez v3, :cond_2

    .line 512
    add-int/lit8 v8, v8, 0x1

    move v7, v2

    .line 516
    :cond_2
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    if-ne v6, v9, :cond_3

    if-nez v3, :cond_3

    .line 518
    add-int/lit8 v7, v7, 0x1

    .line 521
    :cond_3
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    .line 523
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 528
    if-nez v5, :cond_8

    move v3, v9

    move v4, v9

    .line 533
    :cond_4
    if-eqz v3, :cond_5

    if-nez v6, :cond_5

    move v4, v2

    .line 493
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    move v5, v9

    .line 501
    goto :goto_1

    :cond_7
    move v9, v3

    .line 538
    :cond_8
    if-eqz v9, :cond_9

    if-eqz v5, :cond_9

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pre_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    :goto_2
    return-object v0

    .line 541
    :cond_9
    if-eqz v9, :cond_a

    if-eqz v4, :cond_a

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "post_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 544
    :cond_a
    if-eqz v9, :cond_b

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mid_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 547
    :cond_b
    const-string v0, ""

    goto :goto_2
.end method


# virtual methods
.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 204
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 206
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v2

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_WINDIMENSION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v2, v3, :cond_0

    .line 208
    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->bWinDimensionChanged:Z

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventText()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mWinDimensionValue:Ljava/lang/String;

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v2

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v2, v3, :cond_2

    .line 215
    const-string v0, "@@@VOOSMPConvivaTracking"

    const-string v2, "[TRACKING] VOOSMPTrackingEvent or ADSInfo is null, don\'t sendTrackingEvent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 475
    :goto_0
    return-object v0

    .line 219
    :cond_2
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v2

    .line 221
    if-nez v2, :cond_3

    .line 223
    const-string v0, "@@@VOOSMPConvivaTracking"

    const-string v2, "[TRACKING] Don\'t find action.mPeriodID on ADSInfo. , don\'t sendTrackingEvent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->isMDialogVod()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 229
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v3

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_FORCESTOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v3, v4, :cond_6

    .line 231
    iget v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    if-gez v0, :cond_4

    .line 232
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 234
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->cleanSession(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    .line 256
    :cond_5
    :goto_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 236
    :cond_6
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v3

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v3, v4, :cond_5

    .line 238
    iget v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    if-gez v3, :cond_7

    .line 240
    const-string v2, "@@@VOOSMPConvivaTracking"

    const-string v3, "[TRACKING], Conviva, m_LivePassSessionId(%d) < 0"

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 244
    :cond_7
    const-string v0, "@@@VOOSMPConvivaTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lwc test [TRACKING], PLAYBACKCOMPLETE, period.getID() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event.getPlayingTime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isLastPeriod = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->isLastPeriod(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->isLastPeriod(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    invoke-direct {p0, p1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->cleanSession(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    goto :goto_1

    .line 259
    :cond_8
    sget-object v3, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking$1;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 472
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 263
    :pswitch_0
    iget v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    if-gez v3, :cond_9

    .line 264
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 266
    :cond_9
    const-string v3, "@@@VOOSMPConvivaTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING], Conviva, bFirstStartRender = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->bFirstStartRender:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPodInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event.getPeriodID() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", period.getPeriodType() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v1

    if-ne v1, v0, :cond_a

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-object v1, v1, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPosType:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_PRE:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    if-ne v1, v2, :cond_a

    iget-boolean v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->bFirstStartRender:Z

    if-ne v1, v0, :cond_a

    .line 280
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->bFirstStartRender:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_a
    :goto_2
    :pswitch_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 291
    :pswitch_2
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-ne v3, v0, :cond_a

    .line 293
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string v4, "adClipId"

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADInfo(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v4, "adClipId"

    invoke-static {v4, v3}, Lcom/conviva/LivePass;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    const-string v4, "@@@VOOSMPConvivaTracking"

    const-string v5, "[TRACKING], Conviva, sendEvent key is %s, value is %s. PeroidID is %d"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "adClipId"

    aput-object v7, v6, v1

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADInfo(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 299
    const-string v4, "adTitle"

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v4, "adTitle"

    invoke-static {v4, v3}, Lcom/conviva/LivePass;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 301
    const-string v3, "@@@VOOSMPConvivaTracking"

    const-string v4, "[TRACKING], Conviva, sendEvent key is %s, value is %s. PeroidID is %d"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "adTitle"

    aput-object v6, v5, v1

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    if-nez v3, :cond_e

    .line 309
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADInfo(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pre"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 311
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADInfo(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 312
    array-length v4, v3

    if-ne v4, v8, :cond_18

    .line 314
    aget-object v3, v3, v0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    :goto_3
    move v1, v0

    .line 360
    :cond_b
    :goto_4
    if-eqz v1, :cond_a

    .line 363
    :try_start_1
    iget v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    invoke-static {v0}, Lcom/conviva/LivePass;->pauseMonitor(I)V

    .line 364
    const-string v0, "@@@VOOSMPConvivaTracking"

    const-string v1, "[TRACKING], Conviva, pauseMonitor, PeriodID is %d, event type name is %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 367
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 321
    :cond_c
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADInfo(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "post"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 323
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADInfo(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 324
    array-length v4, v3

    if-ne v4, v8, :cond_b

    .line 326
    aget-object v3, v3, v0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v0

    .line 328
    goto :goto_4

    .line 333
    :cond_d
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADInfo(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 335
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADInfo(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 336
    array-length v4, v3

    if-ne v4, v9, :cond_b

    .line 338
    aget-object v3, v3, v8

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v0

    .line 340
    goto/16 :goto_4

    .line 348
    :cond_e
    const-string v3, "@@@VOOSMPConvivaTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING], PLAYBACKSTART, period.getID() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPodInfo.mIsFirst = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v5, v5, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsFirst:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPodInfo.mIsEnd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v5, v5, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsEnd:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPodInfo.mCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget v5, v5, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPodInfo.mPosType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-object v5, v5, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPosType:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v3, v3, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsFirst:Z

    if-eqz v3, :cond_b

    move v1, v0

    .line 356
    goto/16 :goto_4

    .line 376
    :pswitch_3
    iget v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    if-gez v3, :cond_f

    .line 378
    const-string v2, "@@@VOOSMPConvivaTracking"

    const-string v3, "[TRACKING], Conviva, m_LivePassSessionId(%d) < 0"

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 382
    :cond_f
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-eq v3, v0, :cond_10

    .line 384
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 391
    :cond_10
    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    if-nez v3, :cond_16

    .line 393
    const-string v3, "@@@VOOSMPConvivaTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING], PLAYBACKCOMPLETE, period.getID() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event.getPlayingTime() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getADPos() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v5

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADPos(IJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isLastPreAd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->isLastPreAd(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isLastPeriod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->isLastPeriod(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isLastOfEveryMidAd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->isLastOfEveryMidAd(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getADPos(IJ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->isLastOfEveryMidAd(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 439
    :cond_11
    :goto_5
    if-eqz v0, :cond_12

    .line 442
    :try_start_2
    iget v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPlayer:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/conviva/LivePass;->attachStreamer(ILjava/lang/Object;)V

    .line 443
    const-string v0, "@@@VOOSMPConvivaTracking"

    const-string v3, "[TRACKING], Conviva, attachStreamer, PeriodID is %d, event type name is %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 450
    :cond_12
    :goto_6
    if-eqz v1, :cond_a

    .line 452
    invoke-direct {p0, p1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->cleanSession(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;)Z

    goto/16 :goto_2

    .line 407
    :cond_13
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->isLastPeriod(I)Z

    move-result v3

    if-eqz v3, :cond_14

    move v1, v0

    .line 410
    goto :goto_5

    .line 413
    :cond_14
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->isLastPreAd(I)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_15
    move v0, v1

    goto :goto_5

    .line 421
    :cond_16
    const-string v3, "@@@VOOSMPConvivaTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING], PLAYBACKCOMPLETE, event.getEventType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", period.getID() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPodInfo.mIsFirst = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v5, v5, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsFirst:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPodInfo.mIsEnd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v5, v5, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsEnd:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPodInfo.mCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget v5, v5, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPodInfo.mPosType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-object v5, v5, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPosType:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v3, v3, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsEnd:Z

    if-ne v3, v0, :cond_15

    .line 431
    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-object v3, v3, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPosType:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_POS:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    if-ne v3, v4, :cond_11

    move v1, v0

    .line 433
    goto/16 :goto_5

    .line 446
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 459
    :pswitch_4
    iget v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    if-gez v2, :cond_17

    .line 460
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 462
    :cond_17
    iget v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    invoke-static {v2}, Lcom/conviva/LivePass;->cleanupSession(I)V

    .line 463
    const-string v2, "@@@VOOSMPConvivaTracking"

    const-string v3, "[TRACKING], Conviva, cleanupSession is %d, event type is %s."

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_18
    move v0, v1

    goto/16 :goto_3

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v5

    .line 110
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v5, v0, :cond_0

    move-object v0, v5

    .line 182
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const/4 v3, 0x0

    move v1, v2

    .line 114
    :goto_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 116
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_URI_VAST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v0, v6, :cond_2

    .line 117
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 119
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-object v1, v0

    .line 132
    :goto_2
    iget v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    if-gez v0, :cond_1

    if-eqz v1, :cond_1

    .line 134
    const-string v3, "wifi"

    .line 135
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 137
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_7

    .line 142
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 143
    const-string v0, "4g"

    .line 148
    :goto_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-string v6, "connectionType"

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "adServerName"

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mAdServerName:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "Partner_ID"

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPartnerID:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "Player_Version"

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPlayerVersion:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "dynamicStreaming"

    const-string v6, "false"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "isEpisode"

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->isEpisode()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 156
    const-string v0, "isAd"

    const-string v6, "true"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_4
    const-string v0, "seriesTitle"

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getSeriesTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "winDimension"

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mWinDimensionValue:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->getContentName()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v6, Lcom/conviva/ConvivaContentInfo;

    invoke-direct {v6, v0, v3}, Lcom/conviva/ConvivaContentInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mDefaultReportingCdnName:Ljava/lang/String;

    iput-object v0, v6, Lcom/conviva/ConvivaContentInfo;->defaultReportingCdnName:Ljava/lang/String;

    .line 165
    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v0, v1, :cond_6

    move v0, v4

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/conviva/ConvivaContentInfo;->isLive:Ljava/lang/Boolean;

    .line 166
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPlayerName:Ljava/lang/String;

    iput-object v0, v6, Lcom/conviva/ConvivaContentInfo;->playerName:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mViewerId:Ljava/lang/String;

    iput-object v0, v6, Lcom/conviva/ConvivaContentInfo;->viewerId:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/conviva/ConvivaContentInfo;->streamUrl:Ljava/lang/String;

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->mPlayer:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/conviva/LivePass;->createSession(Ljava/lang/Object;Lcom/conviva/ConvivaContentInfo;)I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    .line 172
    const-string v0, "@@@VOOSMPConvivaTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING], Conviva, LivePass.createSession successful, id is "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;->m_LivePassSessionId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const-string v0, "@@@VOOSMPConvivaTracking"

    const-string v1, "[TRACKING], Conviva, ConvivaContentInfo, tags is %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_6
    move-object v0, v5

    .line 182
    goto/16 :goto_0

    .line 124
    :cond_2
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-nez v0, :cond_3

    .line 126
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-object v1, v0

    .line 127
    goto/16 :goto_2

    .line 114
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 145
    :cond_4
    const-string v0, "3g"

    goto/16 :goto_3

    .line 158
    :cond_5
    const-string v0, "isAd"

    const-string v6, "false"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 165
    goto :goto_5

    .line 174
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "@@@VOOSMPConvivaTracking"

    const-string v3, "[TRACKING], Conviva, LivePass.createSession occur exception"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_7
    move-object v0, v3

    goto/16 :goto_3

    :cond_8
    move-object v1, v3

    goto/16 :goto_2
.end method
