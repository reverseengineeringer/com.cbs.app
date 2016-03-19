.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_RENDER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_CANVAS_BITMAP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_CANVAS_DATA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_HW_RENDER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_NATIVE_SURFACE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field public static final enum VO_OSMP_RENDER_TYPE_OPENGLES:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;


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

    .line 139
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v1, "VO_OSMP_RENDER_TYPE_CANVAS_DATA"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_CANVAS_DATA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 141
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v1, "VO_OSMP_RENDER_TYPE_NATIVE_WINDOW"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 144
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v1, "VO_OSMP_RENDER_TYPE_CANVAS_BITMAP"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_CANVAS_BITMAP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 147
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v1, "VO_OSMP_RENDER_TYPE_OPENGLES"

    invoke-direct {v0, v1, v7, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_OPENGLES:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 149
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v1, "VO_OSMP_RENDER_TYPE_NATIVE_SURFACE"

    invoke-direct {v0, v1, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_SURFACE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 153
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v1, "VO_OSMP_RENDER_TYPE_HW_RENDER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_HW_RENDER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 156
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    const-string v1, "VO_OSMP_RENDER_TYPE_MAX"

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 135
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_CANVAS_DATA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_CANVAS_BITMAP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_OPENGLES:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_SURFACE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_HW_RENDER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

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
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->value:I

    .line 162
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 171
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 173
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 174
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    move-result-object v1

    aget-object v0, v1, v0

    .line 178
    :goto_1
    return-object v0

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const-string v0, "@@@VOOSMPType"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VO_OSMP_RENDER_TYPE isn\'t match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;
    .locals 1

    .prologue
    .line 135
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->value:I

    return v0
.end method
