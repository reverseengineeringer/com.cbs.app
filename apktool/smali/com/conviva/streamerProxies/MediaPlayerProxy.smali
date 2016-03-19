.class public Lcom/conviva/streamerProxies/MediaPlayerProxy;
.super Lcom/conviva/streamerProxies/NativeStreamerProxy;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field private _bufferingPercentage:I

.field private _onBufferingUpdateListenerOrig:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/conviva/streamerProxies/NativeStreamerProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_onBufferingUpdateListenerOrig:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iput v1, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_bufferingPercentage:I

    move-object v0, p1

    check-cast v0, Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    :try_start_0
    const-class v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_onErrorListenerOrig:Landroid/media/MediaPlayer$OnErrorListener;

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-class v5, Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iput-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_onBufferingUpdateListenerOrig:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_1
    const-class v5, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnInfoListener;

    iput-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_onInfoListenerOrig:Landroid/media/MediaPlayer$OnInfoListener;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public Cleanup()V
    .locals 2

    const-string v0, "MediaPlayerStreamerProxy.Cleanup()"

    invoke-virtual {p0, v0}, Lcom/conviva/streamerProxies/MediaPlayerProxy;->Log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_onBufferingUpdateListenerOrig:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_onBufferingUpdateListenerOrig:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-super {p0}, Lcom/conviva/streamerProxies/NativeStreamerProxy;->Cleanup()V

    return-void
.end method

.method public GetBufferLengthMs()I
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_duration:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_duration:I

    iget v2, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_bufferingPercentage:I

    mul-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sub-int v0, v1, v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "player is not in the proper state when GetBufferLengthMs() is called"

    invoke-virtual {p0, v1}, Lcom/conviva/streamerProxies/MediaPlayerProxy;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GetStreamerType()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaPlay"

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iput p2, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_bufferingPercentage:I

    iget-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_onBufferingUpdateListenerOrig:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/MediaPlayerProxy;->_onBufferingUpdateListenerOrig:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_0
    return-void
.end method
