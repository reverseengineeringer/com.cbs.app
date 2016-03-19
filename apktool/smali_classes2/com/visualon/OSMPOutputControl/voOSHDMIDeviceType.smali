.class public final enum Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum HTC_PC36100:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum LG_P920:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum Motorola_V2_3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum SE_LTs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum StandardVersion3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum StandardVersion4:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v1, "NoHDMI"

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v1, "Motorola_V2_3"

    invoke-direct {v0, v1, v4}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->Motorola_V2_3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v1, "SE_LTs"

    invoke-direct {v0, v1, v5}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SE_LTs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v1, "HTC_PC36100"

    invoke-direct {v0, v1, v6}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->HTC_PC36100:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v1, "LG_P920"

    invoke-direct {v0, v1, v7}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->LG_P920:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v1, "SHARP_SHs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v1, "StandardVersion3"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v1, "StandardVersion4"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion4:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->Motorola_V2_3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SE_LTs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->HTC_PC36100:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->LG_P920:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion4:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->$VALUES:[Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->$VALUES:[Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-virtual {v0}, [Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    return-object v0
.end method
