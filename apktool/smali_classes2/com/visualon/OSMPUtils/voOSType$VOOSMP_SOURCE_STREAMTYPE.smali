.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_SOURCE_STREAMTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_AUDIO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_AUDIO_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_HINT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_IMAGE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_MFS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_MUX_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_RICHMEDIA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_RTSP_AUDIO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_RTSP_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_SCRIPT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_STREAM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_SUBTITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_SUBTITLE_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_TRACKINFO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_TS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

.field public static final enum VOOSMP_SS_VIDEO_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;


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

    .line 1503
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1505
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_AUDIO"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_AUDIO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1507
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_VIDEO"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1509
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_IMAGE"

    invoke-direct {v0, v1, v7, v7}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_IMAGE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1511
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_STREAM"

    invoke-direct {v0, v1, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_STREAM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1513
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_SCRIPT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SCRIPT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1515
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_HINT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_HINT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1517
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_RTSP_VIDEO"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_RTSP_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1519
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_RTSP_AUDIO"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_RTSP_AUDIO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1521
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_SUBTITLE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SUBTITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1523
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_RICHMEDIA"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_RICHMEDIA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1525
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_TRACKINFO"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_TRACKINFO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1527
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_TS"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_TS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1529
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_MFS"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_MFS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1531
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_AUDIO_GROUP"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_AUDIO_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1533
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_VIDEO_GROUP"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_VIDEO_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1535
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_SUBTITLE_GROUP"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SUBTITLE_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1537
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_MUX_GROUP"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_MUX_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1540
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    const-string v1, "VOOSMP_SS_MAX"

    const/16 v2, 0x12

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 1501
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_AUDIO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_IMAGE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_STREAM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SCRIPT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_HINT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_RTSP_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_RTSP_AUDIO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SUBTITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_RICHMEDIA:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_TRACKINFO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_TS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_MFS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_AUDIO_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_VIDEO_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SUBTITLE_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_MUX_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

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
    .line 1545
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1546
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->value:I

    .line 1547
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;
    .locals 1

    .prologue
    .line 1556
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1557
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    move-result-object v0

    aget-object v0, v0, p0

    .line 1559
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;
    .locals 1

    .prologue
    .line 1501
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;
    .locals 1

    .prologue
    .line 1501
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1551
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->value:I

    return v0
.end method
