.class Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPRTSPStatistics;


# instance fields
.field mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSRTSPStatus;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    .line 23
    return-void
.end method


# virtual methods
.method public getAverageJitter()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getAverageJitter()I

    move-result v0

    return v0
.end method

.method public getAverageLatency()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getAverageLatency()I

    move-result v0

    return v0
.end method

.method public getPacketDuplicated()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getPacketDuplicated()I

    move-result v0

    return v0
.end method

.method public getPacketLost()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getPacketLost()I

    move-result v0

    return v0
.end method

.method public getPacketReceived()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getPacketRecved()I

    move-result v0

    return v0
.end method

.method public getPacketSent()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getPacketSent()I

    move-result v0

    return v0
.end method
