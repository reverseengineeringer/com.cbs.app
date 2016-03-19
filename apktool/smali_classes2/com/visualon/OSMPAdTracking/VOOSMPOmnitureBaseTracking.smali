.class public Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking$1;
    }
.end annotation


# static fields
.field protected static final OMNITUE_EDITION:Ljava/lang/String; = "us"

.field protected static final OMNITUE_PRIMARY_REPORTID:Ljava/lang/String; = "cbsicbsapp"

.field protected static final OMNITUE_PROP9_VALUE:Ljava/lang/String; = "D=User-Agent"

.field protected static final OMNITUE_SITE_TYPE:Ljava/lang/String; = "native app"

.field protected static final OMNITURE_SITEID_VALUE:Ljava/lang/String; = "cbscom:"

.field protected static final TAG:Ljava/lang/String; = "@@@VOOSMPOmnitureBaseTracking"


# instance fields
.field protected mElapsedTime:J

.field protected mMeasurement:Lcom/adobe/a/b/e;

.field protected mNetworkString:Ljava/lang/String;

.field protected mPartnerID:Ljava/lang/String;

.field protected mPropertyHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecordPlayingtime:J

.field protected mStartPlayTime:J

.field protected mValueHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_eVar2:Ljava/lang/String;

.field protected m_eVar3:Ljava/lang/String;

.field protected m_eVar32:Ljava/lang/String;

.field protected m_eVar5:Ljava/lang/String;

.field protected m_prop9:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
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
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    .line 34
    iput-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    .line 35
    iput-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mStartPlayTime:J

    .line 36
    iput-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mRecordPlayingtime:J

    .line 38
    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mPropertyHashMap:Ljava/util/HashMap;

    .line 39
    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mValueHashMap:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p0, p10}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->handlePropertyHashMap(Ljava/util/HashMap;)V

    .line 46
    iput-object p2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mTrackingRSID:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mTrackingServer:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mPartnerID:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mNetworkString:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mPartnerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mNetworkString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    .line 53
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    iput-object p6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar2:Ljava/lang/String;

    .line 58
    :goto_0
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 59
    iput-object p7, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar3:Ljava/lang/String;

    .line 63
    :goto_1
    if-eqz p8, :cond_2

    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 64
    iput-object p8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar5:Ljava/lang/String;

    .line 68
    :goto_2
    if-eqz p9, :cond_3

    invoke-virtual {p9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 69
    iput-object p9, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_prop9:Ljava/lang/String;

    .line 73
    :goto_3
    invoke-static {p1}, Lcom/adobe/a/b/e;->a(Landroid/content/Context;)Lcom/adobe/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    .line 74
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, p2, p3}, Lcom/adobe/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0}, Lcom/adobe/a/b/e;->m()V

    .line 76
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mTrackingRSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/a/b/e;->c(Ljava/lang/String;)V

    .line 77
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    const-string v1, "OmnitureTrackingHelper configureMeasurement, current version is %s, ID is %s, server is %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v4}, Lcom/adobe/a/b/e;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mTrackingRSID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mTrackingServer:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void

    .line 56
    :cond_0
    const-string v0, "us"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar2:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "native app"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar3:Ljava/lang/String;

    goto :goto_1

    .line 66
    :cond_2
    const-string v0, "cbsicbsapp"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar5:Ljava/lang/String;

    goto :goto_2

    .line 71
    :cond_3
    const-string v0, "D=User-Agent"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_prop9:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method protected getADInfo(IJ)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 172
    .line 175
    const/4 v2, -0x1

    .line 180
    const/4 v0, 0x0

    move-object v3, v0

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v2

    move v8, v1

    move v9, v1

    move v2, v1

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 187
    if-nez v2, :cond_0

    .line 189
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    if-nez v6, :cond_5

    move v6, v1

    .line 195
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v11

    if-nez v11, :cond_1

    move v6, v1

    .line 200
    :cond_1
    if-nez v7, :cond_2

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v7

    if-ne v7, v10, :cond_2

    if-nez v4, :cond_2

    .line 203
    add-int/lit8 v9, v9, 0x1

    move v8, v1

    .line 207
    :cond_2
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v7

    if-ne v7, v10, :cond_3

    if-nez v4, :cond_3

    .line 209
    add-int/lit8 v8, v8, 0x1

    .line 212
    :cond_3
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v7

    .line 214
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v11

    if-ne v11, p1, :cond_b

    .line 219
    if-nez v6, :cond_7

    move-object v3, v0

    move v4, v10

    move v0, v10

    .line 224
    :goto_2
    if-eqz v4, :cond_4

    if-nez v7, :cond_4

    move v0, v1

    .line 184
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v5, v0

    goto :goto_0

    :cond_5
    move v6, v10

    .line 192
    goto :goto_1

    :cond_6
    move-object v0, v3

    move v10, v4

    .line 228
    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADPercentage(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;J)Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v2, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING]  periodID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", playingTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", postroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curAdSlotPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curAdSequenceNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    if-eqz v10, :cond_8

    if-eqz v6, :cond_8

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":A:pre:0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_3
    return-object v0

    .line 236
    :cond_8
    if-eqz v10, :cond_9

    if-eqz v5, :cond_9

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":A:post:0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 239
    :cond_9
    if-eqz v10, :cond_a

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":A:mid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 242
    :cond_a
    const-string v0, ""

    goto :goto_3

    :cond_b
    move v0, v5

    goto/16 :goto_2
