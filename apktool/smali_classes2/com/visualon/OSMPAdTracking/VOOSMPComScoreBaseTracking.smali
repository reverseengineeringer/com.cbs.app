.class public Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;
.source "SourceFile"


# static fields
.field protected static COMSCORE_C1_VALUE:Ljava/lang/String; = null

.field protected static COMSCORE_C2_VALUE:Ljava/lang/String; = null

.field protected static COMSCORE_C3_VALUE:Ljava/lang/String; = null

.field protected static COMSCORE_C4_VALUE:Ljava/lang/String; = null

.field protected static COMSCORE_C5_VALUE:Ljava/lang/String; = null

.field protected static COMSCORE_C6_VALUE:Ljava/lang/String; = null

.field protected static COMSCORE_C7_VALUE:Ljava/lang/String; = null

.field protected static COMSCORE_C8_VALUE:Ljava/lang/String; = null

.field protected static COMSCORE_C9_VALUE:Ljava/lang/String; = null

.field protected static COMSCORE_HTTP_HEADER:Ljava/lang/String; = null

.field protected static COMSCORE_PUBLISHER_SECRET:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPComScoreBaseTracking"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "1"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C1_VALUE:Ljava/lang/String;

    .line 21
    const-string v0, "3002231"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C2_VALUE:Ljava/lang/String;

    .line 22
    const-string v0, "3000008"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C3_VALUE:Ljava/lang/String;

    .line 23
    const-string v0, "3002231"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C4_VALUE:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C5_VALUE:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C6_VALUE:Ljava/lang/String;

    .line 26
    const-string v0, "cbsandroidapp"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C7_VALUE:Ljava/lang/String;

    .line 27
    const-string v0, "cbsandroidapp"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C8_VALUE:Ljava/lang/String;

    .line 28
    const-string v0, "cbsandroidapp"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C9_VALUE:Ljava/lang/String;

    .line 30
    const-string v0, "2cb08ca4d095dd734a374dff8422c2e5"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_PUBLISHER_SECRET:Ljava/lang/String;

    .line 32
    const-string v0, "http://beacon.securestudies.com/scripts/beacon.dll?"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_HTTP_HEADER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, p6}, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->handlePropertyMap(Ljava/util/Map;)V

    .line 40
    const-string v0, "@@@VOOSMPComScoreBaseTracking"

    const-string v1, "VOOSMPComScoreBaseTracking construct"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C2_VALUE:Ljava/lang/String;

    invoke-static {v0}, Lcom/comscore/a/k;->a(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_PUBLISHER_SECRET:Ljava/lang/String;

    invoke-static {v0}, Lcom/comscore/a/k;->c(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/a/k;->a(Landroid/content/Context;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C7_VALUE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {v0}, Lcom/comscore/a/k;->b(Ljava/lang/String;)V

    .line 52
    :goto_0
    const-string v1, "@@@VOOSMPComScoreBaseTracking"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getApplicationLabel appName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", C7="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C7_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", comScore.SetAppName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void

    .line 51
    :cond_0
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C7_VALUE:Ljava/lang/String;

    invoke-static {v1}, Lcom/comscore/a/k;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getVideoType(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 107
    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 114
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 115
    if-nez v1, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v2

    .line 123
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v7

    if-nez v7, :cond_1

    move v5, v2

    .line 128
    :cond_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v7

    .line 130
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v8

    if-ne v8, p1, :cond_5

    .line 132
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v3

    if-nez v3, :cond_4

    .line 134
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    const-string v0, "03"

    .line 159
    :goto_2
    return-object v0

    :cond_2
    move v5, v6

    .line 120
    goto :goto_1

    .line 136
    :cond_3
    const-string v0, "02"

    goto :goto_2

    .line 141
    :cond_4
    if-nez v5, :cond_8

    move v3, v6

    move v4, v6

    .line 146
    :cond_5
    if-eqz v3, :cond_6

    if-nez v7, :cond_6

    move v4, v2

    .line 112
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_7
    move v6, v3

    .line 150
    :cond_8
    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    .line 151
    const-string v0, "09"

    goto :goto_2

    .line 153
    :cond_9
    if-eqz v6, :cond_a

    if-eqz v4, :cond_a

    .line 154
    const-string v0, "10"

    goto :goto_2

    .line 156
    :cond_a
    if-eqz v6, :cond_b

    .line 157
    const-string v0, "11"

    goto :goto_2

    .line 159
    :cond_b
    const-string v0, ""

    goto :goto_2
.end method

.method protected handlePropertyMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 102
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v3, "c1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C1_VALUE:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_3
    const-string v3, "c2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C2_VALUE:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_4
    const-string v3, "c3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C3_VALUE:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_5
    const-string v3, "c4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C4_VALUE:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_6
    const-string v3, "c5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C5_VALUE:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_7
    const-string v3, "c6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C6_VALUE:Ljava/lang/String;

    goto/16 :goto_0

    .line 90
    :cond_8
    const-string v3, "c7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C7_VALUE:Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    :cond_9
    const-string v3, "c8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C8_VALUE:Ljava/lang/String;

    goto/16 :goto_0

    .line 94
    :cond_a
    const-string v3, "c9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_C9_VALUE:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    :cond_b
    const-string v3, "publisher_secret"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_PUBLISHER_SECRET:Ljava/lang/String;

    goto/16 :goto_0

    .line 98
    :cond_c
    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreBaseTracking;->COMSCORE_HTTP_HEADER:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 65
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
