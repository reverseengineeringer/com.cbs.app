.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_DISPLAY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

.field public static final enum VO_OSMP_DISPLAY_NULL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

.field public static final enum VO_OSMP_DISPLAY_PLAYER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

.field public static final enum VO_OSMP_DISPLAY_RENDER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

.field public static final enum VO_OSMP_DISPLAY_SOURCE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1396
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    const-string v1, "VO_OSMP_DISPLAY_NULL"

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_NULL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    .line 1398
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    const-string v1, "VO_OSMP_DISPLAY_PLAYER"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_PLAYER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    .line 1400
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    const-string v1, "VO_OSMP_DISPLAY_SOURCE"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_SOURCE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    .line 1402
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    const-string v1, "VO_OSMP_DISPLAY_RENDER"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_RENDER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    .line 1394
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_NULL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_PLAYER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_SOURCE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_RENDER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

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
    .line 1407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1408
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->value:I

    .line 1409
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1418
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1420
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->getValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 1421
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1425
    :goto_1
    return-object v0

    .line 1418
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1424
    :cond_1
    const-string v0, "@@@VOOSMPType"

    const-string v2, "VO_OSMP_DISPLAY_TYPE does not match. id = 0x%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_NULL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;
    .locals 1

    .prologue
    .line 1394
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;
    .locals 1

    .prologue
    .line 1394
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1413
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->value:I

    return v0
.end method
