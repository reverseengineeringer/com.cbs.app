.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_OUTPUT_CONTROL_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_ACP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_CGMS_A:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_ANALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_DIGITAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_DOT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_DWIGHT_CAVENDISH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1194
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v8, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1196
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_HDCP"

    invoke-direct {v0, v1, v4, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1198
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING"

    invoke-direct {v0, v1, v5, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1200
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_DIGITAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_DIGITAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1202
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_ANALOG"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_ANALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1204
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_DOT"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_DOT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1206
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_DWIGHT_CAVENDISH"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_DWIGHT_CAVENDISH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1208
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_ACP"

    const/4 v2, 0x7

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_ACP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1210
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_CGMS_A"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v7, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_CGMS_A:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1212
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_HDMI"

    const/16 v2, 0x9

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1214
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY"

    const/16 v2, 0xa

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1217
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_MAX"

    const/16 v2, 0xb

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1191
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_DIGITAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_ANALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_DOT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_DWIGHT_CAVENDISH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_ACP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_CGMS_A:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

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
    .line 1222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1223
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->value:I

    .line 1224
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1233
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1235
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 1236
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1240
    :goto_1
    return-object v0

    .line 1233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1239
    :cond_1
    const-string v0, "@@@VOOSMPType"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOOSMP_OUTPUT_CONTROL_TYPE does not match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1240
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;
    .locals 1

    .prologue
    .line 1191
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;
    .locals 1

    .prologue
    .line 1191
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1228
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->value:I

    return v0
.end method
