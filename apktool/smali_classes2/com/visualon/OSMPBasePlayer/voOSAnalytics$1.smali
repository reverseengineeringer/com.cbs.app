.class Lcom/visualon/OSMPBasePlayer/voOSAnalytics$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPBasePlayer/voOSAnalytics;
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
    .line 76
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const-string v0, "scale"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 83
    const-string v1, "level"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;
    invoke-static {v2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->access$000(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    iput v0, v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->m_level:I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->access$000(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->m_powerState:I

    goto :goto_0

    .line 90
    :cond_2
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->access$000(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->m_powerState:I

    goto :goto_0
.end method
