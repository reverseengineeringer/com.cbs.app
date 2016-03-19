.class public Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;
.super Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$3;,
        Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "@@@AdIMAEngine"


# instance fields
.field private mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/b/b;

.field private mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

.field private mAdsLoader:Lcom/google/ads/interactivemedia/v3/b/g;

.field private mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;

.field private mCompanionViewGroup:Landroid/view/ViewGroup;

.field private mCurrentAdTagUrl:Ljava/lang/String;

.field private mIsAdPlaying:Z

.field private mOldPodIndex:I

.field private mPodPos:I

.field private mReCBPodPos:I

.field private mRenderSettings:Lcom/google/ads/interactivemedia/v3/b/j;

.field private mSdkFactory:Lcom/google/ads/interactivemedia/v3/b/m;

.field private mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

.field private mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/b/b;

    .line 45
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/b/g;

    .line 51
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/b/m;

    .line 54
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    .line 57
    const-string v0, "http://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/8264/vaw-can/cbs_ipad_app&ciu_szs=300x60,300x250&impl=s&gdfp_req=1&env=vp&output=xml_vmap1&unviewed_position_start=1&url=%5breferrer_url%5d&description_url=%5bdescription_url%5d&correlator=%5btimestamp%5d&cmsid=2289&vid=qssidadrLASKzutuUrH_1V__myYE9vKo"

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mCurrentAdTagUrl:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mCompanionViewGroup:Landroid/view/ViewGroup;

    .line 64
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mIsAdPlaying:Z

    .line 66
    iput v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mPodPos:I

    .line 67
    iput v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I

    .line 68
    const/4 v0, -0x2

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mOldPodIndex:I

    .line 69
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/b/j;

    .line 71
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 72
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/h;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;

    return-object v0
.end method

.method static synthetic access$002(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;Lcom/google/ads/interactivemedia/v3/b/h;)Lcom/google/ads/interactivemedia/v3/b/h;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;

    return-object p1
.end method

.method static synthetic access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->resumeContent()V

    return-void
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/g;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/b/g;

    return-object v0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayerImpl/AdVOEngine;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->pauseContent()V

    return-void
.end method

