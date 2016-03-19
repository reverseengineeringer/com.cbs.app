.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_SRC_FORMAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFLOCAL_MP4:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFMOVIE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_DASH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_HLS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_HTTPPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_PUSHPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_RTSP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_SDP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_SSSTR:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;


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

    .line 491
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_AUTO_DETECT"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 493
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_FFLOCAL_MP4"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFLOCAL_MP4:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 495
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_FFSTREAMING_RTSP"

    const v2, 0x8000100

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_RTSP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 497
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_FFSTREAMING_SDP"

    const v2, 0x8000200

    invoke-direct {v0, v1, v7, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_SDP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 499
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_FFSTREAMING_HLS"

    const v2, 0x8000400

    invoke-direct {v0, v1, v8, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_HLS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 501
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_FFSTREAMING_SSSTR"

    const/4 v2, 0x5

    const v3, 0x8000800

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_SSSTR:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 503
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_FFSTREAMING_DASH"

    const/4 v2, 0x6

    const v3, 0x8001000

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_DASH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 505
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_FFSTREAMING_HTTPPD"

    const/4 v2, 0x7

    const v3, 0x8002000

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_HTTPPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 507
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_FFSTREAMING_PUSHPD"

    const/16 v2, 0x8

    const/high16 v3, 0x8010000

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_PUSHPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 510
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_FFMOVIE_MAX"

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFMOVIE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 488
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFLOCAL_MP4:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_RTSP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_SDP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_HLS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_SSSTR:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_DASH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_HTTPPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_PUSHPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFMOVIE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

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
    .line 515
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 516
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->value:I

    .line 517
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 526
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 528
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 529
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    move-result-object v1

    aget-object v0, v1, v0

    .line 533
    :goto_1
    return-object v0

    .line 526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_1
    const-string v0, "@@@VOOSMPType"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VO_OSMP_SRC_FORMAT isn\'t match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFMOVIE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;
    .locals 1

    .prologue
    .line 488
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;
    .locals 1

    .prologue
    .line 488
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->value:I

    return v0
.end method
