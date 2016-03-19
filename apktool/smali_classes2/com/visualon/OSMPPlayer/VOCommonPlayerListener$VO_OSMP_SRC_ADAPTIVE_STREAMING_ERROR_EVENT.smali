.class public final enum Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

.field public static final enum VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

.field public static final enum VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_PARSEFAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

.field public static final enum VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_UNSUPPORTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

.field public static final enum VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DOWNLOADFAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

.field public static final enum VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DRMLICENSEERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

.field public static final enum VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_UNSUPPORTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

.field public static final enum VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_VOLIBLICENSEERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;


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

    .line 422
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    const-string v1, "VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_PARSEFAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_PARSEFAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    .line 424
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    const-string v1, "VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_UNSUPPORTED"

    invoke-direct {v0, v1, v4, v5}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_UNSUPPORTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    .line 426
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    const-string v1, "VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_UNSUPPORTED"

    invoke-direct {v0, v1, v5, v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_UNSUPPORTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    .line 440
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    const-string v1, "VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DOWNLOADFAIL"

    invoke-direct {v0, v1, v6, v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DOWNLOADFAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    .line 442
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    const-string v1, "VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DRMLICENSEERROR"

    invoke-direct {v0, v1, v7, v8}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DRMLICENSEERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    .line 444
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    const-string v1, "VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_VOLIBLICENSEERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_VOLIBLICENSEERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    .line 446
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    const-string v1, "VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_MAX"

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    .line 419
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    const/4 v1, 0x0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_PARSEFAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    aput-object v2, v0, v1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_PLAYLIST_UNSUPPORTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_UNSUPPORTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DOWNLOADFAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DRMLICENSEERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_VOLIBLICENSEERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

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
    .line 451
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 452
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->value:I

    .line 453
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 462
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 464
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 465
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    move-result-object v1

    aget-object v0, v1, v0

    .line 468
    :goto_1
    return-object v0

    .line 462
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_1
    const-string v0, "VOCommonPlayerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT isn\'t match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;
    .locals 1

    .prologue
    .line 419
    const-class v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT;->value:I

    return v0
.end method
