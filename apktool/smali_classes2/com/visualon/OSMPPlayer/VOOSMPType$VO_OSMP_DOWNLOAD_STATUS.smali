.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_DOWNLOAD_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

.field public static final enum VO_OSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

.field public static final enum VO_OSMP_DOWNLOAD_PROGRESS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

.field public static final enum VO_OSMP_DOWNLOAD_STALL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

.field public static final enum VO_OSMP_DOWNLOAD_SUSPEND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;


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

    .line 326
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    const-string v1, "VO_OSMP_DOWNLOAD_STALL"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_STALL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    .line 328
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    const-string v1, "VO_OSMP_DOWNLOAD_PROGRESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_PROGRESS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    .line 330
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    const-string v1, "VO_OSMP_DOWNLOAD_SUSPEND"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_SUSPEND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    .line 332
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    const-string v1, "VO_OSMP_DOWNLOAD_MAX"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    .line 323
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_STALL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_PROGRESS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_SUSPEND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

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
    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 338
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->value:I

    .line 339
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 349
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    move-result-object v0

    aget-object v0, v0, p0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
    .locals 1

    .prologue
    .line 323
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->value:I

    return v0
.end method
