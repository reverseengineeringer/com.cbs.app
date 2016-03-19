.class Lcom/visualon/OSMPBasePlayer/voOSAnalytics$4;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->startTimer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$4;->this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$4;->this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->reportDeviceInfo2()V
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->access$100(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V

    .line 674
    return-void
.end method
