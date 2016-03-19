.class public Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSStreamInfo;


# instance fields
.field Bitrate:I

.field SelInfo:I

.field StreamID:I

.field TrackCount:I

.field private TrackInfo:[Lcom/visualon/OSMPUtils/voOSTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(IIII[Lcom/visualon/OSMPUtils/voOSTrackInfo;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->StreamID:I

    .line 50
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->SelInfo:I

    .line 51
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->Bitrate:I

    .line 52
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackCount:I

    .line 53
    iput-object p5, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackInfo:[Lcom/visualon/OSMPUtils/voOSTrackInfo;

    .line 54
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->Bitrate:I

    return v0
.end method

.method public getSelInfo()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->SelInfo:I

    return v0
.end method

.method public getStreamID()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->StreamID:I

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackCount:I

    return v0
.end method

.method public getTrackInfo()[Lcom/visualon/OSMPUtils/voOSTrackInfo;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackInfo:[Lcom/visualon/OSMPUtils/voOSTrackInfo;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->StreamID:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->SelInfo:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->Bitrate:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackCount:I

    .line 65
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackCount:I

    if-lez v0, :cond_0

    .line 67
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackCount:I

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSTrackInfo;

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackInfo:[Lcom/visualon/OSMPUtils/voOSTrackInfo;

    .line 68
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackCount:I

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackInfo:[Lcom/visualon/OSMPUtils/voOSTrackInfo;

    new-instance v2, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;-><init>()V

    aput-object v2, v1, v0

    .line 71
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;->TrackInfo:[Lcom/visualon/OSMPUtils/voOSTrackInfo;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/visualon/OSMPUtils/voOSTrackInfo;->parse(Landroid/os/Parcel;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
