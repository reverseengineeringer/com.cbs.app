.class public Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/AdVOEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field private mADSManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    .line 127
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->mADSManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    .line 128
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->mADSManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    .line 129
    return-void
.end method

.method private parseEventInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 132
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 133
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 135
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->setPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isSendInfo:Z
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] setPlaybackInfo"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    if-eqz v2, :cond_1

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v3, v3, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->setOpenParam(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)V

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v3, v3, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    const/4 v3, 0x1

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isSendInfo:Z
    invoke-static {v2, v3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$102(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;Z)Z

    .line 153
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 156
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    .line 157
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 158
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 159
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    sparse-switch v15, :sswitch_data_0

    :cond_3
    :goto_0
    move v3, v14

    .line 774
    :goto_1
    move-object/from16 v0, p1

    iput v15, v0, Landroid/os/Message;->what:I

    .line 775
    move-object/from16 v0, p1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 776
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 777
    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 781
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$400(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 783
    const-string v2, "@@@AdVOEngine"

    const-string v3, "VOOSMPADSManager went away with unhandled events"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    :cond_5
    :goto_2
    return-void

    .line 164
    :sswitch_0
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_AD_START"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    check-cast v2, Landroid/os/Parcel;

    .line 166
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 167
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;-><init>()V

    .line 168
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->parse(Landroid/os/Parcel;)Z

    .line 169
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 171
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKSTART:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 176
    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v2

    .line 177
    const-string v3, "@@@AdVOEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING]  ta.mPeriodID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ta.mElapsedTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", param2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    move-object v2, v13

    .line 180
    goto/16 :goto_1

    .line 184
    :sswitch_1
    check-cast v2, Landroid/os/Parcel;

    .line 185
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->parseEventInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    move-result-object v2

    .line 188
    const-string v3, "@@@AdVOEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_SEGMENTSTART te.mPid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " te.getPeriodUrlList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_TRACKING_TRACKINGEVENTS_SEGMENTSTART:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v4}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move v3, v14

    .line 193
    goto/16 :goto_1

    .line 197
    :sswitch_2
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_SEGMENTEND"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    check-cast v2, Landroid/os/Parcel;

    .line 200
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->parseEventInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    move-result-object v2

    .line 203
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_TRACKING_TRACKINGEVENTS_SEGMENTEND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v4}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move v3, v14

    .line 206
    goto/16 :goto_1

    .line 210
    :sswitch_3
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_AD_END"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    check-cast v2, Landroid/os/Parcel;

    .line 212
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 213
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;-><init>()V

    .line 214
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->parse(Landroid/os/Parcel;)Z

    .line 215
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 217
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 222
    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v2

    .line 223
    const-string v3, "@@@AdVOEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING]  ta.mPeriodID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ta.mElapsedTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    move-object v2, v13

    .line 226
    goto/16 :goto_1

    .line 229
    :sswitch_4
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_CONTENT_START"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    check-cast v2, Landroid/os/Parcel;

    .line 231
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 232
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;-><init>()V

    .line 233
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->parse(Landroid/os/Parcel;)Z

    .line 234
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 236
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKSTART:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 240
    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v2

    .line 242
    const-string v3, "@@@AdVOEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING]  ta.mPeriodID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ta.mElapsedTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    move-object v2, v13

    .line 245
    goto/16 :goto_1

    .line 248
    :sswitch_5
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_CONTENT_END"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    check-cast v2, Landroid/os/Parcel;

    .line 250
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 251
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;-><init>()V

    .line 252
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->parse(Landroid/os/Parcel;)Z

    .line 253
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 257
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 262
    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v2

    .line 263
    const-string v3, "@@@AdVOEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING]  ta.mPeriodID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ta.mElapsedTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    move-object v2, v13

    .line 266
    goto/16 :goto_1

    .line 270
    :sswitch_6
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_WHOLECONTENT_START"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    check-cast v2, Landroid/os/Parcel;

    .line 272
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 273
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;-><init>()V

    .line 274
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->parse(Landroid/os/Parcel;)Z

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 277
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_WHOLECONTENT_START:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 282
    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v2

    .line 283
    const-string v3, "@@@AdVOEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING]  ta.mPeriodID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ta.mElapsedTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    move-object v2, v13

    .line 286
    goto/16 :goto_1

    .line 290
    :sswitch_7
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_WHOLECONTENT_END"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    check-cast v2, Landroid/os/Parcel;

    .line 292
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 293
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;-><init>()V

    .line 294
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->parse(Landroid/os/Parcel;)Z

    .line 295
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_WHOLECONTENT_END:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 302
    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v2

    .line 303
    const-string v3, "@@@AdVOEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TRACKING]  ta.mPeriodID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ta.mElapsedTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    move-object v2, v13

    .line 306
    goto/16 :goto_1

    .line 311
    :sswitch_8
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TIMEPASSED"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    check-cast v2, Landroid/os/Parcel;

    .line 313
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 314
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;-><init>()V

    .line 315
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;->parse(Landroid/os/Parcel;)Z

    .line 316
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 318
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_TIMEPASSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;->getPeriodID()I

    move-result v5

    const-wide/16 v6, 0x0

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;->getPassedTime()J

    move-result-wide v8

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 322
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING]  ta.mPeriodID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;->getPeriodID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ta.mPassedTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;->getPassedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v13

    move v3, v14

    .line 325
    goto/16 :goto_1

    .line 329
    :sswitch_9
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_OPEN_COMPLETE"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_OPEN_COMPLETE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 333
    const-string v4, "@@@AdVOEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[TRACKING] event type name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v4}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move v3, v14

    .line 337
    goto/16 :goto_1

    .line 340
    :sswitch_a
    if-eqz v2, :cond_3

    .line 342
    check-cast v2, Landroid/os/Parcel;

    .line 343
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 344
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;-><init>()V

    .line 345
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->parse(Landroid/os/Parcel;)Z

    .line 346
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 347
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] ta.mAction = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ta.mPeriodID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ta.mElapsedTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getAction()I

    move-result v2

    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->valueOf(I)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    move-result-object v2

    .line 353
    sget-object v3, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$1;->$SwitchMap$com$visualon$OSMPPlayerImpl$VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION:[I

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :cond_6
    :goto_3
    move-object v2, v13

    move v3, v14

    .line 486
    goto/16 :goto_1

    .line 357
    :pswitch_0
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_CLICK"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_CLOSE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 364
    :pswitch_1
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_CLICK"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_CLICK:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 370
    goto/16 :goto_1

    .line 373
    :pswitch_2
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_PLAYBACKSTART"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_ACTION_START:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 380
    goto/16 :goto_1

    .line 382
    :pswitch_3
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v13

    move v3, v14

    .line 387
    goto/16 :goto_1

    .line 389
    :pswitch_4
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_PAUSE"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    const/4 v3, 0x1

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPause:I
    invoke-static {v2, v3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$202(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;I)I

    .line 392
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PAUSE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 395
    goto/16 :goto_1

    .line 397
    :pswitch_5
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_SEEKS"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_SEEKS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mCurrPos:J
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$300(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)J

    move-result-wide v8

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 402
    goto/16 :goto_1

    .line 404
    :pswitch_6
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_DRAGSTART"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_DRAGSTART:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 409
    goto/16 :goto_1

    .line 411
    :pswitch_7
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_RESUME"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPause:I
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$200(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 415
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_RESUME , continue to play"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    const/4 v3, 0x0

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPause:I
    invoke-static {v2, v3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$202(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;I)I

    .line 417
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_RESUME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    goto/16 :goto_1

    .line 426
    :pswitch_8
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_FORCESTOP"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    const/4 v3, 0x1

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPause:I
    invoke-static {v2, v3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$202(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;I)I

    .line 429
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_FORCESTOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getElapsedTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 432
    goto/16 :goto_1

    .line 435
    :pswitch_9
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_FULLSCREENON"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_FULLSCREEN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 439
    goto/16 :goto_1

    .line 442
    :pswitch_a
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_FULLSCREENOFF"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_FULLSCREEN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 446
    goto/16 :goto_1

    .line 449
    :pswitch_b
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_SUBTITLEON"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_CLOSEDCAPTION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 453
    goto/16 :goto_1

    .line 456
    :pswitch_c
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_SUBTITLEOFF"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_CLOSEDCAPTION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 460
    goto/16 :goto_1

    .line 462
    :pswitch_d
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_BUFSTART"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_BUFSTART:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 467
    goto/16 :goto_1

    .line 469
    :pswitch_e
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_BUFEND"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_BUFEND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 474
    goto/16 :goto_1

    .line 476
    :pswitch_f
    const-string v2, "@@@AdVOEngine"

    const-string v3, "[TRACKING] VO_ADSMANAGER_ACTION_SEEKEND"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_SEEKEND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getPeriodID()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_3

    .line 490
    :sswitch_b
    if-eqz v2, :cond_3

    .line 492
    check-cast v2, Landroid/os/Parcel;

    .line 493
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 494
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;-><init>()V

    .line 495
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->parse(Landroid/os/Parcel;)Z

    .line 496
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 499
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_PERIODPRECENTAGE tp.mPercentage = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getPercentage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp.mPeriodID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getPeriodID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp.mElapsedTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PERCENTAGE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getPercentage()I

    move-result v2

    int-to-long v8, v2

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 506
    goto/16 :goto_1

    .line 510
    :sswitch_c
    if-eqz v2, :cond_3

    .line 512
    check-cast v2, Landroid/os/Parcel;

    .line 513
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 514
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;-><init>()V

    .line 515
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->parse(Landroid/os/Parcel;)Z

    .line 516
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 519
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_WHOLECONTENTPRECENTAGE tp.mPercentage = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getPercentage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp.mPeriodID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getPeriodID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp.mElapsedTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_WHOLECONTENT_PERCENTAGE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getPeriodID()I

    move-result v5

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->getPercentage()I

    move-result v2

    int-to-long v8, v2

    move/from16 v0, v16

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 525
    goto/16 :goto_1

    .line 530
    :sswitch_d
    check-cast v2, Landroid/os/Parcel;

    .line 531
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 532
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 533
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 534
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 537
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_AD_START te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_START:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 543
    goto/16 :goto_1

    .line 547
    :sswitch_e
    check-cast v2, Landroid/os/Parcel;

    .line 548
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 549
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 550
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 551
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 554
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_FIRST_QUARTILE te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_FIRST_QUARTILE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 560
    goto/16 :goto_1

    .line 564
    :sswitch_f
    check-cast v2, Landroid/os/Parcel;

    .line 565
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 566
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 567
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 568
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 571
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_MID_POINT te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_MID_POINT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 577
    goto/16 :goto_1

    .line 581
    :sswitch_10
    check-cast v2, Landroid/os/Parcel;

    .line 582
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 583
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 584
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 585
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 588
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_THIRD_QUARTILE te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_THIRDQUARTILE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 594
    goto/16 :goto_1

    .line 598
    :sswitch_11
    check-cast v2, Landroid/os/Parcel;

    .line 599
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 600
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 601
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 602
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 605
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_COMPLETE te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_COMPLETE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 611
    goto/16 :goto_1

    .line 615
    :sswitch_12
    check-cast v2, Landroid/os/Parcel;

    .line 616
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 617
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 618
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 619
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 622
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_CREATIVE_VIEW te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_CREATIVE_VIEW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 628
    goto/16 :goto_1

    .line 632
    :sswitch_13
    check-cast v2, Landroid/os/Parcel;

    .line 633
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 634
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 635
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 636
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 639
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_MUTE te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_MUTE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 645
    goto/16 :goto_1

    .line 649
    :sswitch_14
    check-cast v2, Landroid/os/Parcel;

    .line 650
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 651
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 652
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 653
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 656
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_UNMUTE te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_UNMUTE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 662
    goto/16 :goto_1

    .line 666
    :sswitch_15
    check-cast v2, Landroid/os/Parcel;

    .line 667
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 668
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 669
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 670
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 673
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_PAUSE te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_PAUSE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 679
    goto/16 :goto_1

    .line 683
    :sswitch_16
    check-cast v2, Landroid/os/Parcel;

    .line 684
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 685
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 686
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 687
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 690
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_RESUME te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_RESUME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 696
    goto/16 :goto_1

    .line 700
    :sswitch_17
    check-cast v2, Landroid/os/Parcel;

    .line 701
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 702
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 703
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 704
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 707
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_FULLSCREEN te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_FULL_SCREEN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 713
    goto/16 :goto_1

    .line 717
    :sswitch_18
    check-cast v2, Landroid/os/Parcel;

    .line 718
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 719
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 720
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 721
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 724
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_IMPRESSION te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_VMAP_TRACKING_EVENT_AD_IMPRESSION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 730
    goto/16 :goto_1

    .line 734
    :sswitch_19
    check-cast v2, Landroid/os/Parcel;

    .line 735
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 736
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 737
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 738
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 741
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_AD_CLOSELINEAR te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_TRACKING_TRACKINGEVENTS_AD_CLOSELINEAR:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 747
    goto/16 :goto_1

    .line 752
    :sswitch_1a
    check-cast v2, Landroid/os/Parcel;

    .line 753
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 754
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;-><init>()V

    .line 755
    invoke-virtual {v13, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->parse(Landroid/os/Parcel;)Z

    .line 756
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 759
    const-string v2, "@@@AdVOEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_AD_SKIP te.mPid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " te.getPeriodUrlList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_TRACKING_TRACKINGEVENTS_AD_SKIP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPid()I

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v13}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->getPeriodUrlList()[Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-object v2, v13

    move v3, v14

    .line 765
    goto/16 :goto_1

    .line 768
    :sswitch_1b
    const-string v3, "@@@AdVOEngine"

    const-string v4, "[TRACKING] VO_ADSMANAGER_EVENT_SKIPPABLE"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 787
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->mADSManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getOnEventListener()Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->mADSManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getOnEventListener()Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;->onAdsEvent(IIILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_2

    .line 160
    :sswitch_data_0
    .sparse-switch
        -0x134fffff -> :sswitch_4
        -0x134ffffe -> :sswitch_5
        -0x134ffffd -> :sswitch_0
        -0x134ffffc -> :sswitch_3
        -0x134ffffb -> :sswitch_9
        -0x134ffffa -> :sswitch_6
        -0x134ffff9 -> :sswitch_7
        -0x134ffff8 -> :sswitch_1b
        -0x134efffe -> :sswitch_a
        -0x134efffd -> :sswitch_b
        -0x134efffc -> :sswitch_c
        -0x134efffb -> :sswitch_8
        -0x134efffa -> :sswitch_1
        -0x134efff9 -> :sswitch_2
        -0x134eefff -> :sswitch_d
        -0x134eeffe -> :sswitch_e
        -0x134eeffd -> :sswitch_f
        -0x134eeffc -> :sswitch_10
        -0x134eeffb -> :sswitch_11
        -0x134eeffa -> :sswitch_12
        -0x134eeff9 -> :sswitch_13
        -0x134eeff8 -> :sswitch_14
        -0x134eeff7 -> :sswitch_15
        -0x134eeff6 -> :sswitch_16
        -0x134eeff5 -> :sswitch_17
        -0x134eeff4 -> :sswitch_18
        -0x134eeff3 -> :sswitch_1a
        -0x134eeff2 -> :sswitch_19
    .end sparse-switch

    .line 353
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
