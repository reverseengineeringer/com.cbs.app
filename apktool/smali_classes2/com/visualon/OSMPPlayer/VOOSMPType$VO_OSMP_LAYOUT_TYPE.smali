.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_LAYOUT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

.field public static final enum VO_OSMP_LAYOUT_PHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

.field public static final enum VO_OSMP_LAYOUT_TABLET:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

.field public static final enum VO_OSMP_LAYOUT_TV:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1024
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    const-string v1, "VO_OSMP_LAYOUT_PHONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_PHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    .line 1025
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    const-string v1, "VO_OSMP_LAYOUT_TABLET"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_TABLET:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    .line 1026
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    const-string v1, "VO_OSMP_LAYOUT_TV"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_TV:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    .line 1022
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_PHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_TABLET:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_TV:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

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
    .line 1031
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1032
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->value:I

    .line 1033
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;
    .locals 1

    .prologue
    .line 1022
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;
    .locals 1

    .prologue
    .line 1022
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->value:I

    return v0
.end method
