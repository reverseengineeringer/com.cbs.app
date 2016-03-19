.class final Lcom/cbs/app/visualon/player/CBSPlayer$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/visualon/player/CBSPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 8

    .prologue
    .line 276
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getTrackingAuthString()Ljava/lang/String;

    move-result-object v1

    .line 277
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer$7;->d:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 666
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    .line 280
    :pswitch_1
    invoke-static {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-static {p2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    move-result-object v0

    .line 287
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer$7;->b:[I

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 294
    :pswitch_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->c(Z)Z

    .line 295
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Z)Z

    goto :goto_0

    .line 302
    :pswitch_4
    invoke-static {p3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;

    move-result-object v0

    .line 303
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer$7;->a:[I

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AVAILABLE_TRACK_TYPE;->ordinal()I

    goto :goto_0

    .line 335
    :pswitch_5
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    goto :goto_0

    .line 341
    :pswitch_6
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->K()I

    move-result v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 342
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->g(I)I

    .line 343
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 344
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->l()V

    .line 345
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->m()V

    goto :goto_0

    .line 347
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const v0, 0x989682

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    goto :goto_0

    .line 353
    :pswitch_7
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->M()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->L()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 354
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->b(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :pswitch_8
    const-string v0, "Receive Engine Seek Complete <---"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->N()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v1

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto/16 :goto_0

    .line 365
    :pswitch_9
    const-string v0, "Receive Source Seek Complete <---"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :pswitch_a
    const-string v0, "Receive VideoRenderStart <---"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    :pswitch_b
    sput p2, Lcom/cbs/app/visualon/player/CBSPlayer;->i:I

    .line 374
    sput p3, Lcom/cbs/app/visualon/player/CBSPlayer;->j:I

    goto/16 :goto_0

    .line 378
    :pswitch_c
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->O()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 380
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->P()V

    goto/16 :goto_0

    .line 384
    :pswitch_d
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->Q()V

    .line 385
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->I()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 386
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->O()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 391
    :pswitch_e
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->O()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 394
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->P()V

    goto/16 :goto_0

    .line 398
    :pswitch_f
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->O()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 399
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->Q()V

    goto/16 :goto_0

    .line 422
    :pswitch_10
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->I()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 424
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 426
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 427
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 428
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->d(Z)Z

    .line 429
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-ne v0, v2, :cond_4

    .line 432
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;->VO_OSMP_AD_RESUME_MODE_SHORT_TIME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;

    .line 434
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->R()I

    move-result v0

    if-lez v0, :cond_2

    .line 436
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->R()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 437
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;->VO_OSMP_AD_RESUME_MODE_SHORT_TIME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;

    .line 441
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RESUME resumeMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resumeTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->S()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 442
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->S()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->S()J

    move-result-wide v2

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RESUME resumeMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resumeTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->S()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v2

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->S()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 451
    :cond_2
    :goto_2
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 452
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Ljava/lang/String;)V

    .line 456
    :cond_3
    :goto_3
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->c(J)J

    .line 457
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->d(J)J

    .line 459
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->X()V

    .line 460
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->Y()I

    .line 461
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->Z()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02020b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 468
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aa()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setAdsInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)V

    .line 469
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    .line 473
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ccSettingTurnedOn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 474
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 475
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->e(Z)Z

    .line 476
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ab()Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 488
    :cond_4
    :goto_4
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ac()Z

    goto/16 :goto_0

    .line 439
    :cond_5
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;->VO_OSMP_AD_RESUME_MODE_LONG_TIME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;

    goto/16 :goto_1

    .line 446
    :cond_6
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->T()I

    .line 447
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->U()J

    goto :goto_2

    .line 453
    :cond_7
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->V()Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->W()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 454
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->V()Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    move-result-object v1

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->W()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 478
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->e(Z)Z

    .line 479
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ab()Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 484
    :cond_9
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-static {p2}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    goto :goto_4

    .line 494
    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 495
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(J)J

    .line 496
    invoke-static {p2}, Lcom/cbs/app/visualon/player/CBSPlayer;->h(I)I

    .line 497
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->f(Z)Z

    .line 498
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    .line 500
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->c(Z)Z

    .line 502
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setEnabled(Z)V

    .line 504
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->M()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ad()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 508
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Landroid/content/Context;)Lcom/google/android/gms/cast/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/google/android/gms/cast/j;)V

    .line 509
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->A()V

    .line 511
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 512
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Lcom/cbs/app/view/model/VideoData;)V

    goto/16 :goto_0

    .line 513
    :cond_a
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->V()Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->W()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->V()Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->W()Ljava/lang/String;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V

    goto/16 :goto_0

    .line 521
    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {p2}, Lcom/cbs/app/visualon/player/CBSPlayer;->h(I)I

    .line 523
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->M()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ae()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 524
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->d(Z)Z

    .line 525
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    goto/16 :goto_0

    .line 530
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 532
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->c(Z)Z

    .line 534
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setEnabled(Z)V

    .line 536
    invoke-static {p2}, Lcom/cbs/app/visualon/player/CBSPlayer;->h(I)I

    .line 537
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->f(Z)Z

    .line 541
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->af()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->J()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 542
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1770

    sub-long/2addr v0, v2

    .line 543
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2.2 set resume time to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    new-instance v2, Lcom/cbs/app/service/MyCBSDBServiceImpl;

    invoke-direct {v2}, Lcom/cbs/app/service/MyCBSDBServiceImpl;-><init>()V

    .line 546
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/cbs/app/service/MyCBSDBService;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 550
    :cond_b
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAtStartOfAdPod "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->af()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 553
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->af()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 554
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 556
    :cond_c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->d(Z)Z

    .line 558
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->M()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ag()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 565
    :pswitch_14
    invoke-static {p2}, Lcom/cbs/app/visualon/player/CBSPlayer;->h(I)I

    .line 567
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ah()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a(I)V

    .line 569
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ai()I

    move-result v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aj()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .line 570
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aj()[I

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ai()I

    move-result v1

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ah()I

    move-result v2

    aput v2, v0, v1

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnVOEvent VO_OSMP_AD_CB_AD_END mAdsNumber = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ai()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mPlayedAds[mAdsNumber]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aj()[I

    move-result-object v1

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ai()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->ak()I

    .line 576
    :cond_d
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->M()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->al()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 578
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a()V

    .line 580
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    goto/16 :goto_0

    .line 585
    :pswitch_15
    invoke-static {p2}, Lcom/cbs/app/visualon/player/CBSPlayer;->i(I)I

    .line 586
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->M()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->am()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 596
    :pswitch_16
    invoke-static {p2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    move-result-object v0

    .line 597
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer$7;->c:[I

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->ordinal()I

    goto/16 :goto_0

    .line 629
    :pswitch_17
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    goto/16 :goto_0

    .line 633
    :pswitch_18
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    goto/16 :goto_0

    .line 637
    :pswitch_19
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    goto/16 :goto_0

    .line 641
    :pswitch_1a
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    goto/16 :goto_0

    .line 645
    :pswitch_1b
    check-cast p4, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-static {p4}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duratoinzz: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "max timezz: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 650
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aa()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 652
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "adPeriodzz: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_e

    const-string v1, "ads"

    :goto_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " end time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " duration: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v4

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    const-string v1, "content"

    goto :goto_6

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 287
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onVOSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
