.class public Lcom/visualon/OSMPRender/voVideoRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPRender/voVideoRender$runPlayback;,
        Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;,
        Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voVideoRender"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mHeightBitmap:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPixelBytes:I

.field private mPlayer:Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;

.field private mSeeking:Z

.field private mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mThreadPlayback:Ljava/lang/Thread;

.field private mUseOptimisedBitmapRendering:Z

.field private mWidthBitmap:I

.field private mbNativeRender:Z

.field private mlJavaRenderFrames:J

.field mrunPlayback:Lcom/visualon/OSMPRender/voVideoRender$runPlayback;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPlayer:Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;

    .line 100
    iput-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    .line 101
    iput-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 102
    iput-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    .line 103
    iput-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 105
    iput v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mWidthBitmap:I

    .line 106
    iput v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mHeightBitmap:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPixelBytes:I

    .line 109
    sget-object v0, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voVideoRender;->setStatus(Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;)V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPaint:Landroid/graphics/Paint;

    .line 112
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 114
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 116
    iput-boolean v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mUseOptimisedBitmapRendering:Z

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mlJavaRenderFrames:J

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mbNativeRender:Z

    .line 120
    const-string v0, "@@@voVideoRender"

    const-string v1, "Construct!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method private declared-synchronized setStatus(Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;)V
    .locals 3

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    const-string v0, "@@@voVideoRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStatus - , status is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iput-object p1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    .line 454
    sget-object v0, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    if-ne p1, v0, :cond_1

    .line 455
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 456
    :cond_1
    const-string v0, "@@@voVideoRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStatus + , mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public init(II)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    const-string v2, "@@@voVideoRender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Init W X H "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 410
    :cond_1
    :goto_0
    return v0

    .line 353
    :cond_2
    iget v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mWidthBitmap:I

    if-ne v2, p1, :cond_3

    iget v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mHeightBitmap:I

    if-eq v2, p2, :cond_1

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 358
    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 359
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    .line 364
    :cond_4
    :try_start_0
    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mbNativeRender:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mUseOptimisedBitmapRendering:Z

    if-nez v2, :cond_6

    .line 366
    mul-int v2, p1, p2

    iget v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPixelBytes:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 368
    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_5

    .line 370
    const-string v0, "@@@voVideoRender"

    const-string v2, "Failed to allocate buffer"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 371
    goto :goto_0

    .line 373
    :cond_5
    const-string v2, "@@@voVideoRender"

    const-string v3, "mByteBuffer allocate is %d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    mul-int v6, p1, p2

    iget v7, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPixelBytes:I

    mul-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :goto_1
    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mbNativeRender:Z

    if-nez v2, :cond_9

    .line 382
    iget v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPixelBytes:I

    if-ne v2, v8, :cond_7

    .line 383
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    .line 387
    :goto_2
    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_8

    .line 389
    const-string v0, "@@@voVideoRender"

    const-string v2, "Failed to Create Bitmap buffer"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 390
    goto :goto_0

    .line 377
    :cond_6
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    .line 399
    const-string v2, "@@@voVideoRender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to Create Bitmap buffer on catch! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 400
    goto/16 :goto_0

    .line 385
    :cond_7
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 392
    :cond_8
    const-string v2, "@@@voVideoRender"

    const-string v3, "mBitmap createBitmap is %d X %d. mPixelBytes is %d "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPixelBytes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    :cond_9
    iput p1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mWidthBitmap:I

    .line 396
    iput p2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mHeightBitmap:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 403
    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mUseOptimisedBitmapRendering:Z

    if-eqz v2, :cond_a

    .line 405
    const-string v2, "@@@voVideoRender"

    const-string v3, "new bitmap created! "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPlayer:Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;

    const/16 v2, 0x3e

    iget-object v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3}, Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;->onSetVideoParam(ILjava/lang/Object;)J

    .line 409
    :cond_a
    iget-object v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPlayer:Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;

    invoke-interface {v1}, Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;->VideoSizeChanged()V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 148
    const-string v0, "@@@voVideoRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause  mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voVideoRender;->setStatus(Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;)V

    .line 151
    return-void
.end method

