.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPAssetIndexImpl"


# instance fields
.field private mAudioIndex:I

.field private mSubtitleIndex:I

.field private mVideoIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    .line 31
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    .line 32
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    .line 33
    return-void
.end method

.method public constructor <init>([I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 38
    :cond_0
    const-string v0, "@@@VOOSMPAssetIndexImpl"

    const-string v1, "AssetIndex info is invalid."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    .line 40
    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    .line 41
    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_1
    aget v0, p1, v2

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    .line 45
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    .line 46
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    goto :goto_0
.end method


# virtual methods
.method public fillPlayingAssetsIndex(Lcom/visualon/OSMPDataSource/voOSDataSource;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 63
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 64
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 65
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 67
    invoke-virtual {p1, v0, v1, v2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetCurrTrackPlaying(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    .line 70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    .line 71
    return-void
.end method

.method public fillSelectionAssetsIndex(Lcom/visualon/OSMPDataSource/voOSDataSource;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 51
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 52
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 53
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 55
    invoke-virtual {p1, v0, v1, v2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetCurrTrackSelection(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    .line 59
    return-void
.end method

.method public getAudioIndex()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    return v0
.end method

.method public getSubtitleIndex()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    return v0
.end method

.method public getVideoIndex()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    return v0
.end method
