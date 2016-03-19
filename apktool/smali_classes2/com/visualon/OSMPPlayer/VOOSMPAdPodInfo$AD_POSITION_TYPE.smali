.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_POSITION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

.field public static final enum AD_MID:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

.field public static final enum AD_POS:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

.field public static final enum AD_PRE:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    const-string v1, "AD_PRE"

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_PRE:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    const-string v1, "AD_MID"

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_MID:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    const-string v1, "AD_POS"

    invoke-direct {v0, v1, v4}, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_POS:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_PRE:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_MID:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->AD_POS:Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPAdPodInfo$AD_POSITION_TYPE;

    return-object v0
.end method
