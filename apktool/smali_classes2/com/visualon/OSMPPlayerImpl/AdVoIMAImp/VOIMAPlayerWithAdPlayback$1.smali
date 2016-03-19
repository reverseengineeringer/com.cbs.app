.class Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->init(Lcom/visualon/OSMPPlayer/VOCommonPlayer;Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/ads/interactivemedia/v3/b/a/d$a;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 149
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->a:Lcom/google/ads/interactivemedia/v3/b/a/e;

    .line 151
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/a/e;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_getCurrentPosition()J

    move-result-wide v2

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_getDuration()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/a/e;-><init>(JJ)V

    goto :goto_0
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    const/4 v1, 0x1

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$002(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;Z)Z

    .line 114
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_setVideoPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    const-string v1, "loadAd"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public pauseAd()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_pause()V

    .line 127
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    const-string v1, "pauseAd"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public playAd()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 105
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v0, v4}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$002(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;Z)Z

    .line 106
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_play()V

    .line 107
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_getDuration()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mCurAdDuration:J

    .line 108
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    const-string v1, "playAd mCurAdDuration = %d"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-wide v4, v4, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mCurAdDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/b/a/d$a;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public resumeAd()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->playAd()V

    .line 133
    const-string v0, "@@@VOIMAPlayerWithAdPlayback"

    const-string v1, "resumeAd"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public stopAd()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_stopPlayback()V

    .line 121
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mAdPosInfo:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$AdPosInfo;->mIsUsedEnd:Z

    .line 122
    return-void
.end method
