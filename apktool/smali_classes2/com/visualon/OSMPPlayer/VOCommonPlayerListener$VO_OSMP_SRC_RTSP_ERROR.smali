.class public final enum Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_SRC_RTSP_ERROR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_CONNECT_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_DESCRIBE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_HTTP_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_OPTION_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_PAUSE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_PLAY_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_SETUP_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_SOCKET_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_URL_EXPIRED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 559
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_CONNECT_FAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_CONNECT_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 562
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_DESCRIBE_FAIL"

    invoke-direct {v0, v1, v4, v5}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_DESCRIBE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 565
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_SETUP_FAIL"

    invoke-direct {v0, v1, v5, v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_SETUP_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 568
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_PLAY_FAIL"

    invoke-direct {v0, v1, v6, v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_PLAY_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 571
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_PAUSE_FAIL"

    invoke-direct {v0, v1, v7, v8}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_PAUSE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 574
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_OPTION_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_OPTION_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 577
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_SOCKET_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_SOCKET_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 580
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_HTTP_ERROR"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_HTTP_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 583
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_URL_EXPIRED"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_URL_EXPIRED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 586
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_MAX"

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 556
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const/4 v1, 0x0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_CONNECT_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v2, v0, v1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_DESCRIBE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_SETUP_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_PLAY_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_PAUSE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_OPTION_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_SOCKET_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_HTTP_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_URL_EXPIRED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

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
    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 592
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->value:I

    .line 593
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 602
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 604
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 605
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    move-result-object v1

    aget-object v0, v1, v0

    .line 608
    :goto_1
    return-object v0

    .line 602
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_1
    const-string v0, "VOCommonPlayerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VO_OSMP_SRC_RTSP_ERROR isn\'t match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;
    .locals 1

    .prologue
    .line 556
    const-class v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->value:I

    return v0
.end method
