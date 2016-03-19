.class Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;


# instance fields
.field private isEpisode:I

.field private isTV:Z

.field private mCaptionURL:Ljava/lang/String;

.field private mEndTime:J

.field private mId:I

.field private mPeriodID:Ljava/lang/String;

.field private mPeriodTitle:Ljava/lang/String;

.field private mPeriodType:I

.field private mPeriodURL:Ljava/lang/String;

.field private mSeriesTitle:Ljava/lang/String;

.field private mStartTime:J

.field private strChannel:Ljava/lang/String;

.field private strEpisodeTitle:Ljava/lang/String;

.field private streamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

.field private ullSkipoffset:J

.field private videoGuid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->ullSkipoffset:J

    .line 53
    return-void
.end method


# virtual methods
.method public getCaptionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mCaptionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodID:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mEndTime:J

    return-wide v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mId:I

    return v0
.end method

.method public getPeriodID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodID:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodType:I

    return v0
.end method

.method public getPeriodURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mSeriesTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipoffset()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->ullSkipoffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mStartTime:J

    return-wide v0
.end method

.method public getStrChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getStrEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strEpisodeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->streamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    return-object v0
.end method

.method public getVideoGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->videoGuid:Ljava/lang/String;

    return-object v0
.end method

.method public isEpisode()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isEpisode:I

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTV()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isTV:Z

    return v0
.end method

.method parse(Landroid/os/Parcel;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mId:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodURL:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mStartTime:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mEndTime:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mCaptionURL:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodTitle:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodID:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->streamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isEpisode:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mSeriesTitle:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strEpisodeTitle:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isTV:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strChannel:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->videoGuid:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->ullSkipoffset:J

    .line 77
    const-string v0, "adsCallBack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VOOSMPADSPeriod mId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mPeriodType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mPeriodURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mStartTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mEndTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mEndTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mCaptionURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mCaptionURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPeriodTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mContentID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSeriesTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mSeriesTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " strEpisodeTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strEpisodeTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  isTV = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isTV:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " strChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strChannel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " videoGuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->videoGuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return v2

    :cond_0
    move v0, v2

    .line 71
    goto/16 :goto_0
.end method

.method public setVideoGuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->videoGuid:Ljava/lang/String;

    .line 91
    return-void
.end method
