.class public Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field BufferSize:I

.field Channels:I

.field SampleBits:I

.field SampleRate:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleRate:I

    .line 18
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->Channels:I

    .line 19
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleBits:I

    .line 20
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->BufferSize:I

    .line 21
    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->BufferSize:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->Channels:I

    return v0
.end method

.method public getSampleBits()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleBits:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleRate:I

    return v0
.end method

.method public setBufferSize(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->BufferSize:I

    .line 46
    return-void
.end method

.method public setChannels(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->Channels:I

    .line 34
    return-void
.end method

.method public setSampleBits(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleBits:I

    .line 40
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleRate:I

    .line 28
    return-void
.end method