.end method

.method protected getADPercentage(Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;J)Ljava/lang/String;
    .locals 8

    .prologue
    .line 247
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "0"

    .line 269
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 251
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 253
    long-to-float v4, v0

    long-to-float v5, v2

    div-float/2addr v4, v5

    .line 255
    const-string v5, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[TRACKING] getADPercentage pos = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", perc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    float-to-double v0, v4

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 258
    const-string v0, "0"

    goto :goto_0

    .line 260
    :cond_1
    float-to-double v0, v4

    const-wide v2, 0x3fd1eb851eb851ecL    # 0.28

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 261
    const-string v0, "1"

    goto :goto_0

    .line 263
    :cond_2
    float-to-double v0, v4

    const-wide v2, 0x3fe0f5c28f5c28f6L    # 0.53

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 264
    const-string v0, "2"

    goto :goto_0

    .line 266
    :cond_3
    float-to-double v0, v4

    const-wide v2, 0x3fe8f5c28f5c28f6L    # 0.78

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 267
    const-string v0, "3"

    goto :goto_0

    .line 269
    :cond_4
    const-string v0, "4"

    goto :goto_0
.end method

.method protected getContentPercentage(J)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 274
    iget-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mContentTime:J

    cmp-long v3, v4, v0

    if-nez v3, :cond_0

    .line 275
    const-string v0, "-1"

    .line 321
    :goto_0
    return-object v0

    .line 277
    :cond_0
    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    .line 278
    const-string v0, "0:M:0"

    goto :goto_0

    :cond_1
    move-wide v4, v0

    move v1, v2

    .line 282
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 285
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_2

    .line 287
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    cmp-long v3, p1, v6

    if-lez v3, :cond_4

    .line 291
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    cmp-long v3, p1, v6

    if-ltz v3, :cond_3

    .line 293
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 282
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 297
    :cond_3
    add-long/2addr v4, p1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v0

    sub-long/2addr v4, v0

    .line 304
    :cond_4
    long-to-float v0, v4

    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mContentTime:J

    long-to-float v1, v6

    div-float/2addr v0, v1

    .line 306
    const-string v1, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[TRACKING], getContentPercentage , current is  "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , total content is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mContentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , perc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    float-to-double v2, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    .line 310
    const-string v0, "0:M:0"

    goto/16 :goto_0

    .line 312
    :cond_5
    float-to-double v2, v0

    const-wide v4, 0x3fd0a3d70a3d70a4L    # 0.26

    cmpg-double v1, v2, v4

    if-gez v1, :cond_6

    .line 313
    const-string v0, "1:M:0-25"

    goto/16 :goto_0

    .line 315
    :cond_6
    float-to-double v2, v0

    const-wide v4, 0x3fe051eb851eb852L    # 0.51

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    .line 316
    const-string v0, "2:M:25-50"

    goto/16 :goto_0

    .line 318
    :cond_7
    float-to-double v0, v0

    const-wide v2, 0x3fe851eb851eb852L    # 0.76

    cmpg-double v0, v0, v2

    if-gez v0, :cond_8

    .line 319
    const-string v0, "3:M:50-75"

    goto/16 :goto_0

    .line 321
    :cond_8
    const-string v0, "4:M:75-100"

    goto/16 :goto_0
.end method

