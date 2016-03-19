.class public Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPEngine/voOnStreamSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    .line 291
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 292
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 298
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v2, "vomeplayer went away with unhandled events"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffffb

    if-ne v0, v2, :cond_2

    .line 302
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->setCommonCCParser(Ljava/lang/Object;)I
    invoke-static {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$100(Lcom/visualon/OSMPEngine/voOnStreamSDK;Ljava/lang/Object;)I

    goto :goto_0

    .line 305
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffff9

    if-ne v0, v2, :cond_3

    .line 306
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->setXYRate(F)V

    goto :goto_0

    .line 311
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffffe

    if-ne v0, v2, :cond_4

    .line 312
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/widget/ClosedCaptionManager;->clearWidget()V

    .line 315
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const/4 v1, 0x0

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$202(Lcom/visualon/OSMPEngine/voOnStreamSDK;Lcom/visualon/widget/ClosedCaptionManager;)Lcom/visualon/widget/ClosedCaptionManager;

    goto :goto_0

    .line 320
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffffd

    if-ne v0, v2, :cond_6

    .line 321
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v2

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_5

    move v0, v6

    :goto_1
    invoke-virtual {v2, v0}, Lcom/visualon/widget/ClosedCaptionManager;->show(Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 327
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffff3

    if-ne v0, v2, :cond_7

    .line 328
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 336
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffff8

    if-ne v0, v2, :cond_8

    .line 338
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->addSecondTextureView()V
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$300(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    .line 341
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffff7

    if-ne v0, v2, :cond_9

    .line 343
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->setViewInternal(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$400(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/View;)V

    goto/16 :goto_0

    .line 347
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffff6

    if-ne v0, v2, :cond_a

    .line 349
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->setSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    invoke-static {v1, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$500(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/SurfaceHolder;)V

    goto/16 :goto_0

    .line 353
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffff1

    if-ne v0, v2, :cond_b

    .line 355
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->setSurfaceInternal(Landroid/view/Surface;)V
    invoke-static {v1, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$600(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/Surface;)V

    goto/16 :goto_0

    .line 359
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffff5

    if-ne v0, v2, :cond_c

    .line 361
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->refreshDisplaySizeInternal()V
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    goto/16 :goto_0

    .line 365
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffff4

    if-ne v0, v2, :cond_d

    .line 367
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->clean()V

    goto/16 :goto_0

    .line 370
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, -0xf0ffff2

    if-ne v0, v2, :cond_e

    .line 372
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    goto/16 :goto_0

    .line 376
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2001

    if-ne v0, v2, :cond_12

    .line 378
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleInEngine:Z
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->closeCaptionOutput:Z
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 382
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleSampler:Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetPos()I

    move-result v0

    .line 384
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleSampler:Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;->getSample(I)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1300(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    move-result-object v2

    const/16 v3, 0x2001

    invoke-virtual {v2, v3, v1, v1, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 564
    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;->onEvent(IIILjava/lang/Object;)I

    goto/16 :goto_0

    .line 390
    :cond_10
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->enableInnerCloseCaption:Z
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleSampler:Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetPos()I

    move-result v0

    .line 394
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleSampler:Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;->getSampleParcel(I)Landroid/os/Parcel;

    move-result-object v2

    .line 395
    if-eqz v2, :cond_11

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 398
    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Lcom/visualon/widget/ClosedCaptionManager;->handleRawData(Landroid/os/Parcel;ZZ)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 400
    const-string v7, "@@@voOnStreamSDK.java"

    const-string v8, "CloseCaption handleRawData, time is %d."

    new-array v6, v6, [Ljava/lang/Object;

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v7, v8, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :cond_11
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->checkViewShowStatus(I)V

    goto/16 :goto_0

    .line 410
    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x5000003

    if-ne v0, v2, :cond_13

    .line 411
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOOSMB_CB_VideoOriginalAspectRatio width ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I
    invoke-static {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1502(Lcom/visualon/OSMPEngine/voOnStreamSDK;I)I

    .line 413
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget v1, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I
    invoke-static {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1602(Lcom/visualon/OSMPEngine/voOnStreamSDK;I)I

    goto/16 :goto_2

    .line 415
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_14

    .line 418
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_2a

    move v0, v6

    .line 420
    :goto_3
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I
    invoke-static {v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1702(Lcom/visualon/OSMPEngine/voOnStreamSDK;I)I

    .line 421
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "OnEvent message VOOSMP_CB_VideoAspectRatio, mAspectRatio is %d,  "

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I
    invoke-static {v5}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v2

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLastAspectRatio:I
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1802(I)I

    .line 423
    if-eqz v0, :cond_f

    .line 425
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    .line 426
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v2, "OnEvent message VOOSMP_CB_VideoAspectRatio, but get later for Video Width height, mAspectRatio is %d,  "

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I
    invoke-static {v4}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 430
    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_16

    .line 432
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->setFixedSizeInternal()V
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    .line 433
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateVideoAspectRatioInside()V
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    .line 434
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 435
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;->onEvent(IIILjava/lang/Object;)I

    .line 436
    :cond_15
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventFinish:Z
    invoke-static {v0, v6}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2202(Lcom/visualon/OSMPEngine/voOnStreamSDK;Z)Z

    goto/16 :goto_0

    .line 439
    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x25

    if-ne v0, v2, :cond_1d

    .line 442
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v2, "Receive VOOSMP_CB_Block_Output, output control type is 0x%X, value is %d"

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_17

    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_17

    .line 447
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2300(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_f

    .line 448
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2300(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->closeMiracast()I

    goto/16 :goto_2

    .line 450
    :cond_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v2

    and-int/2addr v0, v2

    if-gtz v0, :cond_18

    iget v0, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_f

    .line 453
    :cond_18
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1c

    .line 455
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 457
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2600(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2502(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/View;)Landroid/view/View;

    .line 458
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 459
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 460
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 462
    instance-of v3, v0, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_19

    .line 463
    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 464
    :cond_19
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1a

    .line 465
    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 468
    :cond_1a
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v2, "Receive VOOSMP_CB_Block_Output, Current playback view\'s parent layout isn\'t RelativeLayout or FrameLayout, don\'t implement block all display function."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 471
    :cond_1b
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 474
    :cond_1c
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v6, :cond_f

    .line 476
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 477
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 481
    :cond_1d
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_21

    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_f

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 485
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_20

    .line 487
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_1e

    .line 488
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 490
    :cond_1e
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 497
    :cond_1f
    :goto_4
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v2, "VOOSMP_CB_SURFACE_EXCHANGED, param1 = %d, First Surface alpha value is %f, Second Surface alpha value is %f."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v6

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 491
    :cond_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v8, :cond_1f

    .line 493
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 494
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_1f

    .line 495
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 501
    :cond_21
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_25

    .line 503
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_22

    .line 505
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voAnalyticsRender;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voAnalyticsRender;->setDispalyData(Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;)V

    goto/16 :goto_0

    .line 511
    :cond_22
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_23

    .line 513
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 514
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 515
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 516
    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2600(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2802(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/View;)Landroid/view/View;

    .line 517
    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;
    invoke-static {v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v2, "Create Analytics display view, Analytics"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :cond_23
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voAnalyticsRender;

    move-result-object v0

    if-nez v0, :cond_24

    .line 523
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    new-instance v1, Lcom/visualon/OSMPEngine/voAnalyticsRender;

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2600(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/visualon/OSMPEngine/voAnalyticsRender;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;
    invoke-static {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2902(Lcom/visualon/OSMPEngine/voOnStreamSDK;Lcom/visualon/OSMPEngine/voAnalyticsRender;)Lcom/visualon/OSMPEngine/voAnalyticsRender;

    .line 524
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voAnalyticsRender;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voAnalyticsRender;->setView(Landroid/view/View;)V

    .line 525
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v1

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v2

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->setAnalyticsViewSize(II)V
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3200(Lcom/visualon/OSMPEngine/voOnStreamSDK;II)V

    .line 528
    :cond_24
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voAnalyticsRender;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPEngine/voAnalyticsRender;->setDispalyData(Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;)V

    goto/16 :goto_0

    .line 531
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_29

    .line 533
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    move-result-object v0

    if-nez v0, :cond_26

    .line 537
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 538
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    new-instance v3, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    iget-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2600(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    invoke-static {v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$802(Lcom/visualon/OSMPEngine/voOnStreamSDK;Lcom/visualon/OSMPUtils/voLicenseDisplayRender;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    .line 539
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 541
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v2, "Create license display view"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    :cond_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 544
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "License display type %d value %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 546
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_27

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 547
    :goto_5
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_28

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 548
    :goto_6
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 557
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v2, "Unsupported license display option %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 546
    :cond_27
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v2

    goto :goto_5

    .line 547
    :cond_28
    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I
    invoke-static {v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v3

    goto :goto_6

    .line 551
    :pswitch_0
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->drawString(Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 554
    :pswitch_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v1

    iget-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I
    invoke-static {v4}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I

    move-result v4

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->drawIcon(IIII)V

    goto/16 :goto_2

    .line 560
    :cond_29
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_f

    .line 562
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)J

    move-result-wide v2

    const-wide/16 v4, 0x72

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    # invokes: Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J
    invoke-static/range {v1 .. v6}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3300(Lcom/visualon/OSMPEngine/voOnStreamSDK;JJLjava/lang/Object;)J

    goto/16 :goto_2

    :cond_2a
    move v0, v1

    goto/16 :goto_3

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
