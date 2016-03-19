.class Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    iget-object v3, v2, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->eventCurrent:Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;

    .line 78
    if-nez v3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-interface {v3}, Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;->getPeriodID()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->getADSPeriod(I)Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    move-result-object v4

    .line 82
    if-nez v4, :cond_1

    .line 84
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[TRACKING] getADSPeriod(eventCurrent.getPeriodID()) return null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-virtual {v2}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->isMDialogVod()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    const-string v0, "@@@VOOSMPDWConcurrentTracking"

    const-string v2, "[TRACKING], --- MDialog Engine, AD Tracking  not support. ---"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    iget-object v5, v2, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 95
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    const-string v2, "http://dw.cbsi.com/levt/beacon/e.gif?"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-virtual {v2}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->isLive()Z

    move-result v7

    .line 99
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-virtual {v2, v6, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->appendStringFromHashMap(Ljava/lang/StringBuffer;Z)Z

    move-result v8

    .line 101
    iget-object v9, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    const-string v10, "&affiliate="

    if-eqz v7, :cond_6

    const-string v2, "true"

    :goto_1
    if-nez v8, :cond_7

    :goto_2
    invoke-virtual {v9, v6, v10, v2, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    if-nez v7, :cond_8

    .line 103
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->getVideoGuid()Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    const-string v8, "&v22="

    invoke-virtual {v2, v6, v8, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->getContentName()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 108
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    const-string v8, "&medtitle="

    invoke-virtual {v2, v6, v8, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    const-string v2, "&platform="

    iget-object v8, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    iget-object v8, v8, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->platformName:Ljava/lang/String;

    invoke-virtual {v0, v6, v2, v8}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-nez v7, :cond_a

    .line 124
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    const-string v8, "&episode="

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "true"

    :goto_4
    invoke-virtual {v2, v6, v8, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_5
    const-string v0, "0"

    .line 129
    if-nez v7, :cond_5

    .line 130
    if-eqz v5, :cond_5

    .line 131
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v2

    .line 132
    if-eqz v2, :cond_5

    .line 134
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->getCurrentContentPosition(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_5
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    const-string v3, "&medtime="

    invoke-virtual {v2, v6, v3, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->sendHTTPRequest(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 142
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TRACKING] Concurrent info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 101
    :cond_6
    const-string v2, "false"

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_2

    .line 111
    :cond_8
    if-eqz v5, :cond_4

    .line 112
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 113
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 114
    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getOpenParam()Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->getStrContentTitle()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 116
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    const-string v8, "&medtitle="

    invoke-virtual {v2, v6, v8, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 124
    :cond_9
    const-string v0, "false"

    goto :goto_4

    .line 126
    :cond_a
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;

    const-string v2, "&episode="

    const-string v4, "true"

    invoke-virtual {v0, v6, v2, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPDWConcurrentTracking;->appendToUrl(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method
