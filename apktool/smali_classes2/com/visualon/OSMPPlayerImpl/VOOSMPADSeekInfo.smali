.class Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdsSequnceNumber:I

.field private mContentSeekPos:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdsSequnceNumber()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->mAdsSequnceNumber:I

    return v0
.end method

.method public getContentSeekPos()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->mContentSeekPos:J

    return-wide v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->mAdsSequnceNumber:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->mContentSeekPos:J

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public setContentSeekPos(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->mContentSeekPos:J

    .line 42
    return-void
.end method
