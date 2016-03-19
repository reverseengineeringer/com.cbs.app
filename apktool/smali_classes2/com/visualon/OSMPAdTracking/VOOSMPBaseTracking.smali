.class public Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPBaseTracking"


# instance fields
.field protected mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

.field protected mADTime:J

.field protected mAddedKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentStartPlaying:Z

.field protected mContentTime:J

.field protected mContext:Landroid/content/Context;

.field protected mEngType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

.field protected mPlayNo:I

.field protected mPlaybackTime:J

.field protected mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

.field protected mPropertyItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mServerId:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field protected mTime:J

.field protected mTrackingRSID:Ljava/lang/String;

.field protected mTrackingServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    .line 41
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mContext:Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_VO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mEngType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    .line 44
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPropertyItems:Ljava/util/HashSet;

    .line 45
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    .line 52
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mContext:Landroid/content/Context;

    .line 53
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 54
    iput-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPlaybackTime:J

    .line 55
    iput-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mContentTime:J

    .line 56
    iput-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADTime:J

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPlayNo:I

    .line 58
    iput-wide v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mTime:J

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mContentStartPlaying:Z

    .line 60
    return-void
.end method


# virtual methods
.method protected GetTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "@@@VOOSMPBaseTracking"

    return-object v0
.end method

.method public addPropertyItem(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;)Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPropertyItems:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPropertyItems:Ljava/util/HashSet;

    .line 637
    :cond_0
    sget-boolean v0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPropertyItems:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPropertyItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected appendAllFromProperty(Ljava/lang/StringBuffer;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)V
    .locals 7

    .prologue
    .line 660
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->getPropertyHashMap(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)Ljava/util/HashMap;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 663
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 664
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 667
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 668
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 671
    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    if-nez v4, :cond_1

    .line 672
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    .line 673
    :cond_1
    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 675
    const-string v4, "@@@VOOSMPBaseTracking"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "---HSMAP--- append to buffer, ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 681
    :cond_2
    return-void
.end method

