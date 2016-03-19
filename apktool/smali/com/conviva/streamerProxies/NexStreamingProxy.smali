.class public Lcom/conviva/streamerProxies/NexStreamingProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/conviva/ConvivaStreamerProxy;
.implements Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CONVIVA"


# instance fields
.field private _bitrate:I

.field private _iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

.field private _notifier:Lcom/conviva/monitor/IMonitorNotifier;

.field private _playheadSec:I

.field private _streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

.field private _utils:Lcom/conviva/utils/PlatformUtils;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    iput-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    iput-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    iput-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    const/4 v1, -0x1

    iput v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_bitrate:I

    iput v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_playheadSec:I

    check-cast p1, Lcom/nexstreaming/nexplayerengine/NexPlayer;

    iput-object p1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    iget-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    if-eqz v1, :cond_2

    :try_start_0
    const-class v1, Lcom/nexstreaming/nexplayerengine/NexPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    iput-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CONVIVA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create NexPlayerProxy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/conviva/utils/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    invoke-virtual {v0, p0}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->setListener(Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;)V

    :cond_2
    invoke-static {}, Lcom/conviva/utils/PlatformUtils;->getInstance()Lcom/conviva/utils/PlatformUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    return-void
.end method

.method private updateBitrate()V
    .locals 13

    const/4 v12, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    invoke-virtual {v0}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getContentInfo()Lcom/nexstreaming/nexplayerengine/NexContentInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nexstreaming/nexplayerengine/NexContentInformation;->mArrStreamInformation:[Lcom/nexstreaming/nexplayerengine/NexStreamInformation;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, v0, Lcom/nexstreaming/nexplayerengine/NexContentInformation;->mArrStreamInformation:[Lcom/nexstreaming/nexplayerengine/NexStreamInformation;

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    iget v1, v6, Lcom/nexstreaming/nexplayerengine/NexStreamInformation;->mCurrTrackID:I

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    iget-object v7, v6, Lcom/nexstreaming/nexplayerengine/NexStreamInformation;->mArrTrackInformation:[Lcom/nexstreaming/nexplayerengine/NexTrackInformation;

    array-length v8, v7

    move v1, v2

    :goto_2
    if-ge v1, v8, :cond_3

    aget-object v9, v7, v1

    iget v10, v6, Lcom/nexstreaming/nexplayerengine/NexStreamInformation;->mCurrTrackID:I

    iget v11, v9, Lcom/nexstreaming/nexplayerengine/NexTrackInformation;->mTrackID:I

    if-ne v10, v11, :cond_2

    iget v9, v9, Lcom/nexstreaming/nexplayerengine/NexTrackInformation;->mBandWidth:I

    add-int/2addr v0, v9

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_4
    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_bitrate:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v1, v0, v12, v12}, Lcom/conviva/monitor/IMonitorNotifier;->SetStream(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePlayerState()V
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    invoke-virtual {v0}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getState()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    invoke-virtual {v0}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    invoke-virtual {v0}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_0
.end method


# virtual methods
.method public Cleanup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    iget-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->setListener(Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;)V

    iput-object v2, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    iput-object v2, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    iput-object v2, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    iput-object v2, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    return-void
.end method

.method public GetBufferLengthMs()I
    .locals 2

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getContentInfoInt(I)I

    move-result v0

    return v0
.end method

.method public GetCapabilities()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public GetDroppedFrames()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public GetIsLive()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public GetMinBufferLengthMs()I
    .locals 2

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    sget-object v1, Lcom/nexstreaming/nexplayerengine/NexPlayer$NexProperty;->RE_BUFFERING_DURATION:Lcom/nexstreaming/nexplayerengine/NexPlayer$NexProperty;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getProperty(Lcom/nexstreaming/nexplayerengine/NexPlayer$NexProperty;)I

    move-result v0

    return v0
.end method

.method public GetPlayheadTimeMs()I
    .locals 1

    iget v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_playheadSec:I

    return v0
.end method

.method public GetRenderedFrameRate()D
    .locals 2

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getContentInfoInt(I)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public GetServerAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public GetStartingBufferLengthMs()I
    .locals 2

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    sget-object v1, Lcom/nexstreaming/nexplayerengine/NexPlayer$NexProperty;->INITIAL_BUFFERING_DURATION:Lcom/nexstreaming/nexplayerengine/NexPlayer$NexProperty;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getProperty(Lcom/nexstreaming/nexplayerengine/NexPlayer$NexProperty;)I

    move-result v0

    return v0
.end method

.method public GetStreamerType()Ljava/lang/String;
    .locals 1

    const-string v0, "NexPlayer"

    return-object v0
.end method

.method public GetStreamerVersion()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getVersion(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_streamer:Lcom/nexstreaming/nexplayerengine/NexPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getVersion(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v0, p1}, Lcom/conviva/monitor/IMonitorNotifier;->Log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    invoke-virtual {v0, p1}, Lcom/conviva/utils/PlatformUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAsyncCmdComplete(Lcom/nexstreaming/nexplayerengine/NexPlayer;IIII)V
    .locals 6

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onAsyncCmdComplete(Lcom/nexstreaming/nexplayerengine/NexPlayer;IIII)V

    :cond_0
    return-void

    :pswitch_1
    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$NexErrorCode;->fromIntegerValue(I)Lcom/nexstreaming/nexplayerengine/NexPlayer$NexErrorCode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/conviva/streamerProxies/NexStreamingProxy;->onError(Lcom/nexstreaming/nexplayerengine/NexPlayer;Lcom/nexstreaming/nexplayerengine/NexPlayer$NexErrorCode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getContentInfoInt(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexplayerengine/NexPlayer;->getContentInfoInt(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAsyncCmdComplete(): OPEN duration (ms) = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", frameRate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/conviva/streamerProxies/NexStreamingProxy;->Log(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-lez v0, :cond_2

    const-string v3, "duration"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-lez v1, :cond_3

    const-string v0, "framerate"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v0, v2}, Lcom/conviva/monitor/IMonitorNotifier;->OnMetadata(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    const-string v0, "onAsyncCmdComplete(): STOPPED"

    invoke-virtual {p0, v0}, Lcom/conviva/streamerProxies/NexStreamingProxy;->Log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    const-string v0, "onAsyncCmdComplete(): PAUSED"

    invoke-virtual {p0, v0}, Lcom/conviva/streamerProxies/NexStreamingProxy;->Log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    const-string v0, "onAsyncCmdComplete(): PLAYING"

    invoke-virtual {p0, v0}, Lcom/conviva/streamerProxies/NexStreamingProxy;->Log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAudioRenderCreate(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onAudioRenderCreate(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V

    :cond_0
    return-void
.end method

.method public onAudioRenderDelete(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onAudioRenderDelete(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onAudioRenderPrepared(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onAudioRenderPrepared(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onBuffering(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onBuffering(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V

    :cond_0
    return-void
.end method

.method public onBufferingBegin(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onBufferingBegin(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onBufferingEnd(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    invoke-direct {p0}, Lcom/conviva/streamerProxies/NexStreamingProxy;->updatePlayerState()V

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onBufferingEnd(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onDataInactivityTimeOut(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onDataInactivityTimeOut(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onDownloaderAsyncCmdComplete(Lcom/nexstreaming/nexplayerengine/NexPlayer;III)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onDownloaderAsyncCmdComplete(Lcom/nexstreaming/nexplayerengine/NexPlayer;III)V

    :cond_0
    return-void
.end method

.method public onDownloaderError(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onDownloaderError(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V

    :cond_0
    return-void
.end method

.method public onDownloaderEventBegin(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onDownloaderEventBegin(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V

    :cond_0
    return-void
.end method

.method public onDownloaderEventComplete(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onDownloaderEventComplete(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V

    :cond_0
    return-void
.end method

.method public onDownloaderEventProgress(Lcom/nexstreaming/nexplayerengine/NexPlayer;IIJJ)V
    .locals 8

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onDownloaderEventProgress(Lcom/nexstreaming/nexplayerengine/NexPlayer;IIJJ)V

    :cond_0
    return-void
.end method

.method public onDownloaderEventState(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onDownloaderEventState(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V

    :cond_0
    return-void
.end method

.method public onEndOfContent(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onEndOfContent(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/nexstreaming/nexplayerengine/NexPlayer;Lcom/nexstreaming/nexplayerengine/NexPlayer$NexErrorCode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proxy: onError (errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/conviva/streamerProxies/NexStreamingProxy;->Log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$NexErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/conviva/StreamerError;->makeUnscopedError(Ljava/lang/String;I)Lcom/conviva/StreamerError;

    move-result-object v0

    iget-object v1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v1, v0}, Lcom/conviva/monitor/IMonitorNotifier;->OnError(Lcom/conviva/StreamerError;)V

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onError(Lcom/nexstreaming/nexplayerengine/NexPlayer;Lcom/nexstreaming/nexplayerengine/NexPlayer$NexErrorCode;)V

    :cond_0
    return-void
.end method

.method public onHTTPRequest(Lcom/nexstreaming/nexplayerengine/NexPlayer;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onHTTPRequest(Lcom/nexstreaming/nexplayerengine/NexPlayer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onHTTPResponse(Lcom/nexstreaming/nexplayerengine/NexPlayer;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onHTTPResponse(Lcom/nexstreaming/nexplayerengine/NexPlayer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onModifyHttpRequest(Lcom/nexstreaming/nexplayerengine/NexPlayer;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onModifyHttpRequest(Lcom/nexstreaming/nexplayerengine/NexPlayer;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPauseSupervisionTimeOut(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onPauseSupervisionTimeOut(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onPictureTimingInfo(Lcom/nexstreaming/nexplayerengine/NexPlayer;[Lcom/nexstreaming/nexplayerengine/NexPictureTimingInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onPictureTimingInfo(Lcom/nexstreaming/nexplayerengine/NexPlayer;[Lcom/nexstreaming/nexplayerengine/NexPictureTimingInfo;)V

    :cond_0
    return-void
.end method

.method public onProgramTime(Lcom/nexstreaming/nexplayerengine/NexPlayer;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onProgramTime(Lcom/nexstreaming/nexplayerengine/NexPlayer;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRTSPCommandTimeOut(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onRTSPCommandTimeOut(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onRecording(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onRecording(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V

    :cond_0
    return-void
.end method

.method public onRecordingEnd(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onRecordingEnd(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V

    :cond_0
    return-void
.end method

.method public onRecordingErr(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onRecordingErr(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V

    :cond_0
    return-void
.end method

.method public onSignalStatusChanged(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onSignalStatusChanged(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V

    :cond_0
    return-void
.end method

.method public onStartAudioTask(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onStartAudioTask(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onStartVideoTask(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onStartVideoTask(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onStateChanged(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V

    :cond_0
    return-void
.end method

.method public onStatusReport(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V
    .locals 1

    invoke-direct {p0}, Lcom/conviva/streamerProxies/NexStreamingProxy;->updateBitrate()V

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onStatusReport(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V

    :cond_0
    return-void
.end method

.method public onTextRenderInit(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onTextRenderInit(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V

    :cond_0
    return-void
.end method

.method public onTextRenderRender(Lcom/nexstreaming/nexplayerengine/NexPlayer;ILcom/nexstreaming/nexplayerengine/NexClosedCaption;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onTextRenderRender(Lcom/nexstreaming/nexplayerengine/NexPlayer;ILcom/nexstreaming/nexplayerengine/NexClosedCaption;)V

    :cond_0
    return-void
.end method

.method public onTime(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V
    .locals 1

    iput p2, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_playheadSec:I

    invoke-direct {p0}, Lcom/conviva/streamerProxies/NexStreamingProxy;->updatePlayerState()V

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onTime(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V

    :cond_0
    return-void
.end method

.method public onTimedMetaRenderRender(Lcom/nexstreaming/nexplayerengine/NexPlayer;Lcom/nexstreaming/nexplayerengine/NexID3TagInformation;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onTimedMetaRenderRender(Lcom/nexstreaming/nexplayerengine/NexPlayer;Lcom/nexstreaming/nexplayerengine/NexID3TagInformation;)V

    :cond_0
    return-void
.end method

.method public onTimeshift(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onTimeshift(Lcom/nexstreaming/nexplayerengine/NexPlayer;II)V

    :cond_0
    return-void
.end method

.method public onTimeshiftErr(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onTimeshiftErr(Lcom/nexstreaming/nexplayerengine/NexPlayer;I)V

    :cond_0
    return-void
.end method

.method public onVideoRenderCapture(Lcom/nexstreaming/nexplayerengine/NexPlayer;IIILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onVideoRenderCapture(Lcom/nexstreaming/nexplayerengine/NexPlayer;IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onVideoRenderCreate(Lcom/nexstreaming/nexplayerengine/NexPlayer;IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onVideoRenderCreate(Lcom/nexstreaming/nexplayerengine/NexPlayer;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onVideoRenderDelete(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onVideoRenderDelete(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onVideoRenderPrepared(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onVideoRenderPrepared(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public onVideoRenderRender(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_iListenerOrig:Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexplayerengine/NexPlayer$IListener;->onVideoRenderRender(Lcom/nexstreaming/nexplayerengine/NexPlayer;)V

    :cond_0
    return-void
.end method

.method public setMonitoringNotifier(Lcom/conviva/monitor/IMonitorNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/conviva/streamerProxies/NexStreamingProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    return-void
.end method
