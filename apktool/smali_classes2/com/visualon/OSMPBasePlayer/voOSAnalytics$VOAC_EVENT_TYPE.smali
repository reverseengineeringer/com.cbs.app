.class public final enum Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPBasePlayer/voOSAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOAC_EVENT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

.field public static final enum VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

.field public static final enum VOAC_MMF_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

.field public static final enum VOAC_NETWORK_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

.field public static final enum VOAC_OSMP_EVENT:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

.field public static final enum VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 753
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    const-string v1, "VOAC_OSMP_EVENT"

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_OSMP_EVENT:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    .line 754
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    const-string v1, "VOAC_PLAYER_ANALYTICS"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    .line 755
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    const-string v1, "VOAC_MMF_ANALYTICS"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_MMF_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    .line 756
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    const-string v1, "VOAC_NETWORK_ANALYTICS"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_NETWORK_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    .line 757
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    const-string v1, "VOAC_DEVICE_ANALYTICS"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    .line 752
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_OSMP_EVENT:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_MMF_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_NETWORK_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->$VALUES:[Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 762
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 763
    iput p3, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->value:I

    .line 764
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;
    .locals 1

    .prologue
    .line 752
    const-class v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;
    .locals 1

    .prologue
    .line 752
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->$VALUES:[Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->value:I

    return v0
.end method
