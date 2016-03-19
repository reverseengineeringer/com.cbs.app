.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_INITIALIZING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_LOADING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;


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

    .line 397
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v1, "VO_OSMP_STATUS_INITIALIZING"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_INITIALIZING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 399
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v1, "VO_OSMP_STATUS_LOADING"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_LOADING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 401
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v1, "VO_OSMP_STATUS_PLAYING"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 403
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v1, "VO_OSMP_STATUS_PAUSED"

    invoke-direct {v0, v1, v7, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 405
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v1, "VO_OSMP_STATUS_STOPPED"

    invoke-direct {v0, v1, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 408
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v1, "VO_OSMP_STATUS_MAX"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 394
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_INITIALIZING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_LOADING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

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
    .line 414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 415
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->value:I

    .line 416
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 425
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 427
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 428
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v1

    aget-object v0, v1, v0

    .line 432
    :goto_1
    return-object v0

    .line 425
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    const-string v0, "@@@VOOSMPType"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VO_OSMP_STATUS isn\'t match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
    .locals 1

    .prologue
    .line 394
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->value:I

    return v0
.end method
