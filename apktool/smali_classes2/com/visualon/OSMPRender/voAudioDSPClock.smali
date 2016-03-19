.class public Lcom/visualon/OSMPRender/voAudioDSPClock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_AUDIO_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_AUDIO_TIMESTAMP_SAMPLE_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_DIFF:I = 0xc8

.field private static final MAX_PLAYHEADPOS_OFFSET_CNT:I = 0xa

.field private static final MIN_AUDIO_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MIN_PLAYHEADPOS_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "@@@voAudioDSPClock"


# instance fields
.field private mAC3Bitrate:I

.field private mAC3PauseOffset:J

.field private mAfterFlushTask:Ljava/util/TimerTask;

.field private final mAudioTimestamp:Landroid/media/AudioTimestamp;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSize:I

.field private mChannelCnt:I

.field private mDSPTime:J

.field private mFramePositionWrapCnt:J

.field private mGetLatencyMethod:Ljava/lang/reflect/Method;

.field private mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;

.field private mHeadPositionOffsetCnt:I

.field private mHeadPositionOffsets:[J

.field private mHeadWrapCnt:J

.field private mIsAC3:Z

.field private mIsUseTimer:Z

.field private mLastFramePosition:J

.field private mLastGetHeadPositionSampleTimeUs:J

.field private mLastGetTimestampSampleTimeUs:J

.field private mLastHeadPosition:J

.field private mLastRawFramePosition:J

.field private mLastRawHeadPosition:J

.field private mLatencyTimeUs:J

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNextHeadPositionOffsetIndex:I

.field private mSampleRate:I

.field private mSmoothedHeadPositionOffsetUs:J

.field private mSystemResumeTimeUs:J

.field private mTimeStampAvailable:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerDuration:I

.field private mTimerTask:Ljava/util/TimerTask;

.field private preTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    .line 18
    const v0, 0xbb80

    iput v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mChannelCnt:I

    .line 40
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;

    .line 41
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;

    .line 51
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTimestamp:Landroid/media/AudioTimestamp;

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    .line 56
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerTask:Ljava/util/TimerTask;

    .line 57
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAfterFlushTask:Ljava/util/TimerTask;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    .line 59
    const/16 v0, 0x23

    iput v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerDuration:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z

    .line 202
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->preTime:J

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 133
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsets:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    const-class v0, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;

    .line 137
    const-class v0, Landroid/media/AudioTrack;

    const-string v1, "getPlaybackHeadPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    return-void

    .line 140
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPRender/voAudioDSPClock;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->setDSPTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPRender/voAudioDSPClock;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->waitForPlay()V

    return-void
.end method

.method private bytesToFrames(J)J
    .locals 5

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    if-eqz v0, :cond_1

    .line 312
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAC3Bitrate:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 316
    :goto_0
    return-wide v0

    .line 312
    :cond_0
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAC3Bitrate:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 316
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mChannelCnt:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    div-long v0, p1, v0

    goto :goto_0
.end method

.method private convertDurationUsToFrames(J)J
    .locals 5

    .prologue
    .line 494
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private convertFramesToDurationUs(J)J
    .locals 5

    .prologue
    .line 498
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getAC3Bitrate(II)I
    .locals 4

    .prologue
    .line 322
    mul-int/lit8 v0, p0, 0x8

    mul-int/2addr v0, p1

    const v1, 0x177000

    div-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getAudioTimestampFramePosition()J
    .locals 2

    .prologue
    .line 522
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastFramePosition:J

    return-wide v0
.end method

.method private getAudioTimestampNanoTime()J
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method private getHeadPos()J
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 389
    const-wide/16 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 396
    const-wide v4, 0xffffffffL

    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    .line 406
    :goto_0
    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v2, v3, :cond_1

    .line 407
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 408
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastHeadPosition:J

    .line 420
    :cond_0
    :goto_1
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawHeadPosition:J

    .line 421
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAC3PauseOffset:J

    add-long/2addr v0, v2

    .line 424
    :cond_1
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastHeadPosition:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    .line 425
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadWrapCnt:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadWrapCnt:J

    .line 431
    :cond_2
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastHeadPosition:J

    .line 433
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadWrapCnt:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 435
    return-wide v0

    .line 400
    :catch_0
    move-exception v0

    iput-object v7, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;

    :cond_3
    move-wide v0, v2

    goto :goto_0

    .line 411
    :cond_4
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawHeadPosition:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 412
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastHeadPosition:J

    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAC3PauseOffset:J

    goto :goto_1
.end method

.method private getHeadPosUs()J
    .locals 4

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getHeadPos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getTimestamp()Z
    .locals 8

    .prologue
    .line 502
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    .line 504
    const-string v1, "@@@voAudioDSPClock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@@getTimestamp: (nanoTime/100)-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v4, v3, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   framePosition-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v4, v3, Landroid/media/AudioTimestamp;->framePosition:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    if-eqz v0, :cond_1

    .line 506
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v2, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 507
    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawFramePosition:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 508
    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mFramePositionWrapCnt:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mFramePositionWrapCnt:J

    .line 510
    :cond_0
    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawFramePosition:J

    .line 511
    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mFramePositionWrapCnt:J

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastFramePosition:J

    .line 514
    :cond_1
    return v0
.end method

.method private performTimestampAvailableSanityCheck(JJ)V
    .locals 11

    .prologue
    const-wide/32 v8, 0x4c4b40

    const/4 v6, 0x0

    .line 481
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getAudioTimestampNanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 482
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getAudioTimestampFramePosition()J

    move-result-wide v2

    .line 483
    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSystemResumeTimeUs:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 484
    iput-boolean v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimeStampAvailable:Z

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 486
    iput-boolean v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimeStampAvailable:Z

    goto :goto_0

    .line 487
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->convertFramesToDurationUs(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 489
    iput-boolean v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimeStampAvailable:Z

    goto :goto_0
.end method

.method private reScheduleAudioTimer(IZ)V
    .locals 6

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 66
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 68
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    .line 74
    new-instance v0, Lcom/visualon/OSMPRender/voAudioDSPClock$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPRender/voAudioDSPClock$1;-><init>(Lcom/visualon/OSMPRender/voAudioDSPClock;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    return-void

    .line 83
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private reScheduleFlushTimer(Z)V
    .locals 6

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 95
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 97
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    .line 100
    :cond_0
    if-nez p1, :cond_1

    .line 101
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    .line 102
    new-instance v0, Lcom/visualon/OSMPRender/voAudioDSPClock$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPRender/voAudioDSPClock$2;-><init>(Lcom/visualon/OSMPRender/voAudioDSPClock;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAfterFlushTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAfterFlushTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    return-void

    .line 111
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 372
    const-string v0, "@@@voAudioDSPClock"

    const-string v1, "XXX reset"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastHeadPosition:J

    .line 374
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawHeadPosition:J

    .line 375
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadWrapCnt:J

    .line 376
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mFramePositionWrapCnt:J

    .line 377
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastFramePosition:J

    .line 378
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSystemResumeTimeUs:J

    .line 379
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    .line 380
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawFramePosition:J

    .line 381
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAC3PauseOffset:J

    .line 382
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    .line 383
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->resetWhenPause()V

    .line 384
    return-void
.end method

.method private setDSPTime()V
    .locals 14

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 210
    const-wide/16 v0, 0x0

    .line 211
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_1

    .line 212
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->updatePlaybackPositionParams()V

    .line 216
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 217
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimeStampAvailable:Z

    if-eqz v0, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getAudioTimestampNanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    sub-long v4, v2, v0

    .line 220
    invoke-direct {p0, v4, v5}, Lcom/visualon/OSMPRender/voAudioDSPClock;->convertDurationUsToFrames(J)J

    move-result-wide v6

    .line 221
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getAudioTimestampFramePosition()J

    move-result-wide v0

    add-long v8, v0, v6

    .line 223
    invoke-direct {p0, v8, v9}, Lcom/visualon/OSMPRender/voAudioDSPClock;->convertFramesToDurationUs(J)J

    move-result-wide v0

    .line 225
    iget-wide v10, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->preTime:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    iget-wide v12, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->preTime:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0xc8

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 226
    const-string v10, "@@@voAudioDSPClock"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "timestamp: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v12, 0x3e8

    div-long v12, v0, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   | presentationDiff:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  |  systemClockUs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | getTimestampNanoTime/1000:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getAudioTimestampNanoTime()J

    move-result-wide v4

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | framesDiff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  | currentFramePosition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  | getTimestampFramePosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getAudioTimestampFramePosition()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v10, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_1
    :goto_0
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->preTime:J

    .line 264
    const-string v2, "@@@voAudioDSPClock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "XXX timestamp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 269
    return-void

    .line 231
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    if-nez v0, :cond_4

    .line 232
    const-string v0, "@@@voAudioDSPClock"

    const-string v1, "XXX TS2"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getHeadPosUs()J

    move-result-wide v0

    .line 235
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->preTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->preTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 256
    :cond_3
    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    if-nez v2, :cond_1

    .line 257
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 243
    :cond_4
    const-string v0, "@@@voAudioDSPClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "XXX TS3: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    add-long/2addr v0, v2

    .line 247
    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->preTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->preTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 248
    const-string v4, "@@@voAudioDSPClock"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "timestamp: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | systemClockUs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  | mSmoothedPlayheadOffsetUs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mPlayheadOffsetCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mLatencyUs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    if-ge v2, v3, :cond_3

    .line 252
    const-string v3, "@@@voAudioDSPClock"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mPlayheadOffsets["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsets:[J

    aget-wide v6, v5, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private updatePlaybackPositionParams()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    .line 443
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getHeadPosUs()J

    move-result-wide v2

    .line 444
    cmp-long v1, v2, v10

    if-nez v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 448
    const-string v1, "@@@voAudioDSPClock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "XXX systemClockUs: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mLastPlayheadSampleTimeUs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetHeadPositionSampleTimeUs:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetHeadPositionSampleTimeUs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v1, v6, v8

    if-ltz v1, :cond_4

    .line 450
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsets:[J

    iget v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mNextHeadPositionOffsetIndex:I

    sub-long v8, v2, v4

    aput-wide v8, v1, v6

    .line 452
    iget v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mNextHeadPositionOffsetIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mNextHeadPositionOffsetIndex:I

    .line 454
    iget v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    const/16 v6, 0xa

    if-ge v1, v6, :cond_2

    .line 455
    iget v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    .line 457
    :cond_2
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetHeadPositionSampleTimeUs:J

    .line 458
    iput-wide v10, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    .line 459
    :goto_1
    iget v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    if-ge v0, v1, :cond_3

    .line 460
    iget-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsets:[J

    aget-wide v8, v1, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 462
    :cond_3
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    if-lez v0, :cond_6

    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    iget v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    int-to-long v6, v6

    div-long/2addr v0, v6

    :goto_2
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    .line 467
    :cond_4
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetTimestampSampleTimeUs:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getTimestamp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimeStampAvailable:Z

    .line 470
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimeStampAvailable:Z

    if-eqz v0, :cond_5

    .line 471
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->performTimestampAvailableSanityCheck(JJ)V

    .line 474
    :cond_5
    invoke-virtual {p0, v10, v11}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getLatency(J)J

    .line 475
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 462
    :cond_6
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    goto :goto_2
.end method

.method private waitForPlay()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleFlushTimer(Z)V

    .line 124
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerDuration:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleAudioTimer(IZ)V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    goto :goto_0
.end method


# virtual methods
.method public flush()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 190
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleAudioTimer(IZ)V

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    .line 192
    const-string v0, "@@@voAudioDSPClock"

    const-string v1, "XXX flush"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleFlushTimer(Z)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    return-void

    .line 196
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z

    if-eqz v1, :cond_1

    .line 197
    invoke-direct {p0, v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleFlushTimer(Z)V

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getDSPTimeStamp()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    return-wide v0
.end method

.method public getLatency(J)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 278
    mul-long v0, p1, v4

    .line 306
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-wide v0

    .line 280
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 282
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mBufferSize:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->bytesToFrames(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->convertFramesToDurationUs(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    .line 293
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    .line 294
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 295
    const-string v0, "@@@voAudioDSPClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio latency too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    :cond_1
    :goto_1
    :try_start_3
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 306
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public playAudioTrack()V
    .locals 4

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 177
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSystemResumeTimeUs:J

    .line 179
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public reconfig(IZII)Lcom/visualon/OSMPRender/voAudioDSPClock;
    .locals 3

    .prologue
    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 339
    iput p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    .line 340
    iput p4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mChannelCnt:I

    .line 341
    const-string v0, "@@@voAudioDSPClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channel count is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mChannelCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iput-boolean p2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    .line 343
    iput p3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mBufferSize:I

    .line 344
    invoke-static {p3, p1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getAC3Bitrate(II)I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAC3Bitrate:I

    .line 345
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reset()V

    .line 346
    const-string v0, "@@@voAudioDSPClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsAC3=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resetWhenPause()V
    .locals 2

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 359
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mNextHeadPositionOffsetIndex:I

    .line 362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetHeadPositionSampleTimeUs:J

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimeStampAvailable:Z

    .line 364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetTimestampSampleTimeUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;)Lcom/visualon/OSMPRender/voAudioDSPClock;
    .locals 2

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 328
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public startAudioDSPClockTimer()V
    .locals 2

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 153
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerDuration:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleAudioTimer(IZ)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopAudioDSPClockTimer()V
    .locals 2

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleAudioTimer(IZ)V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
