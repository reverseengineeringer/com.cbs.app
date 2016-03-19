.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;
.super Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;
.source "SourceFile"


# instance fields
.field private videoID:Ljava/lang/String;

.field private workingPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->videoID:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->workingPath:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdEngineType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setAdEngineType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;)V

    .line 37
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdvertisingID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setAdvertisingID(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->isDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setDebug(Z)V

    .line 39
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setFlag(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;)V

    .line 40
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getStrOnceUXURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setStrOnceUXURL(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V

    .line 42
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setAdContentInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;)V

    .line 43
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setDuration(J)V

    .line 44
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setAdStreamType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;)V

    .line 45
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getSettings()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setSettings(Ljava/util/HashMap;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getVideoID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->videoID:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->workingPath:Ljava/lang/String;

    return-object v0
.end method

.method public setVideoID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->videoID:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setWorkingPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->workingPath:Ljava/lang/String;

    .line 19
    return-void
.end method
