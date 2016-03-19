.class Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/b/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/b/e;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    const-string v0, "@@@AdIMAEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fire Event:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/e;->a()Lcom/google/ads/interactivemedia/v3/b/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/b/e$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$3;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/e;->a()Lcom/google/ads/interactivemedia/v3/b/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/h;->a()V

    .line 114
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$200(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    move-result-object v0

    const v1, 0x1230add7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setParam(ILjava/lang/Object;)I

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # invokes: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->pauseContent()V
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$300(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # invokes: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->resumeContent()V
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mIsAdPlaying:Z
    invoke-static {v0, v6}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$402(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;Z)Z

    goto :goto_0

    .line 130
    :pswitch_4
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mIsAdPlaying:Z
    invoke-static {v0, v7}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$402(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;Z)Z

    goto :goto_0

    .line 133
    :pswitch_5
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/h;->b()V

    .line 135
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    const/4 v1, 0x0

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;
    invoke-static {v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$002(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;Lcom/google/ads/interactivemedia/v3/b/h;)Lcom/google/ads/interactivemedia/v3/b/h;

    .line 136
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$500(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$500(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->setAdsComplete(Z)V

    .line 138
    :cond_1
    const-string v0, "@@@AdIMAEngine"

    const-string v1, "ALL_ADS_COMPLETED come here\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :pswitch_6
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->print_debug()V

    .line 143
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->addAdBreaks()V

    goto/16 :goto_0

    .line 146
    :pswitch_7
    const-string v0, "@@@AdIMAEngine"

    const-string v1, "SKIPPED"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 149
    :pswitch_8
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/e;->b()Ljava/util/Map;

    move-result-object v0

    .line 150
    const-string v1, "@@@AdIMAEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strMap:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    const-string v1, "errorCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    new-instance v1, Ljava/lang/String;

    const-string v2, "400"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v2, Ljava/lang/String;

    const-string v3, "402"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v3, "@@@AdIMAEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "value:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # operator++ for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$608(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)I

    .line 159
    const-string v0, "@@@AdIMAEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mReCBPodPos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$600(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$700(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$800(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mReCBPodPos:I
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$600(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)I

    move-result v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v1, v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$700(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    move-result-object v1

    iget v1, v1, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mCount:I

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$700(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    move-result-object v0

    iput-boolean v6, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsCbNormal:Z

    .line 166
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$700(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    move-result-object v0

    iput-boolean v7, v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsEnd:Z

    .line 167
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$800(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v1, v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$700(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->updateAdPodInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 168
    const-string v0, "@@@AdIMAEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAdPodInfo.mIsCbNormal = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$700(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsCbNormal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAdPodInfo.mIsEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdPodInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$700(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;->mIsEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
