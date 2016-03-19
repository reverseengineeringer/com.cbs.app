.class public Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;


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
.method public constructor <init>(IIIIIIIIIIIIIII)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mClockTimestampFlag:I

    .line 93
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mCtType:I

    .line 94
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mNuitFieldBasedFlag:I

    .line 95
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mCountingType:I

    .line 96
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mFullTimestampFlag:I

    .line 97
    iput p6, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mDiscontinuityFlag:I

    .line 98
    iput p7, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mCntDroppedFlag:I

    .line 99
    iput p8, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mFrames:I

    .line 100
    iput p9, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mSecondsValue:I

    .line 101
    iput p10, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mMinutesValue:I

    .line 102
    iput p11, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mHoursValue:I

    .line 103
    iput p12, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mSecondsFlag:I

    .line 104
    iput p13, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mMinutesFlag:I

    .line 105
    iput p14, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mHoursFlag:I

    .line 106
    iput p15, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mTimeOffset:I

    .line 107
    return-void
.end method


# virtual methods
.method public getClockTimestampFlag()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mClockTimestampFlag:I

    return v0
.end method

.method public getCntDroppedFlag()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mCntDroppedFlag:I

    return v0
.end method

.method public getCountingType()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mCountingType:I

    return v0
.end method

.method public getCtType()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mCtType:I

    return v0
.end method

.method public getDiscontinuityFlag()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mDiscontinuityFlag:I

    return v0
.end method

.method public getFrames()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mFrames:I

    return v0
.end method

.method public getFullTimestampFlag()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mFullTimestampFlag:I

    return v0
.end method

.method public getHoursFlag()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mHoursFlag:I

    return v0
.end method

.method public getHoursValue()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mHoursValue:I

    return v0
.end method

.method public getMinutesFlag()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mMinutesFlag:I

    return v0
.end method

.method public getMinutesValue()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mMinutesValue:I

    return v0
.end method

.method public getNuitFieldBasedFlag()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mNuitFieldBasedFlag:I

    return v0
.end method

.method public getSecondsFlag()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mSecondsFlag:I

    return v0
.end method

.method public getSecondsValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mSecondsValue:I

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;->mTimeOffset:I

    return v0
.end method
