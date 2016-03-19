.class public Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSTrackInfo;


# instance fields
.field private AudioInfo:Lcom/visualon/OSMPUtils/voOSAudioInfo;

.field private Bitrate:I

.field private ChunkCounts:I

.field private Codec:I

.field private Duration:J

.field private FourCC:[C

.field private HeadData:[C

.field private HeadSize:I

.field private SelectInfo:I

.field private SubtitleInfo:Lcom/visualon/OSMPUtils/voOSSubtitleInfo;

.field private TrackID:I

.field private TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field private VideoInfo:Lcom/visualon/OSMPUtils/voOSVideoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(II[CLcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;IJLcom/visualon/OSMPUtils/voOSAudioInfo;Lcom/visualon/OSMPUtils/voOSVideoInfo;III[C)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackID:I

    .line 56
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->SelectInfo:I

    .line 57
    iput-object p3, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->FourCC:[C

    .line 58
    iput-object p4, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 59
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->Codec:I

    .line 60
    iput-wide p6, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->Duration:J

    .line 61
    iput-object p8, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->AudioInfo:Lcom/visualon/OSMPUtils/voOSAudioInfo;

    .line 62
    iput-object p9, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->VideoInfo:Lcom/visualon/OSMPUtils/voOSVideoInfo;

    .line 63
    iput p10, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->ChunkCounts:I

    .line 64
    iput p11, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->Bitrate:I

    .line 65
    iput p12, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->HeadSize:I

    .line 66
    iput-object p13, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->HeadData:[C

    .line 67
    return-void
.end method


# virtual methods
.method public getAudioInfo()Lcom/visualon/OSMPUtils/voOSAudioInfo;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->AudioInfo:Lcom/visualon/OSMPUtils/voOSAudioInfo;

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->Bitrate:I

    return v0
.end method

.method public getChunkCounts()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->ChunkCounts:I

    return v0
.end method

.method public getCodec()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->Codec:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->Duration:J

    return-wide v0
.end method

.method public getFourCC()[C
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->FourCC:[C

    return-object v0
.end method

.method public getHeadData()[C
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->HeadData:[C

    return-object v0
.end method

.method public getHeadSize()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->HeadSize:I

    return v0
.end method

.method public getSelectInfo()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->SelectInfo:I

    return v0
.end method

.method public getSubtitleInfo()Lcom/visualon/OSMPUtils/voOSSubtitleInfo;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->SubtitleInfo:Lcom/visualon/OSMPUtils/voOSSubtitleInfo;

    return-object v0
.end method

.method public getTrackID()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackID:I

    return v0
.end method

.method public getTrackType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    return-object v0
.end method

.method public getVideoInfo()Lcom/visualon/OSMPUtils/voOSVideoInfo;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->VideoInfo:Lcom/visualon/OSMPUtils/voOSVideoInfo;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 5

    .prologue
    const/16 v0, 0x8

    .line 81
    new-array v0, v0, [B

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackID:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->SelectInfo:I

    .line 85
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, "utf-8"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->FourCC:[C
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->Codec:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->Duration:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->ChunkCounts:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->Bitrate:I

    .line 104
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_AUDIO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_AUDIO_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_3

    .line 107
    :cond_0
    new-instance v0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->AudioInfo:Lcom/visualon/OSMPUtils/voOSAudioInfo;

    .line 108
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->AudioInfo:Lcom/visualon/OSMPUtils/voOSAudioInfo;

    invoke-interface {v0, p1}, Lcom/visualon/OSMPUtils/voOSAudioInfo;->parse(Landroid/os/Parcel;)Z

    .line 122
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->HeadSize:I

    .line 123
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->HeadSize:I

    if-lez v0, :cond_2

    .line 125
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->HeadSize:I

    new-array v0, v0, [B

    .line 127
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    :goto_3
    :try_start_3
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->HeadSize:I

    const-string v4, "utf-8"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->HeadData:[C
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 139
    :cond_2
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 88
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_VIDEO_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_5

    .line 112
    :cond_4
    new-instance v0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->VideoInfo:Lcom/visualon/OSMPUtils/voOSVideoInfo;

    .line 113
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->VideoInfo:Lcom/visualon/OSMPUtils/voOSVideoInfo;

    invoke-interface {v0, p1}, Lcom/visualon/OSMPUtils/voOSVideoInfo;->parse(Landroid/os/Parcel;)Z

    goto :goto_2

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SUBTITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->TrackType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SUBTITLE_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_6
    new-instance v0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;-><init>()V

    .line 118
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->parse(Landroid/os/Parcel;)Z

    .line 119
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;->SubtitleInfo:Lcom/visualon/OSMPUtils/voOSSubtitleInfo;

    goto :goto_2

    .line 130
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 136
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4
.end method
