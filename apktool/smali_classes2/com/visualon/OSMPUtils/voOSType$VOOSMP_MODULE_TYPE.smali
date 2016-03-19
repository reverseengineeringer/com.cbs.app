.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_MODULE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

.field public static final enum VOOSMP_MODULE_TYPE_DRM_VENDOR_A:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

.field public static final enum VOOSMP_MODULE_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

.field public static final enum VOOSMP_MODULE_TYPE_SDK:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

.field public static final enum VOOSMP_MODULE_TYPE_SEI_POST_PROCESS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;


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

    .line 1815
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    const-string v1, "VOOSMP_MODULE_TYPE_SDK"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_SDK:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    .line 1816
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    const-string v1, "VOOSMP_MODULE_TYPE_DRM_VENDOR_A"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_DRM_VENDOR_A:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    .line 1817
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    const-string v1, "VOOSMP_MODULE_TYPE_SEI_POST_PROCESS_VIDEO"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_SEI_POST_PROCESS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    .line 1818
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    const-string v1, "VOOSMP_MODULE_TYPE_MAX"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    .line 1813
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_SDK:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_DRM_VENDOR_A:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_SEI_POST_PROCESS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

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
    .line 1822
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1823
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->value:I

    .line 1824
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;
    .locals 2

    .prologue
    .line 1833
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1835
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 1836
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1839
    :goto_1
    return-object v0

    .line 1833
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1839
    :cond_1
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;
    .locals 1

    .prologue
    .line 1813
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;
    .locals 1

    .prologue
    .line 1813
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1828
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->value:I

    return v0
.end method
