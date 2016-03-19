.class public Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSRTSPStatus;


# instance fields
.field nTrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field uAverageJitter:I

.field uAverageLatency:I

.field uPacketDuplicated:I

.field uPacketLost:I

.field uPacketRecved:I

.field uPacketSent:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;IIIIII)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->nTrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 62
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uPacketRecved:I

    .line 63
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uPacketDuplicated:I

    .line 64
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uPacketLost:I

    .line 65
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uPacketSent:I

    .line 66
    iput p6, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uAverageJitter:I

    .line 67
    iput p7, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uAverageLatency:I

    .line 68
    return-void
.end method


# virtual methods
.method public getAverageJitter()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uAverageJitter:I

    return v0
.end method

.method public getAverageLatency()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uAverageLatency:I

    return v0
.end method

.method public getPacketDuplicated()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uPacketDuplicated:I

    return v0
.end method

.method public getPacketLost()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uPacketLost:I

    return v0
.end method

.method public getPacketRecved()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uPacketRecved:I

    return v0
.end method

.method public getPacketSent()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->uPacketSent:I

    return v0
.end method

.method public getTrackType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;->nTrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    return-object v0
.end method