.method protected getADCID(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 156
    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    move v1, v0

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 161
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 162
    const/4 v2, 0x1

    .line 164
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v4

    if-nez v4, :cond_1

    .line 165
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getContentID()Ljava/lang/String;

    move-result-object v3

    .line 167
    :cond_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 174
    :cond_2
    :goto_1
    return-object v3

    .line 158
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_4
    if-nez v3, :cond_2

    .line 172
    const-string v3, ""

    goto :goto_1
.end method

.method protected getADNum(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 235
    move v1, v0

    move v2, v0

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 239
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 240
    add-int/lit8 v2, v2, 0x1

    .line 242
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 245
    :cond_1
    return v2

    .line 236
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected getADPos(IJ)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 254
    const/4 v0, -0x1

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v0

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 265
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 266
    if-nez v1, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v5

    if-nez v5, :cond_3

    move v5, v2

    .line 274
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v2

    .line 279
    :cond_1
    if-nez v6, :cond_2

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    .line 286
    :cond_2
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    .line 291
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    .line 293
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v8

    if-ne v8, p1, :cond_5

    .line 295
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-nez v0, :cond_4

    .line 296
    const-string v0, "content"

    .line 319
    :goto_2
    return-object v0

    :cond_3
    move v5, v7

    .line 271
    goto :goto_1

    .line 301
    :cond_4
    if-nez v5, :cond_8

    move v3, v7

    move v4, v7

    .line 306
    :cond_5
    if-eqz v3, :cond_6

    if-nez v6, :cond_6

    move v4, v2

    .line 263
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_7
    move v7, v3

    .line 310
    :cond_8
    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    .line 311
    const-string v0, "pre"

    goto :goto_2

    .line 313
    :cond_9
    if-eqz v7, :cond_a

    if-eqz v4, :cond_a

    .line 314
    const-string v0, "post"

    goto :goto_2

    .line 316
    :cond_a
    if-eqz v7, :cond_b

    .line 317
    const-string v0, "mid"

    goto :goto_2

    .line 319
    :cond_b
    const-string v0, ""

    goto :goto_2
.end method

.method protected getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VOOSMPADSInfo or PeriodList is null, don\'t getADSPeriod periodID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 143
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move v1, v0

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 138
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 143
    goto :goto_0
.end method

.method protected getADTime(IJ)J
    .locals 4

    .prologue
    .line 390
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 393
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 395
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 397
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide p2

    .line 399
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 402
    :goto_1
    return-wide v0

    .line 390
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 402
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected getADTime2(I)J
    .locals 4

    .prologue
    .line 406
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 409
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 410
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 412
    :goto_1
    return-wide v0

    .line 406
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 412
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected getADTitle(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 367
    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    move v1, v0

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 372
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 373
    const/4 v2, 0x1

    .line 375
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v4

    if-nez v4, :cond_1

    .line 376
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v3

    .line 378
    :cond_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 385
    :cond_2
    :goto_1
    return-object v3

    .line 369
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 382
    :cond_4
    if-nez v3, :cond_2

    .line 383
    const-string v3, ""

    goto :goto_1
.end method

.method protected getContentName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 593
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 596
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    if-nez v2, :cond_0

    .line 597
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v0

    .line 601
    :goto_1
    return-object v0

    .line 593
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 601
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method protected getContentSequence(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 442
    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    move v1, v0

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 447
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v4

    if-nez v4, :cond_0

    .line 449
    add-int/lit8 v2, v2, 0x1

    .line 451
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    if-ne v0, p1, :cond_1

    move v3, v2

    .line 444
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 459
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 462
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 467
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method protected getCurrentContentPosition(J)J
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 179
    const-wide/16 v0, 0x0

    move-wide v4, v0

    move v1, v2

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 183
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    cmp-long v3, p1, v6

    if-gtz v3, :cond_1

    .line 206
    :cond_0
    :goto_1
    return-wide v4

    .line 186
    :cond_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    cmp-long v3, p1, v6

    if-lez v3, :cond_3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    cmp-long v3, p1, v6

    if-gtz v3, :cond_3

    .line 188
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_0

    .line 190
    add-long/2addr v4, p1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 180
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 195
    :cond_3
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    cmp-long v3, p1, v6

    if-lez v3, :cond_2

    .line 197
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_2

    .line 199
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    goto :goto_2

    .line 204
    :cond_4
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[TRACKING] getCurrentContentPosition, playingTime is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , curContentTime is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected getCurrentContentPosition(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)J
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v6

    .line 212
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v8

    .line 214
    const-wide/16 v0, 0x0

    move-wide v4, v0

    move v1, v2

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 219
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v7

    if-ne v3, v7, :cond_1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v7

    if-ne v6, v7, :cond_1

    move v2, v3

    .line 230
    :cond_0
    if-eqz v2, :cond_3

    :goto_1
    return-wide v4

    .line 224
    :cond_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v7

    if-nez v7, :cond_2

    .line 226
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v10

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    add-long/2addr v4, v10

    .line 216
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {p0, v8, v9}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->getCurrentContentPosition(J)J

    move-result-wide v4

    goto :goto_1
.end method

.method protected getPlaylistTime(J)J
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 417
    .line 419
    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 422
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    if-nez v6, :cond_2

    .line 424
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v6, v6, p1

    if-lez v6, :cond_1

    .line 425
    sub-long v0, p1, v2

    add-long/2addr v4, v0

    .line 437
    :cond_0
    return-wide v4

    .line 428
    :cond_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 429
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    add-long/2addr v2, v6

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 419
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 433
    :cond_2
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    goto :goto_1
.end method

.method protected getPropertyHashMap(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPropertyItems:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPropertyItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    return-object v1

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPropertyItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 646
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;

    .line 648
    iget-object v3, v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;->mEvTypes:Ljava/util/EnumSet;

    invoke-virtual {v3, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 649
    if-nez v1, :cond_3

    .line 650
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 651
    :cond_3
    sget-boolean v3, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 652
    :cond_4
    iget-object v0, v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected getResidualItems(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->getPropertyHashMap(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)Ljava/util/HashMap;

    move-result-object v1

    .line 712
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 714
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 717
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 718
    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 722
    :cond_1
    return-object v1
.end method

.method public getServerId()Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mServerId:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    return-object v0
.end method

.method protected getValueFromProperty(Ljava/lang/String;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 685
    const/4 v0, 0x0

    .line 687
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->getPropertyHashMap(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;)Ljava/util/HashMap;

    move-result-object v1

    .line 688
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 691
    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 692
    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 696
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    if-nez v2, :cond_1

    .line 697
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    .line 698
    :cond_1
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 700
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 701
    const-string v1, "@@@VOOSMPBaseTracking"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---HSMAP--- find from property, -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    :cond_2
    return-object v0

    .line 693
    :cond_3
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getVideoGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    const-string v2, ""

    .line 491
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 494
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_0

    .line 496
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getVideoGuid()Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_1
    return-object v0

    .line 491
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method protected getVideoType(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    const-string v0, "live video"

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video"

    goto :goto_0
.end method

.method protected isDvr()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 563
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 567
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_DVR:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v0, v3, :cond_2

    .line 568
    const/4 v2, 0x1

    goto :goto_0

    .line 563
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected isFirstContent(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 326
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 329
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_1

    .line 330
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 331
    const/4 v2, 0x1

    .line 336
    :cond_0
    return v2

    .line 326
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected isFirstPreAd(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 476
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 480
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 485
    :cond_0
    return v3

    .line 477
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v2

    goto :goto_0
.end method

.method protected isLastContent(I)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 341
    move v1, v2

    move v3, v2

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 345
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v4

    if-ne p1, v4, :cond_0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v4

    if-nez v4, :cond_0

    .line 346
    const/4 v3, 0x1

    .line 348
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    if-eq p1, v0, :cond_1

    if-eqz v3, :cond_1

    .line 352
    :goto_1
    return v2

    .line 342
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v3

    .line 352
    goto :goto_1
.end method

.method protected isLastOfEveryMidAd(I)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 530
    .line 531
    const/4 v0, -0x1

    move v1, v2

    move v3, v0

    move v4, v2

    .line 532
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 536
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    if-ne p1, v6, :cond_2

    .line 539
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_1

    .line 556
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v3, v1

    .line 543
    :cond_2
    if-gez v3, :cond_3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 548
    :cond_3
    if-eqz v4, :cond_5

    if-ltz v3, :cond_5

    .line 550
    add-int/lit8 v6, v3, 0x1

    if-ne v1, v6, :cond_4

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 552
    :cond_4
    add-int/lit8 v6, v3, 0x1

    if-ne v1, v6, :cond_5

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-nez v0, :cond_5

    move v2, v5

    .line 553
    goto :goto_1

    .line 532
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected isLastPeriod(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    .line 362
    :goto_0
    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 360
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 362
    goto :goto_0
.end method

.method protected isLastPreAd(I)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 505
    .line 506
    const/4 v0, -0x1

    move v1, v2

    move v3, v0

    move v4, v5

    .line 507
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 509
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 510
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    if-ne p1, v6, :cond_0

    move v3, v1

    .line 515
    :cond_0
    if-gez v3, :cond_1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    if-nez v6, :cond_1

    move v4, v2

    .line 520
    :cond_1
    add-int/lit8 v6, v3, 0x1

    if-ne v1, v6, :cond_2

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-ne v0, v5, :cond_2

    move v4, v2

    .line 507
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 525
    :cond_3
    return v4
.end method

.method protected isLive()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 576
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 578
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 583
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v0, v3, :cond_2

    .line 584
    const/4 v2, 0x1

    goto :goto_0

    .line 578
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public isMDialogVod()Z
    .locals 4

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 612
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    move-result-object v1

    .line 617
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_PID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_MDIALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdEngineType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    move-result-object v1

    if-ne v2, v1, :cond_0

    .line 620
    const/4 v0, 0x1

    .line 623
    :cond_0
    return v0
.end method

.method public notifyPlayNewVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mContentStartPlaying:Z

    .line 124
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mAddedKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 117
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setAdEngeType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 605
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mEngType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    .line 606
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setAdPodInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    .line 65
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayBackInfo Period start"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 72
    iput-wide v10, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mContentTime:J

    .line 73
    iput-wide v10, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADTime:J

    .line 74
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOOSMPADSInfo is not available."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 106
    :goto_0
    return-object v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mPlaybackTime:J

    move v1, v2

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 85
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_3

    .line 87
    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mContentTime:J

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mContentTime:J

    .line 88
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v3

    sget-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v3, v5, :cond_2

    .line 89
    iput-wide v10, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mContentTime:J

    .line 96
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[TRACKING], PlayBackInfo Period, ID is "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Period EndTime is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Period StartTime is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Period time "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v6

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Period isLive is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v3

    sget-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-ne v3, v7, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", PeriodID is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", CustomerID is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getContentID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Period Title is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", subtitle is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getCaptionURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Series Title is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getSeriesTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 91
    :cond_3
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 93
    iget-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADTime:J

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADTime:J

    goto/16 :goto_2

    :cond_4
    move v3, v2

    .line 96
    goto :goto_3

    .line 105
    :cond_5
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING], PlayBack stream url is %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getStreamUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0
.end method

.method public setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->mServerId:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 628
    return-void
.end method
