.class public Lcom/conviva/monitor/PlayerStates;
.super Ljava/lang/Object;


# static fields
.field public static final BUFFERING:Ljava/lang/String; = "BUFFERING"

.field public static final NOTMONITORED:Ljava/lang/String; = "NOTMONITORED"

.field public static final PAUSED:Ljava/lang/String; = "PAUSED"

.field public static final PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final eBuffering:I = 0x6

.field public static final eNotMonitored:I = 0x62

.field public static final ePaused:I = 0xc

.field public static final ePlaying:I = 0x3

.field public static final eStopped:I = 0x1

.field public static final eUnknown:I = 0x64

.field public static stateToInt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/conviva/monitor/PlayerStates;->stateToInt:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanup()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/conviva/monitor/PlayerStates;->stateToInt:Ljava/util/Map;

    return-void
.end method

.method public static init()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/conviva/monitor/PlayerStates;->stateToInt:Ljava/util/Map;

    const-string v1, "PLAYING"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/conviva/monitor/PlayerStates;->stateToInt:Ljava/util/Map;

    const-string v1, "STOPPED"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/conviva/monitor/PlayerStates;->stateToInt:Ljava/util/Map;

    const-string v1, "PAUSED"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/conviva/monitor/PlayerStates;->stateToInt:Ljava/util/Map;

    const-string v1, "BUFFERING"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/conviva/monitor/PlayerStates;->stateToInt:Ljava/util/Map;

    const-string v1, "NOTMONITORED"

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/conviva/monitor/PlayerStates;->stateToInt:Ljava/util/Map;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
