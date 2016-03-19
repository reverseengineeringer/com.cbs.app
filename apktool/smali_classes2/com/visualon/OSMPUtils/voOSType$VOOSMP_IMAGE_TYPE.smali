.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_IMAGE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_ARGB32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_BMP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_JPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_PNG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_RGB24:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_RGB565:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_Unused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1745
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_Unused"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_Unused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1746
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_RGB565"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGB565:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1747
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_RGB24"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGB24:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1748
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_RGBA32"

    invoke-direct {v0, v1, v7, v7}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1749
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_ARGB32"

    invoke-direct {v0, v1, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_ARGB32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1750
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_JPEG"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_JPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1751
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_BMP"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_BMP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1752
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_PNG"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_PNG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1753
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_MAX"

    const/16 v2, 0x8

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1743
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_Unused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGB565:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGB24:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_ARGB32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_JPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_BMP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_PNG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

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
    .line 1758
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1759
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->value:I

    .line 1760
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .prologue
    .line 1769
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1770
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    aget-object v0, v0, p0

    .line 1772
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .prologue
    .line 1743
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .prologue
    .line 1743
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1764
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->value:I

    return v0
.end method