.method public playback()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 268
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mThreadPlayback:Ljava/lang/Thread;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 269
    const-string v0, "@@@voVideoRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playbackVideo started! Is native "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mbNativeRender:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    if-ne v0, v1, :cond_b

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    if-ne v0, v1, :cond_9

    .line 275
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    const-string v0, "@@@voVideoRender"

    const-string v1, "@@@Surface voVideoRender::playback surface is inValid"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 280
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPlayer:Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;

    invoke-interface {v0, v5}, Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;->GetVideoData([B)J

    move-result-wide v0

    .line 289
    :goto_1
    iget v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mWidthBitmap:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mHeightBitmap:I

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x3

    cmp-long v2, v2, v0

    if-nez v2, :cond_6

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPlayer:Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;

    invoke-interface {v0}, Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;->onGetVideoFormat()Lcom/visualon/OSMPUtils/voOSVideoFormat;

    move-result-object v0

    .line 293
    iget v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mWidthBitmap:I

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Width()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mHeightBitmap:I

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Height()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 295
    :cond_4
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Width()I

    move-result v1

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPRender/voVideoRender;->init(II)Z

    goto :goto_0

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 286
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPlayer:Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;->GetVideoData([B)J

    move-result-wide v0

    goto :goto_1

    .line 301
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 305
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mbNativeRender:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_8

    .line 307
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 308
    const-string v0, "@@@voVideoRender"

    const-string v1, "@@@Surface voVideoRender::playback to render() surface is inValid"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_7
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/voVideoRender;->render()J

    .line 311
    :cond_8
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSeeking:Z

    if-eqz v0, :cond_9

    .line 313
    iput-boolean v4, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSeeking:Z

    .line 314
    sget-object v0, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voVideoRender;->setStatus(Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;)V

    .line 326
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    if-ne v0, v1, :cond_0

    .line 329
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 331
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

    .line 334
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 317
    :cond_a
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSeeking:Z

    if-eqz v0, :cond_9

    .line 320
    const-wide/16 v0, 0x2

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 322
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 341
    :cond_b
    iput-object v5, p0, Lcom/visualon/OSMPRender/voVideoRender;->mThreadPlayback:Ljava/lang/Thread;

    .line 343
    const-string v0, "@@@voVideoRender"

    const-string v1, "playbackVideo stopped! mStatus is %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public render()J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 415
    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-wide v0

    .line 420
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 421
    const-string v2, "@@@voVideoRender"

    const-string v3, "@@@Surface voVideoRender::render surface is inValid ----------"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 423
    if-nez v2, :cond_3

    .line 425
    iget-object v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 447
    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 429
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mUseOptimisedBitmapRendering:Z

    if-nez v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 437
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mlJavaRenderFrames:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mlJavaRenderFrames:J

    .line 438
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 444
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    goto :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    const-string v0, "@@@voVideoRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run  mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSeeking:Z

    if-eqz v0, :cond_0

    .line 128
    iput-boolean v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSeeking:Z

    .line 133
    :cond_0
    sget-object v0, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voVideoRender;->setStatus(Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;)V

    .line 135
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mrunPlayback:Lcom/visualon/OSMPRender/voVideoRender$runPlayback;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Lcom/visualon/OSMPRender/voVideoRender$runPlayback;

    invoke-direct {v0, p0, p0}, Lcom/visualon/OSMPRender/voVideoRender$runPlayback;-><init>(Lcom/visualon/OSMPRender/voVideoRender;Lcom/visualon/OSMPRender/voVideoRender;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mrunPlayback:Lcom/visualon/OSMPRender/voVideoRender$runPlayback;

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mThreadPlayback:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mrunPlayback:Lcom/visualon/OSMPRender/voVideoRender$runPlayback;

    const-string v2, "vomeVideo Playback"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mThreadPlayback:Ljava/lang/Thread;

    .line 141
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mThreadPlayback:Ljava/lang/Thread;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 142
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mThreadPlayback:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    :cond_2
    return-void
.end method

.method public setColorType(I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 249
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    .line 251
    iput v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPixelBytes:I

    .line 261
    :goto_0
    return-void

    .line 253
    :cond_0
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 255
    iput v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPixelBytes:I

    goto :goto_0

    .line 259
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPixelBytes:I

    goto :goto_0
.end method

.method public setPos(J)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    if-ne v0, v1, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSeeking:Z

    .line 181
    sget-object v0, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voVideoRender;->setStatus(Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;)V

    .line 183
    :cond_0
    return-void
.end method

.method public setRenderType(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    if-nez p1, :cond_0

    .line 235
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mbNativeRender:Z

    .line 236
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mUseOptimisedBitmapRendering:Z

    .line 245
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 239
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mbNativeRender:Z

    .line 240
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mUseOptimisedBitmapRendering:Z

    goto :goto_0

    .line 243
    :cond_1
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mbNativeRender:Z

    goto :goto_0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    .line 188
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const-string v0, "@@@voVideoRender"

    const-string v1, "@@@Surface voVideoRender::setSurfaceHolder  surface is inValid --------"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 199
    const-string v0, "@@@voVideoRender"

    const-string v1, "setSurfaceHolder use RGBA8888!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v1, "vtab1008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPlayer:Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;->onSetVideoParam(ILjava/lang/Object;)J

    .line 209
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPixelBytes:I

    .line 226
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    const-string v0, "@@@voVideoRender"

    const-string v1, "@@@Surface  voVideoRender::setSurfaceHolder  surface is inValid  +++++++"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_1
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mPlayer:Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;->onSetVideoParam(ILjava/lang/Object;)J

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    const-string v0, "@@@voVideoRender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop  mStatus is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPRender/voVideoRender;->mStatus:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voVideoRender;->setStatus(Lcom/visualon/OSMPRender/voVideoRender$RenderStatus;)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mThreadPlayback:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 162
    const-wide/16 v0, 0x2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 167
    :cond_0
    iput v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mWidthBitmap:I

    .line 168
    iput v3, p0, Lcom/visualon/OSMPRender/voVideoRender;->mHeightBitmap:I

    .line 169
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voVideoRender;->mBitmap:Landroid/graphics/Bitmap;

    .line 174
    :cond_1
    return-void
.end method
