.class public Lcom/conviva/streamerProxies/VisualOnProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/conviva/ConvivaStreamerProxy;
.implements Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CONVIVA"


# instance fields
.field private _durationMs:I

.field private _iListenerOrig:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

.field private _notifier:Lcom/conviva/monitor/IMonitorNotifier;

.field private _streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

.field protected _utils:Lcom/conviva/utils/PlatformUtils;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_durationMs:I

    iput-object v1, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    iput-object v1, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    iput-object v1, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_iListenerOrig:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    invoke-static {}, Lcom/conviva/utils/PlatformUtils;->getInstance()Lcom/conviva/utils/PlatformUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    check-cast p1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iput-object p1, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_1

    :try_start_0
    const-class v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    iput-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_iListenerOrig:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setEventListener(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;)V

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

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_iListenerOrig:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setEventListener(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;)V

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_iListenerOrig:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iput-object v2, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

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
    .locals 2

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSVideoPerformance;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->RenderDropNum()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public GetIsLive()I
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetDuration()I

    move-result v0

    if-nez v0, :cond_0

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

    const/4 v2, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v1

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/16 v3, 0xc

    invoke-interface {v0, v3}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public GetRenderedFrameRate()D
    .locals 4

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSVideoPerformance;

    if-eqz v0, :cond_0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->AverageRenderTime()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v0, p1}, Lcom/conviva/monitor/IMonitorNotifier;->Log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_utils:Lcom/conviva/utils/PlatformUtils;

    invoke-virtual {v0, p1}, Lcom/conviva/utils/PlatformUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(IIILjava/lang/Object;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_iListenerOrig:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_iListenerOrig:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;->onEvent(IIILjava/lang/Object;)I

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/conviva/StreamerError;->makeUnscopedError(Ljava/lang/String;I)Lcom/conviva/StreamerError;

    move-result-object v0

    iget-object v1, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v1, v0}, Lcom/conviva/monitor/IMonitorNotifier;->OnError(Lcom/conviva/StreamerError;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetDuration()I

    move-result v0

    iget v1, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_durationMs:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_durationMs:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "duration"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->OnMetadata(Ljava/util/Map;)V

    :cond_1
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    div-int/lit16 v1, p3, 0x3e8

    invoke-interface {v0, v1, v4, v4}, Lcom/conviva/monitor/IMonitorNotifier;->SetStream(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v0, v3}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_streamer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    invoke-interface {v0, v2}, Lcom/conviva/monitor/IMonitorNotifier;->SetPlayingState(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dfffffd -> :sswitch_0
        -0x7dfffffc -> :sswitch_0
        -0x7dfffffa -> :sswitch_0
        -0x7dfffff9 -> :sswitch_0
        -0x7dfffff8 -> :sswitch_0
        -0x7dfffff7 -> :sswitch_0
        -0x7dfffff6 -> :sswitch_0
        -0x7dfffff3 -> :sswitch_0
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x200000c -> :sswitch_0
        0x2000030 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMonitoringNotifier(Lcom/conviva/monitor/IMonitorNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/conviva/streamerProxies/VisualOnProxy;->_notifier:Lcom/conviva/monitor/IMonitorNotifier;

    return-void
.end method
