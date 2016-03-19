.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_AUDIO_CODINGTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingAAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingADPCM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingALAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingAMRNB:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingAMRWB:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingAMRWBP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingAPE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingDOLBY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingDRA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingDTS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingEAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingEVRC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingFLAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingG729:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingMIDI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingMP1:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingMP3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingOGG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingPCM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingQCELP13:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingRA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingUnused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_CodingWMA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field public static final enum VOOSMP_AUDIO_Coding_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;


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

    .line 786
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingUnused"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingUnused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 788
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingPCM"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingPCM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 790
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingADPCM"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingADPCM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 792
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingAMRNB"

    invoke-direct {v0, v1, v7, v7}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAMRNB:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 794
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingAMRWB"

    invoke-direct {v0, v1, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAMRWB:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 796
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingAMRWBP"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAMRWBP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 798
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingQCELP13"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingQCELP13:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 800
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingEVRC"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingEVRC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 802
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingAAC"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 804
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingAC3"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 806
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingFLAC"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingFLAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 808
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingMP1"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingMP1:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 810
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingMP3"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingMP3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 812
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingOGG"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingOGG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 814
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingWMA"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingWMA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 816
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingRA"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingRA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 818
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingMIDI"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingMIDI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 820
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingDRA"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingDRA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 822
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingG729"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingG729:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 824
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingEAC3"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingEAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 826
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingAPE"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAPE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 828
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingALAC"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingALAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 830
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingDTS"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingDTS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 832
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_CodingDOLBY"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingDOLBY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 834
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    const-string v1, "VOOSMP_AUDIO_Coding_MAX"

    const/16 v2, 0x18

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_Coding_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 783
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingUnused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingPCM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingADPCM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAMRNB:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAMRWB:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAMRWBP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingQCELP13:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingEVRC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingFLAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingMP1:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingMP3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingOGG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingWMA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingRA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingMIDI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingDRA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingG729:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingEAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAPE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingALAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingDTS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingDOLBY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_Coding_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

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
    .line 839
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 840
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->value:I

    .line 841
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 850
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 852
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->getValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 853
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    move-result-object v1

    aget-object v0, v1, v0

    .line 857
    :goto_1
    return-object v0

    .line 850
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    :cond_1
    const-string v0, "@@@voOSType"

    const-string v2, "VOOSMP_AUDIO_CODINGTYPE does not match. id = 0x%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingUnused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;
    .locals 1

    .prologue
    .line 783
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;
    .locals 1

    .prologue
    .line 783
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->value:I

    return v0
.end method
