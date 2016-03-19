.class Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPSEIClockTimestamp;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mClockTimestampFlag:I

.field private mCntDroppedFlag:I

.field private mCountingType:I

.field private mCtType:I

.field private mDiscontinuityFlag:I

.field private mFrames:I

.field private mFullTimestampFlag:I

.field private mHoursFlag:I

.field private mHoursValue:I

.field private mMinutesFlag:I

.field private mMinutesValue:I

.field private mNuitFieldBasedFlag:I

.field private mSecondsFlag:I

.field private mSecondsValue:I

.field private mTimeOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "@@@VOOSMPSEIClockTimestampImpl"

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getClockTimestampFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mClockTimestampFlag:I

    .line 31
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getCtType()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCtType:I

    .line 32
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getNuitFieldBasedFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mNuitFieldBasedFlag:I

    .line 33
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getCountingType()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCountingType:I

    .line 34
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getFullTimestampFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFullTimestampFlag:I

    .line 35
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getDiscontinuityFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mDiscontinuityFlag:I

    .line 36
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getCntDroppedFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCntDroppedFlag:I

    .line 37
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getFrames()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFrames:I

    .line 38
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getSecondsValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsValue:I

    .line 39
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getMinutesValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesValue:I

    .line 40
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getHoursValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursValue:I

    .line 41
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getSecondsFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsFlag:I

    .line 42
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getMinutesFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesFlag:I

    .line 43
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getHoursFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursFlag:I

    .line 44
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getTimeOffset()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mTimeOffset:I

    .line 46
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mClockTimestampFlag is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mClockTimestampFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCtType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCtType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNuitFieldBasedFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mNuitFieldBasedFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCountingType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCountingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFullTimestampFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFullTimestampFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\nmDiscontinuityFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mDiscontinuityFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCntDroppedFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCntDroppedFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFrames is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSecondsValue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMinutesValue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\nmHoursValue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSecondsFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMinutesFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHoursFlag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeOffset is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mTimeOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getClockTimestampFlag()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mClockTimestampFlag:I

    return v0
.end method

.method public getCntDroppedFlag()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCntDroppedFlag:I

    return v0
.end method

.method public getCountingType()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCountingType:I

    return v0
.end method

.method public getCtType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCtType:I

    return v0
.end method

.method public getDiscontinuityFlag()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mDiscontinuityFlag:I

    return v0
.end method

.method public getFrames()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFrames:I

    return v0
.end method

.method public getFullTimestampFlag()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFullTimestampFlag:I

    return v0
.end method

.method public getHoursFlag()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursFlag:I

    return v0
.end method

.method public getHoursValue()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursValue:I

    return v0
.end method

.method public getMinutesFlag()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesFlag:I

    return v0
.end method

.method public getMinutesValue()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesValue:I

    return v0
.end method

.method public getNuitFieldBasedFlag()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mNuitFieldBasedFlag:I

    return v0
.end method

.method public getSecondsFlag()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsFlag:I

    return v0
.end method

.method public getSecondsValue()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsValue:I

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mTimeOffset:I

    return v0
.end method
