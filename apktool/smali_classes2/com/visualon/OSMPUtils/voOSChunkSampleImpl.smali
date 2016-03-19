.class public Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSChunkSample;


# instance fields
.field mChunkStartTime:J

.field mFlag:I

.field mPeriodFirstChunkStartTime:J

.field mPeriodSequenceNumber:I

.field mSampleTime:J

.field mSampleTimePointer:J


# direct methods
.method public constructor <init>(IJIJJJ)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mFlag:I

    .line 30
    iput-wide p2, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mChunkStartTime:J

    .line 31
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mPeriodSequenceNumber:I

    .line 32
    iput-wide p5, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mPeriodFirstChunkStartTime:J

    .line 33
    iput-wide p7, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mSampleTime:J

    .line 34
    iput-wide p9, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mSampleTimePointer:J

    .line 35
    return-void
.end method


# virtual methods
.method public getChunkStartTime()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mChunkStartTime:J

    return-wide v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mFlag:I

    return v0
.end method

.method public getPeriodFirstChunkStartTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mPeriodFirstChunkStartTime:J

    return-wide v0
.end method

.method public getPeriodSequenceNumber()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mPeriodSequenceNumber:I

    return v0
.end method

.method public getSampleTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mSampleTime:J

    return-wide v0
.end method

.method public getSampleTimePointer()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;->mSampleTimePointer:J

    return-wide v0
.end method
