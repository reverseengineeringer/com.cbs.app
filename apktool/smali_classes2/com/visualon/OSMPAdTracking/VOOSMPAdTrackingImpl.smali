.class public Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;
.implements Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPTrackingImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetworkString:Ljava/lang/String;

.field private mPartnerID:Ljava/lang/String;

.field private mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

.field private mTrackingServer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    .line 27
    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    .line 35
    const-string v0, "@@@VOOSMPTrackingImpl"

    const-string v1, "VOOSMPTrackingImpl construct"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    .line 39
    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    .line 43
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "@@@VOOSMPTrackingImpl"

    const-string v1, "context is null! App need an availabe context parameter."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public addTrackingProperty(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 331
    :cond_0
    const-string v0, "@@@VOOSMPTrackingImpl"

    const-string v2, "[TRACKING] Tracker Server is null or empty! Don\'t add tracking property!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 346
    :cond_1
    :goto_0
    return v0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 336
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;

    .line 338
    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->getServerId()Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 339
    invoke-virtual {v0, p2}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->addPropertyItem(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;)Z

    move-result v0

    .line 340
    if-nez v0, :cond_1

    .line 341
    const-string v2, "@@@VOOSMPTrackingImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error, the SET of event has been in the EnumSet, please add more values in the HashMap in the SET : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;->mEvTypes:Ljava/util/EnumSet;

    invoke-virtual {v4}, Ljava/util/EnumSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;",
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
            ">;",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;",
            ")",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;"
        }
    .end annotation

    .prologue
    .line 90
    const-string v1, "@@@VOOSMPTrackingImpl"

    const-string v2, "[TRACKING] Server is %s, rsid is %s, server is %s, %s|%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    .line 96
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl$1;->$SwitchMap$com$visualon$OSMPAdTracking$VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 194
    :goto_0
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v1

    .line 100
    :pswitch_0
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureTracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 102
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureTracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 103
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPOmniture2Tracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/visualon/OSMPAdTracking/VOOSMPOmniture2Tracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 110
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmniture2Tracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 111
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :pswitch_2
    const-string v1, "@@@VOOSMPTrackingImpl"

    const-string v2, "VO_OSMP_AD_TRACKING_OMNITURE_HB"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 121
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 122
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :pswitch_3
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 129
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWTracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 130
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 135
    :pswitch_4
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 136
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDW2Tracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 137
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 142
    :pswitch_5
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 143
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->setDeviceType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V

    .line 144
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->setTimerPeriod(Ljava/lang/String;)I

    .line 145
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 146
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 152
    :pswitch_6
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenTracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 153
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenTracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 154
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 159
    :pswitch_7
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 160
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_mTVR_Tracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 161
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 166
    :pswitch_8
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 167
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 168
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 174
    :pswitch_9
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreTracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPComScoreTracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 176
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 181
    :pswitch_a
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPartnerID:Ljava/lang/String;

    iget-object v6, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mNetworkString:Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 182
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPComScore2Tracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 183
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 187
    :pswitch_b
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 188
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHttpRequestTracking;->setServerId(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;)V

    .line 189
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 96
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
    .end packed-switch
.end method

.method public addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;"
        }
    .end annotation

    .prologue
    .line 250
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl$1;->$SwitchMap$com$visualon$OSMPAdTracking$VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    .line 282
    :pswitch_0
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/visualon/OSMPAdTracking/VOOSMPConvivaTracking;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 283
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public initTracking()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 51
    const-string v0, "@@@VOOSMPTrackingImpl"

    const-string v1, "VOOSMPTrackingImpl initTracking"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    .line 55
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public notifyPlayNewVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 232
    :cond_0
    const-string v1, "@@@VOOSMPTrackingImpl"

    const-string v2, "[TRACKING] Tracker Server is null or empty! Don\'t send event"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v0

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;

    .line 238
    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->notifyPlayNewVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 241
    :cond_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 209
    :cond_0
    const-string v1, "@@@VOOSMPTrackingImpl"

    const-string v2, "[TRACKING] Tracker Server is null or empty! Don\'t send event"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_1
    const-string v1, "@@@VOOSMPTrackingImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TRACKING], sendTrackingEvent, event type is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , event value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , event periodID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , playingTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPlayingTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getElapsedTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". mTrackingServer size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;

    .line 221
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setAdEngeType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;

    .line 320
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->setAdEngeType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 317
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 322
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    const-string v1, "@@@VOOSMPTrackingImpl"

    const-string v2, "[TRACKING] Tracker Server is null or empty! Don\'t send event"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;

    .line 80
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public uninitTracking()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    .line 65
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public updateAdPodInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 293
    if-eqz p1, :cond_2

    .line 294
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    move v1, v3

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mTrackingServer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;

    .line 300
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->setAdPodInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 297
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->mPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v0, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsCbNormal:Z

    if-nez v0, :cond_2

    .line 305
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_AD_CB_LAST_AD_END_REISSUE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    const/4 v10, 0x0

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v1 .. v10}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 310
    :cond_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
