.class public Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCodecTime:I

.field private mJitter:I

.field private mLastTime:I

.field private mRenderTime:I

.field private mSourceTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mLastTime:I

    .line 31
    iput v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mSourceTime:I

    .line 32
    iput v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mCodecTime:I

    .line 33
    iput v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mRenderTime:I

    .line 34
    iput v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mJitter:I

    .line 35
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mLastTime:I

    .line 52
    iput p2, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mSourceTime:I

    .line 53
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mCodecTime:I

    .line 54
    iput p4, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mRenderTime:I

    .line 55
    iput p5, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mJitter:I

    .line 56
    return-void
.end method


# virtual methods
.method public getCodecTime()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mCodecTime:I

    return v0
.end method

.method public getJitterTime()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mJitter:I

    return v0
.end method

.method public getLastTime()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mLastTime:I

    return v0
.end method

.method public getRenderTime()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mRenderTime:I

    return v0
.end method

.method public getSourceTime()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mSourceTime:I

    return v0
.end method

.method public setCodecTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 95
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mCodecTime:I

    .line 96
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setJitterTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 121
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mJitter:I

    .line 122
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setLastTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 68
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mLastTime:I

    .line 69
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setRenderTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 108
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mRenderTime:I

    .line 109
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setSourceTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 82
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->mSourceTime:I

    .line 83
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
