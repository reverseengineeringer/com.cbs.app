.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_SOURCE_STREAMTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_AUDIO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_SUBTITLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_VIDEO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;


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

    .line 360
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v1, "VO_OSMP_SS_NONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 362
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v1, "VO_OSMP_SS_AUDIO"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_AUDIO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 364
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v1, "VO_OSMP_SS_VIDEO"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_VIDEO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 366
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v1, "VO_OSMP_SS_SUBTITLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_SUBTITLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 368
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v1, "VO_OSMP_SS_MAX"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v7, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 358
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_AUDIO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_VIDEO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_SUBTITLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

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
    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->value:I

    .line 373
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 383
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    move-result-object v0

    aget-object v0, v0, p0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;
    .locals 1

    .prologue
    .line 358
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->value:I

    return v0
.end method
