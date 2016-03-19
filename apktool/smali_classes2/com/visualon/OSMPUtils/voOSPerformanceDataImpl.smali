.class public Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSPerformanceData;


# instance fields
.field mBitRate:I

.field mCodecType:I

.field mFPS:I

.field mProfileLevel:I

.field mVideoHeight:I

.field mVideoWidth:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mCodecType:I

    .line 87
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mBitRate:I

    .line 88
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mVideoWidth:I

    .line 89
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mVideoHeight:I

    .line 90
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mProfileLevel:I

    .line 91
    iput p6, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mFPS:I

    .line 92
    return-void
.end method


# virtual methods
.method public BitRate()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mBitRate:I

    return v0
.end method

.method public CodecType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mCodecType:I

    return v0
.end method

.method public FPS()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mFPS:I

    return v0
.end method

.method public ProfileLevel()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mProfileLevel:I

    return v0
.end method

.method public VideoHeight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mVideoHeight:I

    return v0
.end method

.method public VideoWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;->mVideoWidth:I

    return v0
.end method
