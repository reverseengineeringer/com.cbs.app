.class Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPTrackingTimePassedInfo;


# instance fields
.field private mPassedTime:J

.field private mPeriodID:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassedTime()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;->mPassedTime:J

    return-wide v0
.end method

.method public getPeriodID()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;->mPeriodID:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;->mPeriodID:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingTimePassedInfoImpl;->mPassedTime:J

    .line 30
    const/4 v0, 0x1

    return v0
.end method
