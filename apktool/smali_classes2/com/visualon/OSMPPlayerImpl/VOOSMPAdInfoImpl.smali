.class Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;


# instance fields
.field private mAdPeriodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mIID3Infor:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

.field private mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

.field private mStreamUrl:Ljava/lang/String;

.field private openParam:Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mCount:I

    .line 33
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mAdPeriodList:Ljava/util/ArrayList;

    .line 35
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mStreamUrl:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->openParam:Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    .line 47
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mIID3Infor:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    .line 48
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mAdPeriodList:Ljava/util/ArrayList;

    .line 54
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mCount:I

    return v0
.end method

.method public getIID3Infor()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mIID3Infor:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    return-object v0
.end method

.method public getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->openParam:Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    return-object v0
.end method

.method public getPeriodList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mAdPeriodList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    return-object v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method parse(Landroid/os/Parcel;)Z
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mCount:I

    .line 75
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mCount:I

    if-ge v0, v1, :cond_0

    .line 77
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;-><init>()V

    .line 78
    invoke-virtual {v1, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->parse(Landroid/os/Parcel;)Z

    .line 79
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mAdPeriodList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setIID3Infor(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mIID3Infor:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    .line 70
    return-void
.end method

.method public setOpenParam(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->openParam:Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    .line 43
    return-void
.end method

.method public setPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 62
    return-void
.end method

.method public setStreamUrl(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->mStreamUrl:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
