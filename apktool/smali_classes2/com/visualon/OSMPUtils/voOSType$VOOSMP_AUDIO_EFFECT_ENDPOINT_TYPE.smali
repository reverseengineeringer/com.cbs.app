.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

.field public static final enum VOOSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;


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

    .line 1676
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VOOSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER"

    invoke-direct {v0, v1, v7, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1678
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VOOSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE"

    invoke-direct {v0, v1, v3, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1680
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VOOSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH"

    invoke-direct {v0, v1, v4, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1682
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VOOSMP_AUDIO_EFFECT_ENDPOINT_OFF"

    invoke-direct {v0, v1, v5, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1684
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    const-string v1, "VOOSMP_AUDIO_EFFECT_ENDPOINT_MAX"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    .line 1673
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_SPEAKER:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_HEADPHONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_BLUETOOTH:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_OFF:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

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
    .line 1689
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1690
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->value:I

    .line 1691
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .prologue
    .line 1700
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1701
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    move-result-object v0

    aget-object v0, v0, p0

    .line 1703
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->VOOSMP_AUDIO_EFFECT_ENDPOINT_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .prologue
    .line 1673
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;
    .locals 1

    .prologue
    .line 1673
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1695
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->value:I

    return v0
.end method
