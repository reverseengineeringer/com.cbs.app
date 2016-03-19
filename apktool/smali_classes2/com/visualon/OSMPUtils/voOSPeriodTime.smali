.class public Lcom/visualon/OSMPUtils/voOSPeriodTime;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPeriodSequenceNumber:I

.field private mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPeriodSequenceNumber()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPeriodTime;->mPeriodSequenceNumber:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSPeriodTime;->mTimeStamp:J

    return-wide v0
.end method

.method public setPeriodSequenceNumber(I)V
    .locals 0

    .prologue
    .line 9
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSPeriodTime;->mPeriodSequenceNumber:I

    .line 10
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSPeriodTime;->mTimeStamp:J

    .line 15
    return-void
.end method
