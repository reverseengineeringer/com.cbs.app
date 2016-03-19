.class public Lcom/visualon/OSMPRender/voAudioRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPRender/voAudioRender$runPlayback;,
        Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;,
        Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;
    }
.end annotation


# static fields
.field public static final RENDER_FORMAT_AC3:I

.field public static final RENDER_FORMAT_EAC3:I

.field public static final RENDER_FORMAT_PCM:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private ENCODING_AC3:I

.field private ENCODING_EAC3:I

.field private hdmiDisconnectStartTime:J

.field private mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mChannels:I

.field private mLeftVolume:F

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNativeContext:J

.field private mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

.field private mReconfigAudioTrack:Z

.field private mRenderFormat:I

.field private mRightVolume:F

.field private mSampleBit:I

.field private mSampleRate:I

.field private mSendRenderStart:Z

.field private mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

.field mThreadPlayback:Ljava/lang/Thread;

.field private m_bHdmiDisconnect:Z

.field private mbWrite:Z

.field mrunPlayback:Lcom/visualon/OSMPRender/voAudioRender$runPlayback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingPCM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v0

    sput v0, Lcom/visualon/OSMPRender/voAudioRender;->RENDER_FORMAT_PCM:I

    .line 58
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v0

    sput v0, Lcom/visualon/OSMPRender/voAudioRender;->RENDER_FORMAT_AC3:I

    .line 59
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingEAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v0

    sput v0, Lcom/visualon/OSMPRender/voAudioRender;->RENDER_FORMAT_EAC3:I

    .line 90
    const-string v0, "@@@voAudioRender"

    sput-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    .line 64
    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    .line 65
    iput v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_AC3:I

    .line 66
    iput v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_EAC3:I

    .line 81
    iput v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLeftVolume:F

    .line 82
    iput v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRightVolume:F

    .line 86
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bHdmiDisconnect:Z

    .line 87
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->hdmiDisconnectStartTime:J

    .line 88
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    .line 656
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    .line 115
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    .line 116
    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    .line 118
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    .line 119
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    .line 120
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRenderFormat:I

    .line 121
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleBit:I

    .line 123
    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 124
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    .line 125
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbWrite:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 128
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 130
    new-instance v0, Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-direct {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    .line 131
    :cond_0
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "voAudioRender Construct"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPRender/voAudioRender;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->playback()V

    return-void
.end method

.method private closeTrack()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 605
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 607
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "closeTrack"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v1, 0x59

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 609
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    invoke-direct {p0, v0, v1, v5}, Lcom/visualon/OSMPRender/voAudioRender;->nativeSetAudioTrack(JLandroid/media/AudioTrack;)Z

    .line 611
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 612
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V

    .line 614
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopAudioDSPClockTimer()V

    .line 616
    :cond_0
    iput-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    .line 617
    iput v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    .line 618
    iput v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    .line 619
    iput-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 621
    :cond_1
    return-void
.end method

.method private getAudioConfig(I)I
    .locals 3

    .prologue
    .line 423
    packed-switch p1, :pswitch_data_0

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported channel count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :pswitch_0
    const/4 v0, 0x4

    .line 445
    :goto_0
    return v0

    .line 429
    :pswitch_1
    const/16 v0, 0xc

    .line 430
    goto :goto_0

    .line 433
    :pswitch_2
    const/16 v0, 0xcc

    .line 434
    goto :goto_0

    .line 437
    :pswitch_3
    const/16 v0, 0xfc

    .line 438
    goto :goto_0

    .line 440
    :pswitch_4
    const/16 v0, 0x3fc

    .line 441
    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getDSPTimeStamp()J
    .locals 3

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    .line 138
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getDSPTimeStamp()J

    move-result-wide v0

    .line 143
    :cond_0
    return-wide v0
.end method

.method private isAC3(I)Z
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_AC3:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_EAC3:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeGetAudioFormat(JII)I
.end method

.method private native nativeInit()V
.end method

.method private native nativeSetAudioTrack(JLandroid/media/AudioTrack;)Z
.end method

.method private native nativeUninit()V
.end method

.method private openTrack(IIII)I
    .locals 8

    .prologue
    .line 472
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 473
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopAudioDSPClockTimer()V

    .line 476
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v1, 0x59

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 479
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 480
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->closeTrack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 490
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/visualon/OSMPRender/voAudioRender;->nativeGetAudioFormat(JII)I

    move-result v4

    .line 491
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "XXXFormat: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    const/4 v0, -0x1

    if-ne v4, v0, :cond_2

    .line 494
    const/4 v4, 0x2

    .line 500
    :cond_2
    invoke-direct {p0, p2}, Lcom/visualon/OSMPRender/voAudioRender;->getAudioConfig(I)I

    move-result v3

    .line 502
    invoke-static {p1, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 503
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "nMinBufSize: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 506
    :cond_3
    const/4 v0, -0x1

    .line 600
    :goto_1
    return v0

    .line 484
    :catch_0
    move-exception v0

    .line 486
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "AudioTracker stop or close exception before openTrack , %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 515
    :cond_4
    mul-int/lit8 v5, v0, 0x2

    .line 518
    const/16 v0, 0x800

    if-ge v5, v0, :cond_5

    .line 519
    const/16 v5, 0x800

    .line 523
    :cond_5
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 524
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    .line 526
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_6

    .line 527
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->setAudioTrack(Landroid/media/AudioTrack;)Lcom/visualon/OSMPRender/voAudioDSPClock;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/visualon/OSMPRender/voAudioRender;->isAC3(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1, v5, p2}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reconfig(IZII)Lcom/visualon/OSMPRender/voAudioDSPClock;

    .line 529
    :cond_6
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create AudioTrack, SampleRate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,ChannelCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,nMinBufSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,audio per sample is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , nChannelConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 536
    new-instance v0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;

    invoke-direct {v0, p1, p2, p4, v5}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;-><init>(IIII)V

    .line 538
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    if-eqz v1, :cond_9

    .line 539
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v2, 0x5c

    invoke-interface {v1, v2, v0}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 540
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const-wide/16 v2, 0x5b

    invoke-interface {v0, v2, v3}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetAudioParam(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 541
    new-instance v1, Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "AFT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 544
    :goto_2
    if-eqz v1, :cond_7

    .line 546
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "It\'s Amazon family, link is EAC3/AC3"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v2, :cond_c

    .line 549
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getLatency(J)J

    move-result-wide v2

    long-to-int v0, v2

    div-int/lit16 v0, v0, 0x3e8

    .line 551
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, "AFTM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 552
    const/16 v0, 0x96

    .line 566
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    invoke-direct {p0, v4}, Lcom/visualon/OSMPRender/voAudioRender;->isAC3(I)Z

    move-result v1

    if-nez v1, :cond_8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_8

    .line 567
    const/4 v0, 0x0

    .line 570
    :cond_8
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xxlatency==  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v2, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 572
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "VOOSMP_PID_AUDIO_RENDER_LATENCY VOOSMP_PID_AUDIO_REND_BUFFER_TIME is %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v1, 0xd

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 575
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v1, 0x1c

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 576
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "SetParam VOOSMP_PID_AUDIO_REND_ADJUST_TIME is 100,  VOOSMP_PID_AUDIO_STEP_BUFFTIME is 10"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    :cond_9
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLeftVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    .line 580
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLeftVolume:F

    iget v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRightVolume:F

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPRender/voAudioRender;->arsetVolume(FF)V

    .line 582
    :cond_a
    iput p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    .line 583
    iput p2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    .line 584
    iput p3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRenderFormat:I

    .line 585
    iput p4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleBit:I

    .line 587
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "opentracker before allocate buffer, mSampleRate is %d, mChannelsis %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    :try_start_1
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    iget v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :goto_4
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_d

    .line 596
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "Failed to allocate buffer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 541
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 555
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_7

    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, "AFTM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 561
    const/16 v0, 0x12c

    goto/16 :goto_3

    .line 590
    :catch_1
    move-exception v0

    .line 591
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "ByteBuffer.allocate error, message is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 599
    :cond_d
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "opentracker before allocate end"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private optimizeHdmiDisconnectPoint(J)V
    .locals 9

    .prologue
    const-wide/32 v6, 0xf4240

    .line 266
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleBit:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 268
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->hdmiDisconnectStartTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 271
    iget-object v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {p0, v4, p1, p2}, Lcom/visualon/OSMPRender/voAudioRender;->writeData([BJ)J

    .line 272
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    div-long/2addr v2, v6

    .line 273
    const-wide/16 v4, 0x3

    div-long v4, v0, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 276
    sub-long/2addr v0, v2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/visualon/OSMPRender/voAudioRender;->writeData([BJ)J

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bHdmiDisconnect:Z

    goto :goto_0
.end method

.method private playback()V
    .locals 12

    .prologue
    const/16 v9, 0x59

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 292
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "playbackVideo started!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 297
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne v0, v1, :cond_c

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne v0, v1, :cond_8

    .line 301
    iput-boolean v8, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbWrite:Z

    .line 302
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_9

    .line 303
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-interface {v0, v7}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->GetAudioData([B)J

    move-result-wide v0

    .line 308
    :goto_1
    cmp-long v2, v0, v10

    if-nez v2, :cond_6

    .line 310
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-interface {v2}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetAudioFormat()Lcom/visualon/OSMPUtils/voOSAudioFormat;

    move-result-object v2

    .line 311
    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleRate()I

    move-result v3

    iget v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->Channels()I

    move-result v3

    iget v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-interface {v3}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetFormatID()I

    move-result v3

    iget v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRenderFormat:I

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleBits()I

    move-result v3

    iget v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleBit:I

    if-eq v3, v4, :cond_6

    .line 313
    :cond_2
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleRate()I

    move-result v3

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->Channels()I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-interface {v5}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetFormatID()I

    move-result v5

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleBits()I

    move-result v2

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/visualon/OSMPRender/voAudioRender;->openTrack(IIII)I

    .line 314
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "openTrack finished."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-nez v2, :cond_4

    .line 317
    :cond_3
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 318
    iput-object v7, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    .line 319
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 320
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const v3, -0x7fffffe6

    invoke-interface {v2, v3, v6, v6, v7}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    .line 322
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "VOOSMP_CB_Audio_Render_Failed"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_4
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    iget-object v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v2, v3, v4}, Lcom/visualon/OSMPRender/voAudioRender;->nativeSetAudioTrack(JLandroid/media/AudioTrack;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 326
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 328
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v2, :cond_5

    .line 329
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioDSPClock;->startAudioDSPClockTimer()V

    .line 335
    :cond_5
    :goto_2
    iput-boolean v6, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    .line 336
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "Ready to write."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :cond_6
    cmp-long v2, v0, v10

    if-lez v2, :cond_7

    .line 342
    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bHdmiDisconnect:Z

    if-eqz v2, :cond_b

    .line 344
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/voAudioRender;->optimizeHdmiDisconnectPoint(J)V

    .line 345
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_7

    .line 346
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopAudioDSPClockTimer()V

    .line 354
    :cond_7
    :goto_3
    iput-boolean v6, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbWrite:Z

    .line 356
    :cond_8
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne v0, v1, :cond_0

    .line 359
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 361
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 364
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 305
    :cond_9
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->GetAudioData([B)J

    move-result-wide v0

    goto/16 :goto_1

    .line 333
    :cond_a
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    goto :goto_2

    .line 350
    :cond_b
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/visualon/OSMPRender/voAudioRender;->writeData([BJ)J

    goto :goto_3

    .line 370
    :cond_c
    iput-object v7, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    .line 372
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 374
    :try_start_3
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v0, v8, :cond_d

    .line 376
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 377
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_d

    .line 378
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V

    .line 380
    :cond_d
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->closeTrack()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 385
    :goto_4
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 387
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "playbackaudio stopped!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    return-void

    .line 381
    :catch_1
    move-exception v0

    .line 383
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "AudioTracker stop or close exception , %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private setAC3Value(II)V
    .locals 5

    .prologue
    .line 255
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "setAC3Value %d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iput p2, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_AC3:I

    .line 257
    iput p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_EAC3:I

    .line 258
    return-void
.end method

.method private declared-synchronized setStatus(Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)V
    .locals 3

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStatus - , status is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    .line 639
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne p1, v0, :cond_1

    .line 640
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 641
    :cond_1
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStatus + , mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    monitor-exit p0

    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeData([BJ)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 392
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    cmp-long v0, p2, v8

    if-lez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 396
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "mAudioTrack.getPlayState() is %d, threadid is %d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->playAudioTrack()V

    .line 406
    :goto_0
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-interface {v0, v1, v6, v6, v2}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    .line 409
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "VOOSMP_CB_AudioRenderStart event sent."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iput-boolean v6, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 412
    :cond_0
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioTrack.play(), mAudioTrack.getPlayState is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    long-to-int v1, p2

    invoke-virtual {v0, p1, v6, v1}, Landroid/media/AudioTrack;->write([BII)I

    .line 418
    :cond_2
    return-wide v8

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0
.end method


# virtual methods
.method public arsetVolume(FF)V
    .locals 5

    .prologue
    .line 625
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "arsetVolume left%.3f; right:%.3f ."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 627
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 629
    :cond_0
    iput p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLeftVolume:F

    .line 630
    iput p2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRightVolume:F

    .line 632
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 633
    return-void
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 240
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "flush"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 243
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 246
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 252
    return-void
.end method

.method public hdmiDisConnect()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->hdmiDisconnectStartTime:J

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bHdmiDisconnect:Z

    .line 96
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->nativeInit()V

    .line 647
    return-void
.end method

.method public notifyReconfigAudioTrack()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    .line 450
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause-  mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voAudioRender;->setStatus(Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)V

    .line 177
    :goto_0
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbWrite:Z

    if-eqz v0, :cond_0

    .line 180
    const-wide/16 v0, 0x2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 181
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "Audio Pause wait for write completed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->resetWhenPause()V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 201
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause+  mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run-  mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne v0, v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voAudioRender;->setStatus(Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)V

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mrunPlayback:Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

    invoke-direct {v0, p0, p0}, Lcom/visualon/OSMPRender/voAudioRender$runPlayback;-><init>(Lcom/visualon/OSMPRender/voAudioRender;Lcom/visualon/OSMPRender/voAudioRender;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mrunPlayback:Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mrunPlayback:Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

    const-string v2, "vomeAudio Playback"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    .line 162
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 163
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    :cond_2
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run+  mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop-  mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voAudioRender;->setStatus(Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)V

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 212
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 215
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    :goto_0
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v1, "stop  call audio track stop"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 228
    const-wide/16 v0, 0x2

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 229
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop, waiting for audio thread quit. sleep 2ms status is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 231
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 219
    :catch_1
    move-exception v0

    .line 221
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "AudioTracker stop exception , %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_1
    iput-boolean v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 235
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop+  mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public unInit()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopAudioDSPClockTimer()V

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->nativeUninit()V

    .line 654
    return-void
.end method
