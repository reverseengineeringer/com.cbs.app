.class Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/a/b;


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
    .line 156
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentProgress()Lcom/google/ads/interactivemedia/v3/b/a/e;
    .locals 6

    .prologue
    .line 159
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mIsAdDisplayed:Z
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 160
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->a:Lcom/google/ads/interactivemedia/v3/b/a/e;

    .line 162
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/a/e;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_getCurrentPosition()J

    move-result-wide v2

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mVideoPlayer:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;->ima_getDuration()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/a/e;-><init>(JJ)V

    goto :goto_0
.end method
