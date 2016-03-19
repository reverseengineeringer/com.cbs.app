.class Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    .line 228
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 233
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$000(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffffe

    if-ne v0, v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_CUSTOMER_TAG:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 239
    new-instance v1, Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 240
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "messageCustomerTag onVOEvent VO_OSMP_CB_EVENT_ID.VO_OSMP_SRC_CB_CUSTOMER_TAG timestamp is %d, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_START_DOWNLOAD:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 245
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_START_DOWNLOAD:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 246
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$000(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;->VO_OSMP_SRC_CB_SYNC_IO_HTTP_START_DOWNLOAD:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 250
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_DOWNLOAD_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 252
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_DOWNLOAD_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 253
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$000(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;->VO_OSMP_SRC_CB_SYNC_IO_HTTP_DOWNLOAD_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 256
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DRM_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 258
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DRM_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 261
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0fffff

    if-ne v0, v1, :cond_8

    .line 263
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # invokes: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bIsSeeking:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # invokes: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I
    invoke-static {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;I)I

    move-result v0

    .line 268
    int-to-long v2, v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurPlayingTime:J
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$500(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_6

    .line 269
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    int-to-long v2, v0

    # setter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurPlayingTime:J
    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$502(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;J)J

    .line 270
    :cond_6
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_PROGRESS:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v6, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 271
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v1

    .line 272
    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "WHY_STATUS The current player status is %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-eq v1, v2, :cond_0

    .line 275
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setPlayingTime(I)I

    .line 278
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # invokes: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isMdialogVodType()Z
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$700(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 279
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getTimeStamp(I)I

    move-result v0

    .line 280
    :cond_7
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    move-result-object v1

    const/16 v2, 0x56

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    goto/16 :goto_0

    .line 284
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0feffd

    if-ne v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSuspendPaused:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$800(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 289
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # setter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSuspendPaused:Z
    invoke-static {v0, v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$802(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Z)Z

    goto/16 :goto_0
.end method
