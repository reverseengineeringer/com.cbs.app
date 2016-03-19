.class public Lcom/visualon/OSMPPlayer/VOOSMPRTSPPort;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAudioPort:I

.field private mVideoPort:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPRTSPPort;->mAudioPort:I

    .line 24
    iput p2, p0, Lcom/visualon/OSMPPlayer/VOOSMPRTSPPort;->mVideoPort:I

    .line 25
    return-void
.end method


# virtual methods
.method public getAudioConnectionPort()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPRTSPPort;->mAudioPort:I

    return v0
.end method

.method public getVideoConnectionPort()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPRTSPPort;->mVideoPort:I

    return v0
.end method
