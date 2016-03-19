.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_SEI_EVENT_FLAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

.field public static final enum VOOSMP_FLAG_SEI_EVENT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

.field public static final enum VOOSMP_FLAG_SEI_EVENT_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

.field public static final enum VOOSMP_FLAG_SEI_EVENT_PIC_TIMING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

.field public static final enum VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1637
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    const-string v1, "VOOSMP_FLAG_SEI_EVENT_NONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    .line 1639
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    const-string v1, "VOOSMP_FLAG_SEI_EVENT_PIC_TIMING"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_PIC_TIMING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    .line 1641
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    const-string v1, "VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    .line 1643
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    const-string v1, "VOOSMP_FLAG_SEI_EVENT_MAX"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    .line 1634
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_PIC_TIMING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

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
    .line 1648
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1649
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->value:I

    .line 1650
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1659
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1661
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 1662
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1666
    :goto_1
    return-object v0

    .line 1659
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1665
    :cond_1
    const-string v0, "@@@voOSType"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOOSMP_SEI_EVENT_FLAG does not match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1666
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;
    .locals 1

    .prologue
    .line 1634
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;
    .locals 1

    .prologue
    .line 1634
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1654
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->value:I

    return v0
.end method