.method protected getEvent52Text(Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "event52,"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getSecond(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string v0, "event59,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event57=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected getEvent60Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const-string v0, "event60,event65,event56=0"

    .line 346
    return-object v0
.end method

.method protected getSecond(J)J
    .locals 5

    .prologue
    .line 324
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected handlePropertyHashMap(Ljava/util/HashMap;)V
    .locals 8
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
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mValueHashMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mPropertyHashMap:Ljava/util/HashMap;

    .line 85
    if-nez p1, :cond_1

    .line 123
    :cond_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eVar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 103
    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 104
    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mValueHashMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING], Omniture Key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eProp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 111
    const/4 v3, 0x5

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 112
    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mPropertyHashMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING], Omniture Key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 118
    :cond_3
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING], Omniture: key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected isDvrOM()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method protected isLiveOM()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 15

    .prologue
    .line 362
    invoke-super/range {p0 .. p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 365
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-eq v0, v1, :cond_1

    .line 368
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    const-string v1, "[TRACKING] VOOSMPTrackingEvent or ADSInfo is null, don\'t sendTrackingEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 816
    :goto_0
    return-object v0

    .line 372
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v5

    .line 374
    if-nez v5, :cond_2

    .line 376
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    const-string v1, "[TRACKING] Omniture, Don\'t find action.mPeriodID on ADSInfo. , don\'t sendTrackingEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 380
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->isMDialogVod()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    const-string v1, "[TRACKING], --- MDialog Engine, AD Tracking  not support. ---"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 386
    :cond_3
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setValFromHashMap()V

    .line 387
    iget-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getElapsedTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    .line 388
    const-string v2, ""

    .line 389
    const-string v1, ""

    .line 390
    const-string v3, ""

    .line 391
    const/4 v0, 0x0

    .line 393
    const-string v4, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--- OMBaseTrack --- SendTrackingEvent : event.getEventType()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    sget-object v4, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking$1;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE:[I

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 576
    :cond_4
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] Omniture don\'t support this event, event type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , event value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 398
    :pswitch_0
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mContentStartPlaying:Z

    if-nez v0, :cond_f

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mContentStartPlaying:Z

    .line 402
    const/4 v0, 0x1

    .line 581
    :cond_5
    :goto_1
    const/16 v4, 0x21

    const-string v6, ""

    invoke-virtual {p0, v4, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    .line 582
    const/16 v4, 0x22

    const-string v6, ""

    invoke-virtual {p0, v4, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    .line 584
    const/4 v4, 0x1

    if-ne v0, v4, :cond_26

    .line 586
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_20

    .line 590
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->isFirstContent(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getEvent52Text(Z)Ljava/lang/String;

    move-result-object v2

    .line 591
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v1, v2}, Lcom/adobe/a/b/e;->f(Ljava/lang/String;)V

    .line 593
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getContentPercentage(J)Ljava/lang/String;

    move-result-object v1

    .line 594
    const/16 v3, 0x27

    invoke-virtual {p0, v3, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "eVar39:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    :cond_6
    :goto_2
    const/16 v3, 0x19

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", eVar25:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    :cond_7
    const/16 v4, 0x26

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v3

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v3, v6, :cond_24

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getVideoType(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", eVar38:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v1

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v1, v4, :cond_25

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getVideoType(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    :cond_8
    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 625
    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", eVar31:cbscom:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    :cond_9
    const/16 v3, 0x20

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 630
    const/16 v3, 0x20

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", eVar32:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 785
    :cond_a
    :goto_5
    const/16 v0, 0x19

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 786
    const/16 v0, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 788
    const/4 v0, 0x2

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar2:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 789
    const/4 v0, 0x2

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar2:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    :cond_b
    const/4 v0, 0x3

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar3:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 794
    const/4 v0, 0x3

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar3:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 798
    :cond_c
    const/4 v0, 0x5

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar5:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 799
    const/4 v0, 0x5

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar5:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    :cond_d
    const/16 v0, 0x9

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_prop9:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prop9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_prop9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    :cond_e
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 807
    const-string v3, "pe"

    const-string v4, "lnk_o"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v3, v0}, Lcom/adobe/a/b/e;->a(Ljava/util/Hashtable;)V

    .line 810
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0}, Lcom/adobe/a/b/e;->j()V

    .line 811
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    .line 812
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING], Omniture sendEvent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0}, Lcom/adobe/a/b/e;->k()V

    .line 816
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 405
    :cond_f
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_10

    .line 407
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 411
    :cond_10
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] Omniture don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKSTART, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Period type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 419
    :pswitch_1
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_11

    .line 420
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 422
    :cond_11
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v4

    if-nez v4, :cond_5

    .line 424
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->isLastContent(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 426
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] Omniture don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKCOMPLETE, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Period type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    iget-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getElapsedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    .line 429
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 432
    :cond_12
    const/4 v0, 0x4

    goto/16 :goto_1

    .line 453
    :pswitch_2
    const/4 v0, 0x2

    .line 454
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v4

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v4, v6, :cond_13

    const/4 v4, 0x1

    .line 455
    :goto_6
    if-eqz v4, :cond_5

    .line 457
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mRecordPlayingtime:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    .line 458
    const-string v4, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FORCESTOP - event.getEventValue() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", event.getPlayingTime() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mRecordPlayingtime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mRecordPlayingtime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mElapsedTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 454
    :cond_13
    const/4 v4, 0x0

    goto :goto_6

    .line 465
    :pswitch_3
    const/4 v0, 0x4

    .line 466
    goto/16 :goto_1

    .line 470
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->isLiveOM()Z

    move-result v0

    if-nez v0, :cond_14

    .line 472
    const/4 v0, 0x4

    goto/16 :goto_1

    .line 476
    :cond_14
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] Omniture don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PAUSE, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Period type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 484
    :pswitch_5
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_16

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x19

    cmp-long v0, v6, v8

    if-eqz v0, :cond_15

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x32

    cmp-long v0, v6, v8

    if-eqz v0, :cond_15

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x4b

    cmp-long v0, v6, v8

    if-nez v0, :cond_16

    .line 487
    :cond_15
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 490
    :cond_16
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] Omniture don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_PERCENTAGE, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Period type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 497
    :pswitch_6
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->isDvrOM()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-nez v0, :cond_18

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x19

    cmp-long v0, v6, v8

    if-eqz v0, :cond_17

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x32

    cmp-long v0, v6, v8

    if-eqz v0, :cond_17

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v6

    const-wide/16 v8, 0x4b

    cmp-long v0, v6, v8

    if-nez v0, :cond_18

    .line 500
    :cond_17
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 503
    :cond_18
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] Omniture don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_WHOLECONTENT_PERCENTAGE, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Period type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 510
    :pswitch_7
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->isDvrOM()Z

    move-result v0

    if-nez v0, :cond_19

    .line 511
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 514
    :cond_19
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] Omniture don\'t support this event, event type is VO_OSMP_ADS_TRACKING_EVENT_WHOLECONTENT_END, event value is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Period type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 521
    :pswitch_8
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    const-string v1, "--- OMBaseTrack --- SendTrackingEvent : VO_OSMP_ADS_TRACKING_ACTION_START"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 527
    :pswitch_9
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v0, v4, :cond_1c

    const/4 v0, 0x1

    .line 528
    :goto_7
    if-eqz v0, :cond_1e

    .line 530
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mStartPlayTime:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_1a

    .line 532
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mStartPlayTime:J

    .line 533
    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mStartPlayTime:J

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mRecordPlayingtime:J

    .line 534
    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mStartPlayTime:J

    const-wide/16 v8, 0x1388

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mStartPlayTime:J

    .line 537
    :cond_1a
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mStartPlayTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 545
    const-wide/16 v8, 0x5

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1b

    const-wide/16 v8, 0x3c

    cmp-long v0, v6, v8

    if-gez v0, :cond_1b

    const-wide/16 v8, 0x5

    rem-long v8, v6, v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 555
    :cond_1b
    const-wide/16 v8, 0x3c

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1d

    const-wide/16 v8, 0x3c

    rem-long v8, v6, v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_1d

    .line 557
    const/4 v0, 0x4

    .line 558
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mRecordPlayingtime:J

    const-wide/16 v12, 0x1388

    div-long/2addr v10, v12

    const-wide/16 v12, 0x1388

    mul-long/2addr v10, v12

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    .line 559
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mRecordPlayingtime:J

    .line 560
    const-string v4, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TIMEPASSED - every 60s, dwTimePassed = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mElapsedTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 527
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 565
    :cond_1d
    const-string v0, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TIMEPASSED invalid, dwTimePassed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mElapsedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 571
    :cond_1e
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 597
    :cond_1f
    const-string v1, ""

    goto/16 :goto_2

    .line 598
    :cond_20
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 600
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getEvent60Text()Ljava/lang/String;

    move-result-object v2

    .line 601
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, v2}, Lcom/adobe/a/b/e;->f(Ljava/lang/String;)V

    .line 603
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADInfo(IJ)Ljava/lang/String;

    move-result-object v0

    .line 604
    const/16 v1, 0x27

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "eVar39:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    :goto_8
    const/16 v1, 0x21

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar33:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    :cond_21
    const/16 v1, 0x22

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar34:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    :cond_22
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADTitle(I)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto/16 :goto_2

    .line 607
    :cond_23
    const-string v0, ""

    goto :goto_8

    .line 621
    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 622
    :cond_25
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 633
    :cond_26
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2f

    .line 635
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-nez v0, :cond_2b

    .line 637
    const-string v0, "event59,"

    .line 638
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_FORCESTOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v1, v2, :cond_27

    .line 639
    const-string v0, ""

    .line 641
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event58,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event57="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getSecond(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, v2}, Lcom/adobe/a/b/e;->f(Ljava/lang/String;)V

    .line 644
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getContentPercentage(J)Ljava/lang/String;

    move-result-object v1

    .line 645
    const/16 v0, 0x27

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    .line 647
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v0

    .line 663
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "eVar39:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    const/16 v3, 0x19

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", eVar25:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    :cond_28
    const/16 v4, 0x26

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v3

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v3, v6, :cond_2d

    const/4 v3, 0x1

    :goto_a
    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getVideoType(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", eVar38:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v1

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v1, v4, :cond_2e

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getVideoType(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    :cond_29
    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 672
    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", eVar31:cbscom:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 676
    :cond_2a
    const/16 v3, 0x20

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 677
    const/16 v3, 0x20

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", eVar32:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    goto/16 :goto_5

    .line 648
    :cond_2b
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_47

    .line 650
    const-string v0, "event65,"

    .line 651
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_FORCESTOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    if-ne v1, v2, :cond_2c

    .line 652
    const-string v0, ""

    .line 654
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event61,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event56="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getSecond(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 655
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, v2}, Lcom/adobe/a/b/e;->f(Ljava/lang/String;)V

    .line 657
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADInfo(IJ)Ljava/lang/String;

    move-result-object v1

    .line 658
    const/16 v0, 0x27

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    .line 660
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADTitle(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 668
    :cond_2d
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 669
    :cond_2e
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 682
    :cond_2f
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3d

    .line 685
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-nez v0, :cond_37

    .line 687
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    const-wide/16 v6, 0x19

    cmp-long v0, v0, v6

    if-nez v0, :cond_35

    .line 689
    const-string v2, "event53,event59"

    .line 698
    :cond_30
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",event57="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getSecond(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 699
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, v2}, Lcom/adobe/a/b/e;->f(Ljava/lang/String;)V

    .line 701
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getContentPercentage(J)Ljava/lang/String;

    move-result-object v1

    .line 702
    const/16 v0, 0x27

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    .line 704
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v3

    .line 727
    :cond_31
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "eVar39:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    const/16 v1, 0x19

    invoke-virtual {p0, v1, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    :cond_32
    const/16 v4, 0x26

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v1

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v1, v6, :cond_3b

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getVideoType(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar38:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v0, v4, :cond_3c

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getVideoType(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_33
    const/16 v1, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 736
    const/16 v1, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar31:cbscom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    :cond_34
    const/16 v1, 0x20

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 741
    const/16 v1, 0x20

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar32:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 690
    :cond_35
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    const-wide/16 v6, 0x32

    cmp-long v0, v0, v6

    if-nez v0, :cond_36

    .line 692
    const-string v2, "event54,event59"

    goto/16 :goto_c

    .line 693
    :cond_36
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    const-wide/16 v6, 0x4b

    cmp-long v0, v0, v6

    if-nez v0, :cond_30

    .line 695
    const-string v2, "event55,event59"

    goto/16 :goto_c

    .line 705
    :cond_37
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_31

    .line 707
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    const-wide/16 v6, 0x19

    cmp-long v0, v0, v6

    if-nez v0, :cond_39

    .line 709
    const-string v2, "event62,event65"

    .line 718
    :cond_38
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",event56="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getSecond(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 719
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, v2}, Lcom/adobe/a/b/e;->f(Ljava/lang/String;)V

    .line 721
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADInfo(IJ)Ljava/lang/String;

    move-result-object v1

    .line 722
    const/16 v0, 0x27

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    .line 724
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADTitle(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_d

    .line 710
    :cond_39
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    const-wide/16 v6, 0x32

    cmp-long v0, v0, v6

    if-nez v0, :cond_3a

    .line 712
    const-string v2, "event63,event65"

    goto :goto_10

    .line 713
    :cond_3a
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v0

    const-wide/16 v6, 0x4b

    cmp-long v0, v0, v6

    if-nez v0, :cond_38

    .line 715
    const-string v2, "event64,event65"

    goto :goto_10

    .line 732
    :cond_3b
    const/4 v1, 0x0

    goto/16 :goto_e

    .line 733
    :cond_3c
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 744
    :cond_3d
    const/4 v4, 0x4

    if-ne v0, v4, :cond_a

    .line 746
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-nez v0, :cond_42

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event57="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getSecond(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 749
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, v2}, Lcom/adobe/a/b/e;->f(Ljava/lang/String;)V

    .line 751
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getContentPercentage(J)Ljava/lang/String;

    move-result-object v1

    .line 752
    const/16 v0, 0x27

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    .line 754
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v3

    .line 766
    :cond_3e
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "eVar39:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    const/16 v1, 0x19

    invoke-virtual {p0, v1, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    :cond_3f
    const/16 v4, 0x26

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v1

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v1, v6, :cond_43

    const/4 v1, 0x1

    :goto_12
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getVideoType(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar38:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v0, v4, :cond_44

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getVideoType(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    :cond_40
    const/16 v1, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 775
    const/16 v1, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cbscom:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar31:cbscom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADCID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    :cond_41
    const/16 v1, 0x20

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 780
    const/16 v1, 0x20

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setProp(ILjava/lang/String;)Z

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eVar32:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->m_eVar32:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 755
    :cond_42
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3e

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event56="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mElapsedTime:J

    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getSecond(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 758
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, v2}, Lcom/adobe/a/b/e;->f(Ljava/lang/String;)V

    .line 760
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADInfo(IJ)Ljava/lang/String;

    move-result-object v1

    .line 761
    const/16 v0, 0x27

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->setEvar(ILjava/lang/String;)Z

    .line 763
    invoke-interface/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->getADTitle(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_11

    .line 771
    :cond_43
    const/4 v1, 0x0

    goto/16 :goto_12

    .line 772
    :cond_44
    const/4 v0, 0x0

    goto/16 :goto_13

    :cond_45
    move-object v1, v0

    goto/16 :goto_5

    :cond_46
    move-object v3, v0

    goto/16 :goto_5

    :cond_47
    move-object v0, v3

    goto/16 :goto_9

    .line 394
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
    .end packed-switch
.end method

.method protected setEvar(ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mValueHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mValueHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/a/b/e;->a(ILjava/lang/String;)V

    .line 331
    const/4 v0, 0x1

    .line 333
    :cond_1
    return v0
.end method

.method public setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method protected setProp(ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mPropertyHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mPropertyHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/a/b/e;->b(ILjava/lang/String;)V

    .line 339
    const/4 v0, 0x1

    .line 341
    :cond_1
    return v0
.end method

.method protected setValFromHashMap()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 136
    move v3, v4

    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_2

    .line 137
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mValueHashMap:Ljava/util/HashMap;

    .line 138
    const-string v0, "setEvar"

    .line 139
    const/4 v2, 0x1

    if-ne v3, v2, :cond_3

    .line 140
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mPropertyHashMap:Ljava/util/HashMap;

    .line 141
    const-string v0, "setProp"

    move-object v2, v0

    move-object v0, v1

    .line 143
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 146
    :goto_2
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    if-nez v3, :cond_0

    .line 155
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v1, v6, v7}, Lcom/adobe/a/b/e;->a(ILjava/lang/String;)V

    .line 158
    :goto_3
    const-string v6, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "[TRACKING], Omniture "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ": "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 160
    :catch_0
    move-exception v1

    const-string v1, "@@@VOOSMPOmnitureBaseTracking"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[TRACKING], Omniture Key: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is invalid"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 157
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureBaseTracking;->mMeasurement:Lcom/adobe/a/b/e;

    invoke-virtual {v1, v6, v7}, Lcom/adobe/a/b/e;->b(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 136
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 165
    :cond_2
    return-void

    :cond_3
    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_1
.end method
