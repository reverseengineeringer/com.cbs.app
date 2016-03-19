.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPPlaylistData;


# instance fields
.field private mData:[B

.field private mNewUrl:Ljava/lang/String;

.field private mPlaylistType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

.field private mReserved1:I

.field private mReserved2:I

.field private mRootUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIILcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mUrl:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mData:[B

    .line 27
    iput p5, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mReserved1:I

    .line 28
    iput p6, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mReserved2:I

    .line 29
    iput-object p7, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    .line 30
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mData:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mReserved1:I

    return v0
.end method

.method public getNewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    return-object v0
.end method

.method public getReserved2()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mReserved2:I

    return v0
.end method

.method public getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