.method static synthetic access$402(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mIsAdPlaying:Z

    return p1
.end method

.method static synthetic access$500(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I

    return v0
.end method

.method static synthetic access$608(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I

    return v0
.end method

.method static synthetic access$700(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    return-object v0
.end method

.method static synthetic access$900(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/b/j;

    return-object v0
.end method

.method private pauseContent()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->pauseContentForAdPlayback()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mIsAdPlaying:Z

    .line 185
    const-string v0, "@@@AdIMAEngine"

    const-string v1, "AdIMAEngine:pauseContent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method private requestAndPlayAds()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mCurrentAdTagUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mCurrentAdTagUrl:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->resumeContent()V

    .line 242
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/h;->b()V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/b/g;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/g;->a()V

    .line 221
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/b/m;->b()Lcom/google/ads/interactivemedia/v3/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/b/b;

    .line 222
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/b/b;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/b/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b;->a(Lcom/google/ads/interactivemedia/v3/b/a/d;)V

    .line 223
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/b/b;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->getAdUiContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b;->a(Landroid/view/ViewGroup;)V

    .line 235
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/b/m;->d()Lcom/google/ads/interactivemedia/v3/b/k;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mCurrentAdTagUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/k;->a(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/b/b;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/k;->a(Lcom/google/ads/interactivemedia/v3/b/b;)V

    .line 238
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/b/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/k;->a(Lcom/google/ads/interactivemedia/v3/b/a/b;)V

    .line 241
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/b/g;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/k;)V

    goto :goto_0
.end method

.method private restorePosition()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->restorePosition()V

    .line 266
    return-void
.end method

.method private resumeContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->resumeContentAfterAdPlayback()V

    .line 190
    iput-boolean v3, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mIsAdPlaying:Z

    .line 193
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    const v1, 0x1230add7

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setParam(ILjava/lang/Object;)I

    .line 194
    const-string v0, "@@@AdIMAEngine"

    const-string v1, "AdIMAEngine:resumeContent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method private savePosition()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->savePosition()V

    .line 258
    return-void
.end method

.method private setAdTagUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mCurrentAdTagUrl:Ljava/lang/String;

    .line 202
    return-void
.end method

.method private setContentVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->setContentVideoPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected addAdBreaks()V
    .locals 12

    .prologue
    .line 377
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/h;->d()Lcom/google/ads/interactivemedia/v3/b/a;

    move-result-object v0

    .line 378
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->k()Lcom/google/ads/interactivemedia/v3/b/f;

    move-result-object v1

    .line 379
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->a()I

    move-result v2

    .line 380
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->b()I

    move-result v3

    .line 383
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->e()I

    move-result v4

    .line 385
    sget-boolean v5, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 386
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 389
    if-nez v4, :cond_2

    .line 390
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    sget-object v7, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_PRE:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    iput-object v7, v6, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPosType:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    .line 396
    :goto_0
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iput v4, v6, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPodIdx:I

    .line 397
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iput v3, v6, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mAdPos:I

    .line 398
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iput v2, v6, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mCount:I

    .line 400
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 403
    const/4 v6, 0x3

    new-array v6, v6, [J

    .line 404
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->f()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_4

    .line 405
    const/4 v7, 0x0

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/b/f;->f()D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    aput-wide v8, v6, v7

    .line 409
    :goto_1
    const/4 v1, 0x0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    .line 410
    const/4 v1, 0x1

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    .line 412
    const/4 v1, 0x1

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-wide v8, v8, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mCurAdDuration:J

    aput-wide v8, v6, v7

    aput-wide v8, v6, v1

    .line 413
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->j()D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    .line 414
    const-string v7, "@@@AdIMAEngine"

    const-string v8, "from_tAd duration is %d, from_player duration = %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-wide v10, v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mCurAdDuration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v7, v8, v9}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 391
    :cond_2
    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 392
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    sget-object v7, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_POS:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    iput-object v7, v6, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPosType:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    goto :goto_0

    .line 394
    :cond_3
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    sget-object v7, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_MID:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    iput-object v7, v6, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPosType:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    goto/16 :goto_0

    .line 407
    :cond_4
    const/4 v1, 0x0

    const-wide/32 v8, 0x7ffffffe

    aput-wide v8, v6, v1

    goto :goto_1

    .line 418
    :cond_5
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mOldPodIndex:I

    if-eq v0, v4, :cond_9

    .line 420
    iput v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mOldPodIndex:I

    .line 421
    const/4 v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mPodPos:I

    .line 422
    const/4 v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I

    .line 423
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsFirst:Z

    .line 430
    :goto_2
    if-ne v3, v2, :cond_a

    .line 431
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsEnd:Z

    .line 447
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsCbNormal:Z

    .line 449
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v5, v1, v3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setPlaybackAdInfo([J[Ljava/lang/String;II)I

    .line 450
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->updatePlaybackInfo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 452
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    if-nez v0, :cond_6

    .line 453
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getAdTracking()Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 455
    :cond_6
    const-string v0, "@@@AdIMAEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mPodInfo = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", nPos = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mPodPos = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mPodPos:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mReCBPodPos = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mAdPodInfo.mIsCbNormal = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v4, v4, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsCbNormal:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mPodInfo.mIsFirst = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v4, v4, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsFirst:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mPodInfo.mIsEnd = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-boolean v4, v4, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsEnd:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mPodInfo.mCount = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget v4, v4, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mPodInfo.mPosType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget-object v4, v4, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPosType:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mPodInfo.mPodIdx = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    iget v4, v4, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mPodIdx:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mTracking = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    if-eqz v0, :cond_7

    .line 468
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->updateAdPodInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 469
    :cond_7
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    invoke-interface {v0, v3, v2}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_update_adpod_info(II)V

    .line 470
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    if-eqz v0, :cond_8

    .line 472
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    const/4 v1, 0x0

    aget-wide v2, v6, v1

    long-to-int v1, v2

    iput v1, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mInsertPos:I

    .line 473
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mPodPos:I

    iput v1, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mPosOfPod:I

    .line 474
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mIsUsedEnd:Z

    .line 479
    :cond_8
    return-void

    .line 426
    :cond_9
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mPodPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mPodPos:I

    .line 427
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I

    .line 428
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsFirst:Z

    goto/16 :goto_2

    .line 433
    :cond_a
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsEnd:Z

    goto/16 :goto_3
.end method

.method public close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public getAdsOffset(I)J
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->getAdsOffset(I)J

    move-result-wide v0

    .line 372
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 276
    invoke-super {p0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->init(Ljava/lang/String;Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 278
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/n;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/n;-><init>()V

    .line 280
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/b/m;->a()Lcom/google/ads/interactivemedia/v3/b/m;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/b/m;

    .line 281
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/b/m;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/n;)Lcom/google/ads/interactivemedia/v3/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/b/g;

    .line 285
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/b/m;->c()Lcom/google/ads/interactivemedia/v3/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/b/j;

    .line 286
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/b/j;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/b/j;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/j;->a(Ljava/util/Set;)V

    .line 288
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/b/j;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "video/mp4"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/j;->a(Ljava/util/List;)V

    .line 291
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mOldPodIndex:I

    .line 293
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/b/g;

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$1;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/d$a;)V

    .line 309
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/b/g;

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$1;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/g;->a(Lcom/google/ads/interactivemedia/v3/b/g$a;)V

    .line 312
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->init(Lcom/visualon/OSMPPlayer/VOCommonPlayer;Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)V

    .line 315
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    .line 317
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$2;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$2;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->setOnContentCompleteListener(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;)V

    .line 327
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public open()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method protected print_debug()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 484
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/h;->c()Ljava/util/List;

    move-result-object v2

    move v0, v1

    .line 486
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 487
    const-string v3, "@@@AdIMAEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  position:   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/h;->d()Lcom/google/ads/interactivemedia/v3/b/a;

    move-result-object v0

    .line 494
    const-string v2, "@@@AdIMAEngine"

    const-string v3, "Here are the Ad informations"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    const-string v2, "@@@AdIMAEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " AdId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AdSystem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ContentType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TraffickingParameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Height :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->j()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    const-string v2, "@@@AdIMAEngine"

    const-string v3, "Ad information end"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    if-eqz v0, :cond_1

    .line 501
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/a;->k()Lcom/google/ads/interactivemedia/v3/b/f;

    move-result-object v0

    .line 504
    const-string v2, "@@@AdIMAEngine"

    const-string v3, "AdPod information begin:"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    const-string v2, "@@@AdIMAEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Count :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Maxduration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->d()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  TimeOffset :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->f()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsBumper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/f;->c()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    :cond_1
    return-void
.end method

.method public setPlayingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->setAdTagUrl(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p2, p3}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->setContentVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->requestAndPlayAds()V

    .line 366
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public uninit()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
