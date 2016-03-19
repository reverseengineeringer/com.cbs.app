.class Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 326
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 327
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const v3, -0xf0ffffd

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 331
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$100(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPEngine/voOnStreamSDK;

    move-result-object v0

    if-nez v0, :cond_1

    .line 333
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "voOSBasePlayer went away with unhandled events"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffffb

    if-ne v0, v1, :cond_2

    .line 337
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setCommonCCParser(ILjava/lang/Object;)I
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;ILjava/lang/Object;)I

    goto :goto_0

    .line 340
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffff7

    if-ne v0, v1, :cond_3

    .line 342
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "messageCCCreate, messageCCMetadataArrive"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->createCloseCaptionUI()V
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$300(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)V

    goto :goto_0

    .line 346
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffff3

    if-ne v0, v1, :cond_4

    .line 348
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->showSubtitle()V

    goto :goto_0

    .line 352
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffffa

    if-ne v0, v1, :cond_5

    .line 353
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "messageCCMetadataArrive"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_0

    .line 356
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcel;

    invoke-virtual {v1, v0, v7}, Lcom/visualon/widget/ClosedCaptionManager;->setData(Landroid/os/Parcel;Z)Z

    goto :goto_0

    .line 360
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffff9

    if-ne v0, v1, :cond_6

    .line 361
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_0

    .line 363
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->setXYRate(F)V

    goto :goto_0

    .line 366
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffff8

    if-ne v0, v1, :cond_8

    .line 367
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_7

    .line 370
    invoke-virtual {v0, v7}, Lcom/visualon/widget/ClosedCaptionManager;->clearData(Z)V

    goto/16 :goto_0

    .line 372
    :cond_7
    invoke-virtual {v0}, Lcom/visualon/widget/ClosedCaptionManager;->clearWidget()V

    goto/16 :goto_0

    .line 377
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffffe

    if-ne v0, v1, :cond_9

    .line 379
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # setter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayAllowed:Z
    invoke-static {v0, v7}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$502(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;Z)Z

    .line 380
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->showSubtitle()V

    .line 381
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->destroySubtitleManager()V
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$600(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)V

    goto/16 :goto_0

    .line 384
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffff4

    if-ne v0, v1, :cond_a

    .line 385
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_0

    .line 388
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 393
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffff2

    if-ne v0, v1, :cond_b

    .line 394
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsExportListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$700(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsExportListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$700(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;->onVOAnalyticsEvent()V

    goto/16 :goto_0

    .line 399
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_c

    .line 405
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->showSubtitle()V

    goto/16 :goto_0

    .line 407
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_f

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 410
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOffsetTime:I
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$800(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)I

    move-result v1

    if-eqz v1, :cond_d

    .line 413
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOffsetTime:I
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$800(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOffsetTime:I
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$800(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)I

    move-result v0

    .line 419
    :cond_d
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_e

    .line 421
    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->checkViewShowStatus(I)V

    .line 423
    :cond_e
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_0

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 425
    const-string v4, "@@@OSMPBasePlayer"

    const-string v5, "Surface Subtitle show, step1 is %d."

    new-array v6, v6, [Ljava/lang/Object;

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 430
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x3000005

    if-ne v0, v1, :cond_11

    .line 432
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x60

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 433
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "Receive VOOSMP_SRC_CB_Output_Control_Settings, SetParam VOOSMP_PID_OUTPUT_CONTROL_SETTINGS."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_10
    :goto_1
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "onEvent, handleMessage, id is 0x%X, param1 is 0x%X, param2 is 0x%X. "

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;->onEvent(IIILjava/lang/Object;)I

    goto/16 :goto_0

    .line 435
    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_12

    .line 437
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000030

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 438
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "Receive VOOSMP_CB_Track_Changed, SetParam VOOSMP_SRC_PID_TRACK_CHANGED, param is %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 440
    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2000071

    if-ne v0, v1, :cond_13

    .line 442
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, v7}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetProgramInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSProgramInfo;

    .line 444
    if-eqz v0, :cond_0

    .line 447
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSProgramInfo;->getProgramType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->getValue()I

    move-result v1

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 449
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "osmpCallBack, id is 0x%x, type is %d, stream count is %d"

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSProgramInfo;->getStreamCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->ReportAudioEvent(I)V
    invoke-static {v0, v5}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$900(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;I)V

    goto/16 :goto_1

    .line 453
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_14

    .line 455
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "onEvent, VOOSMP_CB_Output_Control_Change_Resolution, id is 0x%X, param1 is 0x%X, param2 is 0x%X. "

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 457
    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_18

    .line 460
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    if-gtz v0, :cond_15

    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    if-lez v0, :cond_16

    .line 463
    :cond_15
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayEnable:Z
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1000(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 465
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "onEvent, VOOSMP_CB_Block_Output baseplayer"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_17

    .line 468
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "onEvent, VOOSMP_CB_Block_Output baseplayer block ture"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # setter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mBlockCC:Z
    invoke-static {v0, v6}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1102(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;Z)Z

    .line 470
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 482
    :cond_16
    :goto_2
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "onEvent, VOOSMP_CB_Block_Output, block CC, id is 0x%X, param1 is 0x%X, param2 is 0x%X. "

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 475
    :cond_17
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "onEvent, VOOSMP_CB_Block_Output baseplayer block false"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # setter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mBlockCC:Z
    invoke-static {v0, v7}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1102(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;Z)Z

    .line 477
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 484
    :cond_18
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_19

    .line 486
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "onEvent, VOOSMP_CB_Block_Playback, id is 0x%X, param1 is 0x%X, param2 is 0x%X. "

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 489
    :cond_19
    const/16 v0, 0x21

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1a

    .line 492
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1300(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 494
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1300(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->audioRenderStart()I

    move-result v0

    .line 495
    const-string v1, "AudioRenderStartReturnCode"

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 498
    :cond_1a
    const v0, 0x5000002

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1b

    .line 500
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3010001

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    goto/16 :goto_0

    .line 503
    :cond_1b
    const v0, 0x2000030

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_10

    const/16 v0, 0x1389

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_10

    .line 506
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x1000e

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    goto/16 :goto_0
.end method
