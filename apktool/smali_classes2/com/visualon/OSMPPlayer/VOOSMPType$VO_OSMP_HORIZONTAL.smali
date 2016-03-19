.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_HORIZONTAL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

.field public static final enum VO_OSMP_CENTER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

.field public static final enum VO_OSMP_HORIZONTAL_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

.field public static final enum VO_OSMP_HORIZONTAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

.field public static final enum VO_OSMP_LEFT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

.field public static final enum VO_OSMP_RIGHT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1477
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    const-string v1, "VO_OSMP_HORIZONTAL_DEFAULT"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_HORIZONTAL_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    .line 1479
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    const-string v1, "VO_OSMP_LEFT"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_LEFT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    .line 1481
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    const-string v1, "VO_OSMP_CENTER"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_CENTER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    .line 1483
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    const-string v1, "VO_OSMP_RIGHT"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_RIGHT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    .line 1486
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    const-string v1, "VO_OSMP_HORIZONTAL_MAX"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_HORIZONTAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    .line 1473
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_HORIZONTAL_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_LEFT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_CENTER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_RIGHT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_HORIZONTAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    aput-object v1, v0, v7

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

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
    .line 1491
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1492
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->value:I

    .line 1493
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1502
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1504
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->getValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 1505
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1509
    :goto_1
    return-object v0

    .line 1502
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1508
    :cond_1
    const-string v0, "@@@VOOSMPType"

    const-string v2, "VO_OSMP_HORIZONTAL does not match. id = 0x%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->VO_OSMP_HORIZONTAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;
    .locals 1

    .prologue
    .line 1473
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;
    .locals 1

    .prologue
    .line 1473
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1497
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->value:I

    return v0
.end method
