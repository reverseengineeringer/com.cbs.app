.class public Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDRMLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

.field private mDecoderType:I

.field private mDuration:J

.field private mFileSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide v2, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mFileSize:J

    .line 22
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDecoderType:I

    .line 23
    iput-wide v2, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDuration:J

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDRMLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    .line 27
    return-void
.end method


# virtual methods
.method public getDRMLicenseRetriever()Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDRMLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    return-object v0
.end method

.method public getDecoderType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDecoderType:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDuration:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mFileSize:J

    return-wide v0
.end method

.method public setDRMLicenseRetriever(Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDRMLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    .line 123
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 49
    move v1, v0

    move v2, v0

    .line 52
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 54
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v3

    .line 55
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 56
    or-int/2addr v2, v3

    .line 58
    :cond_0
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v4

    if-lt v3, v4, :cond_1

    const v4, 0x7fffffff

    if-ge v3, v4, :cond_1

    .line 60
    or-int/2addr v1, v3

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    and-int v0, p1, v2

    .line 64
    and-int/2addr v1, p1

    .line 66
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    .line 68
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDecoderType:I

    .line 69
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 72
    :goto_1
    return-object v0

    :cond_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_1
.end method

.method public setDuration(J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDuration:J

    .line 112
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setFileSize(J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mFileSize:J

    .line 95
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
