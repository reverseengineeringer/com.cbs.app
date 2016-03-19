.class Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;
.super Lcom/adobe/b/c/a/c/h;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final _player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[VideoHeartbeatSample]::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/adobe/b/c/a/c/h;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    .line 25
    return-void
.end method


# virtual methods
.method public getAdBreakInfo()Lcom/adobe/b/c/a/c/a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getAdBreakInfo()Lcom/adobe/b/c/a/c/a;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdInfo()Lcom/adobe/b/c/a/c/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getAdInfo()Lcom/adobe/b/c/a/c/b;

    move-result-object v0

    goto :goto_0
.end method

.method public getChapterInfo()Lcom/adobe/b/c/a/c/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getChapterInfo()Lcom/adobe/b/c/a/c/c;

    move-result-object v0

    goto :goto_0
.end method

.method public getQoSInfo()Lcom/adobe/b/c/a/c/d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getQosInfo()Lcom/adobe/b/c/a/c/d;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoInfo()Lcom/adobe/b/c/a/c/e;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPOmnitureHBTracking;->getVideoInfo()Lcom/adobe/b/c/a/c/e;

    move-result-object v0

    goto :goto_0
.end method
