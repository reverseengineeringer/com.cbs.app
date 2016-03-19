.class Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPSEIPicTiming;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCpbDpbDelaysPresentFlag:I

.field private mCpbRemovalDelay:I

.field private mDpbOutputDelay:I

.field private mNumClockTs:I

.field private mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

.field private mPictureStructure:I

.field private mPictureStructurePresentFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "@@@VOOSMPSEIPicTimingImpl"

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSSEIPicTiming;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    .line 32
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getCpbDpbDelaysPresentFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    .line 33
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getCpbRemovalDelay()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbRemovalDelay:I

    .line 34
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getDpbOutputDelay()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mDpbOutputDelay:I

    .line 35
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getPictureStructurePresentFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    .line 36
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getPictureStructure()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructure:I

    .line 37
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getNumClockTs()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mNumClockTs:I

    .line 39
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SEI INFO VOOSMPSEIPicTiming CpbDpbDelaysPresentFlag is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CpbRemovalDelay is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbRemovalDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DpbOutputDelay is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mDpbOutputDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPictureStructurePresentFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PictureStructure is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructure:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NumClockTs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mNumClockTs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->TAG:Ljava/lang/String;

    const-string v1, "First VOOSMPSEIClockTimestamp"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getClock()[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;-><init>(Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;)V

    .line 45
    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->TAG:Ljava/lang/String;

    const-string v2, "Second VOOSMPSEIClockTimestamp"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getClock()[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-direct {v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;-><init>(Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;)V

    .line 47
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->TAG:Ljava/lang/String;

    const-string v3, "Third VOOSMPSEIClockTimestamp"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getClock()[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-direct {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;-><init>(Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;)V

    .line 49
    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->TAG:Ljava/lang/String;

    const-string v4, "SEI INFO End"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    iput-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    .line 51
    return-void
.end method


# virtual methods
.method public getClock()[Lcom/visualon/OSMPPlayer/VOOSMPSEIClockTimestamp;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    return-object v0
.end method

.method public getCpbDpbDelaysPresentFlag()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    return v0
.end method

.method public getCpbRemovalDelay()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbRemovalDelay:I

    return v0
.end method

.method public getDpbOutputDelay()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mDpbOutputDelay:I

    return v0
.end method

.method public getNumClockTs()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mNumClockTs:I

    return v0
.end method

.method public getPictureStructure()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructure:I

    return v0
.end method

.method public getPictureStructurePresentFlag()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    return v0
.end method
