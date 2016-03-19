.class Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->startAnalyticsNotification(ILcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

.field final synthetic val$analyticsFilter:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)V
    .locals 0

    .prologue
    .line 2022
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$1;->val$analyticsFilter:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2024
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$1;->val$analyticsFilter:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getAnalytics(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsInfo;

    move-result-object v0

    .line 2026
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_ANALYTICS_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2029
    return-void
.end method
