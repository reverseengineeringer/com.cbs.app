.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VO_OSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1286
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER"

    invoke-direct {v0, v1, v7, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1288
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE"

    invoke-direct {v0, v1, v3, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1290
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH"

    invoke-direct {v0, v1, v4, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1292
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_OFF"

    invoke-direct {v0, v1, v5, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1294
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VO_OSMP_AUDIO_EFFECT_ENDPOINT_MAX"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1283
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

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
    .line 1300
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1301
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->value:I

    .line 1302
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .prologue
    .line 1311
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1312
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    move-result-object v0

    aget-object v0, v0, p0

    .line 1314
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VO_OSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .prologue
    .line 1283
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .prologue
    .line 1283
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->value:I

    return v0
.end method
