.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_VERTICAL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_BOTTOM:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_MIDDLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_TOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_VERTICAL_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_VERTICAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1519
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v1, "VO_OSMP_VERTICAL_DEFAULT"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_VERTICAL_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1521
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v1, "VO_OSMP_TOP"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_TOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1523
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v1, "VO_OSMP_MIDDLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_MIDDLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1525
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v1, "VO_OSMP_BOTTOM"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_BOTTOM:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1528
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v1, "VO_OSMP_VERTICAL_MAX"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_VERTICAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1516
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_VERTICAL_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_TOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_MIDDLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_BOTTOM:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_VERTICAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    aput-object v1, v0, v7

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

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
    .line 1533
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1534
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->value:I

    .line 1535
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1544
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1546
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->getValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 1547
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1551
    :goto_1
    return-object v0

    .line 1544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1550
    :cond_1
    const-string v0, "@@@VOOSMPType"

    const-string v2, "VO_OSMP_VERTICAL does not match. id = 0x%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1551
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_VERTICAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;
    .locals 1

    .prologue
    .line 1516
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;
    .locals 1

    .prologue
    .line 1516
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1539
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->value:I

    return v0
.end method
