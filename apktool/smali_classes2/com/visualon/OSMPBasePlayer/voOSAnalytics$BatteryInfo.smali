.class Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPBasePlayer/voOSAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryInfo"
.end annotation


# static fields
.field private static final VOANA_BATTERY_PLUGGED:I = 0x1

.field private static final VOANA_BATTERY_UNKNOWN:I = 0x0

.field private static final VOANA_BATTERY_UNPLUGGED:I = 0x2


# instance fields
.field m_level:I

.field m_powerState:I

.field final synthetic this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->this$0:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x32

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->m_level:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->m_powerState:I

    .line 54
    return-void
.end method
