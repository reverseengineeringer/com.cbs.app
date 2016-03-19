.class public Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;,
        Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOIMAPlayerWithAdPlayback"


# instance fields
.field private final mAdCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

.field private mAdUiContainer:Landroid/view/ViewGroup;

.field private mAdsOffset:J

.field private mContentOffset:J

.field private mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/b/a/b;

.field private mContentVideoUrl:Ljava/lang/String;

.field public mCurAdDuration:J

.field private mIsAdDisplayed:Z

.field private mIsContentComplete:Z

.field private mIsSendWholeEnd:Z

.field private mOnContentCompleteListener:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;

.field private mSavedContentVideoPosition:J

.field private mSubtitleUrl:Ljava/lang/String;

.field private mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/b/a/d;

.field private mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

.field protected mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

.field public mbUsedContendEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    .line 33
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdUiContainer:Landroid/view/ViewGroup;

    .line 36
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    .line 39
    const-string v0, "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentVideoUrl:Ljava/lang/String;

    .line 43
    iput-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    .line 46
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mOnContentCompleteListener:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;

    .line 49
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/b/a/d;

    .line 52
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/b/a/b;

    .line 54
    iput-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdsOffset:J

    .line 57
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsContentComplete:Z

    .line 60
    iput-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentOffset:J

    .line 62
    iput-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mCurAdDuration:J

    .line 66
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mbUsedContendEnd:Z

    .line 67
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsSendWholeEnd:Z

    .line 68
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    .line 76
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mOnContentCompleteListener:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsContentComplete:Z

    return v0
.end method

.method static synthetic access$402(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsContentComplete:Z

    return p1
.end method

.method static synthetic access$500(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsSendWholeEnd:Z

    return v0
.end method


# virtual methods
.method public getAdUiContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdUiContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getAdsOffset(I)J
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getTimeOffset(IZIIZ)I

    move-result v0

    .line 319
    :goto_0
    int-to-long v0, v0

    return-wide v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    iget v3, v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mInsertPos:I

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    iget v4, v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mPosOfPod:I

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    iget-boolean v5, v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mIsUsedEnd:Z

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getTimeOffset(IZIIZ)I

    move-result v0

    goto :goto_0
.end method

.method public getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/b/a/b;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/b/a/b;

    return-object v0
.end method

.method public getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/b/a/d;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/b/a/d;

    return-object v0
.end method

.method public init(Lcom/visualon/OSMPPlayer/VOCommonPlayer;Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    .line 86
    check-cast p1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    .line 87
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_getVideoView()Landroid/view/View;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdUiContainer:Landroid/view/ViewGroup;

    .line 91
    :cond_0
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsContentComplete:Z

    .line 92
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    .line 93
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    .line 94
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    iput v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mInsertPos:I

    .line 95
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    iput v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mPosOfPod:I

    .line 96
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    iput-boolean v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mIsUsedEnd:Z

    .line 98
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mbUsedContendEnd:Z

    .line 99
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsSendWholeEnd:Z

    .line 101
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/b/a/d;

    .line 156
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$2;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/b/a/b;

    .line 168
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$3;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)V

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_addPlayerCallback(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer$PlayerCallback;)V

    .line 227
    return-void
.end method

.method public pauseContentForAdPlayback()V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->savePosition()V

    .line 267
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_stopPlayback()V

    .line 268
    return-void
.end method

.method public restorePosition()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    invoke-interface {v0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_seekTo(J)V

    .line 257
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restorePosition: mSavedContentVideoPosition "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public resumeContentAfterAdPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentVideoUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentVideoUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    const-string v1, "No content URL specified."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :goto_0
    return-void

    .line 280
    :cond_1
    iput-boolean v3, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z

    .line 281
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsContentComplete:Z

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentVideoUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mSubtitleUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_setVideoPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->restorePosition()V

    goto :goto_0

    .line 289
    :cond_2
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    const-string v1, "We should finish the playback here\n"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_stopPlayback()V

    goto :goto_0
.end method

.method public savePosition()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    .line 249
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "savePosition:mSavedContentVideoPosition "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mSavedContentVideoPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public setAdsComplete(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 324
    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->onEvent(IIILjava/lang/Object;)I

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsSendWholeEnd:Z

    .line 329
    :cond_0
    return-void
.end method

.method public setContentVideoPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mContentVideoUrl:Ljava/lang/String;

    .line 241
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mSubtitleUrl:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setOnContentCompleteListener(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mOnContentCompleteListener:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;

    .line 234
    return-void
.end method
