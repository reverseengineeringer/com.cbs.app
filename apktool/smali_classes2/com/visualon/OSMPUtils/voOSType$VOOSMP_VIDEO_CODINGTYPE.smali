.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_VIDEO_CODINGTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingDIVX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingH263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingH264:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingH265:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingMJPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingMPEG2:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingMPEG4:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingRV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingS263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingUnused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingVC1:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingVP6:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingVP7:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingVP8:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingWMV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_Coding_Max:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;


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

    .line 727
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingUnused"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingUnused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 729
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingMPEG2"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingMPEG2:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 731
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingH263"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 733
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingS263"

    invoke-direct {v0, v1, v7, v7}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingS263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 735
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingMPEG4"

    invoke-direct {v0, v1, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingMPEG4:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 737
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingH264"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH264:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 739
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingWMV"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingWMV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 741
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingRV"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingRV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 743
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingMJPEG"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingMJPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 745
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingDIVX"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingDIVX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 747
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingVP6"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVP6:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 749
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingVP8"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVP8:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 751
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingVP7"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVP7:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 753
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingVC1"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVC1:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 755
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingH265"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH265:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 757
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_Coding_Max"

    const/16 v2, 0xf

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_Coding_Max:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 724
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingUnused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingMPEG2:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingS263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingMPEG4:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH264:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingWMV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingRV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingMJPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingDIVX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVP6:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVP8:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVP7:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVC1:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH265:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_Coding_Max:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

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
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->value:I

    .line 764
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;
    .locals 1

    .prologue
    .line 773
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 774
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    move-result-object v0

    aget-object v0, v0, p0

    .line 776
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_Coding_Max:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;
    .locals 1

    .prologue
    .line 724
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;
    .locals 1

    .prologue
    .line 724
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->value:I

    return v0
.end method
