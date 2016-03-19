.class Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->appMonitorPlayHead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;

    iget-object v0, v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;

    iget-object v0, v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;

    iget-object v0, v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getDuration()J

    .line 151
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;

    iget-object v0, v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v0

    .line 169
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 171
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    long-to-int v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/nielsen/app/sdk/l;->a(J)Lcom/nielsen/app/sdk/l;

    .line 172
    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking$1;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;

    invoke-virtual {v2}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsen_DPR_Tracking;->GetTagString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[TRACKING], Nielsen, setPlayheadPosition %d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_0
    return-void
.end method
