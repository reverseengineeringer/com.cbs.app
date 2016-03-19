.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mElapsedTime:J

.field private mPercentage:I

.field private mPeriodID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedTime()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->mElapsedTime:J

    return-wide v0
.end method

.method public getPercentage()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->mPercentage:I

    return v0
.end method

.method public getPeriodID()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->mPeriodID:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->mPercentage:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->mPeriodID:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingPercentage;->mElapsedTime:J

    .line 32
    const/4 v0, 0x1

    return v0
.end method
