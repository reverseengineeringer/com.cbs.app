.class public Lcom/conviva/streamerProxies/VisualOnImplProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/conviva/ConvivaStreamerProxy;
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conviva/streamerProxies/VisualOnImplProxy$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CONVIVA"


# instance fields
.field private _durationMs:I

.field private _iListenerOrig:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

.field private _inListener:Z

.field private _notifier:Lcom/conviva/monitor/IMonitorNotifier;

.field private _streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

.field protected _utils:Lcom/conviva/utils/PlatformUtils;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_inListener:Z

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    const/4 v1, -0x1

    iput v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_durationMs:I

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_iListenerOrig:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-static {}, Lcom/conviva/utils/PlatformUtils;->getInstance()Lcom/conviva/utils/PlatformUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    check-cast p1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    iput-object p1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-eqz v1, :cond_1

    :try_start_0
    const-class v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    iput-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_iListenerOrig:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CONVIVA"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/conviva/utils/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public Cleanup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_iListenerOrig:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_iListenerOrig:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    return-void
.end method

.method public GetBufferLengthMs()I
    .locals 1

    const/4 v0, -0x1

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

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isLiveStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public GetMinBufferLengthMs()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public GetPlayheadTimeMs()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPosition()J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v2

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public GetRenderedFrameRate()D
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public GetServerAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public GetStartingBufferLengthMs()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public GetStreamerType()Ljava/lang/String;
    .locals 1

    const-string v0, "VisualOn"

    return-object v0
.end method

.method public GetStreamerVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;->VO_OSMP_MODULE_TYPE_SDK:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getVersion(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v0, p1}, Lcom/conviva/monitor/IMonitorNotifier;->Log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    invoke-virtual {v0, p1}, Lcom/conviva/utils/PlatformUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_inListener:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/conviva/streamerProxies/VisualOnImplProxy$1;->$SwitchMap$com$visualon$OSMPPlayer$VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_iListenerOrig:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_inListener:Z

    :try_start_0
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_iListenerOrig:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-boolean v5, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_inListener:Z

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/conviva/StreamerError;->makeUnscopedError(Ljava/lang/String;I)Lcom/conviva/StreamerError;

    move-result-object v1

    iget-object v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v2, v1}, Lcom/conviva/monitor/IMonitorNotifier;->OnError(Lcom/conviva/StreamerError;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getDuration()J

    move-result-wide v2

    long-to-int v1, v2

    iget v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_durationMs:I

    if-eq v1, v2, :cond_3

    iput v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_durationMs:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "duration"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v1, v2}, Lcom/conviva/monitor/IMonitorNotifier;->OnMetadata(Ljava/util/Map;)V

    :cond_3
    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_BITRATE_CHANGE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    div-int/lit16 v2, p3, 0x3e8

    invoke-interface {v1, v2, v0, v0}, Lcom/conviva/monitor/IMonitorNotifier;->SetStream(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v1, v4}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_streamer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_inListener:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onVOSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_inListener:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_iListenerOrig:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_inListener:Z

    :try_start_0
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_iListenerOrig:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-boolean v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_inListener:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_inListener:Z

    throw v0
.end method

.method public setMonitoringNotifier(Lcom/conviva/monitor/IMonitorNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/conviva/streamerProxies/VisualOnImplProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    return-void
.end method
