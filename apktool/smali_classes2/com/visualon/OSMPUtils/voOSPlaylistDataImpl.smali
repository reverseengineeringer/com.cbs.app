.class public Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSPlaylistData;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSPlaylistDataImpl.java"


# instance fields
.field private mData:[B

.field private mNewUrl:Ljava/lang/String;

.field private mPlaylistType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

.field private mReserved1:I

.field private mReserved2:I

.field private mRootUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getPlaylistType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    return-object v0
.end method

.method public getReserved1()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mReserved1:I

    return v0
.end method

.method public getReserved2()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mReserved2:I

    return v0
.end method

.method public getSZNewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSZRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSZUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mUrl:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    if-lez v0, :cond_1

    .line 71
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    .line 72
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mReserved1:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mReserved2:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voOSPlaylistDataImpl [mRootUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReserved1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mReserved1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReserved2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mReserved2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlaylistType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
