.class Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCount:I

.field private mPid:I

.field private mUrl:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mPid:I

    .line 23
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mCount:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mUrl:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mCount:I

    return v0
.end method

.method public getPeriodUrlList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mPid:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mPid:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mCount:I

    .line 30
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mCount:I

    if-lez v0, :cond_0

    .line 32
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mUrl:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mCount:I

    if-ge v0, v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventInfo;->mUrl:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
