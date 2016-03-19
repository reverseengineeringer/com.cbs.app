.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_AUDIO_DECODER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

.field public static final enum VOOSMP_AUDIO_DECODER_TYPE_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

.field public static final enum VOOSMP_AUDIO_DECODER_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

.field public static final enum VOOSMP_AUDIO_DECODER_TYPE_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

.field public static final enum VOOSMP_AUDIO_DECODER_TYPE_SOFTWARE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;


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

    .line 1713
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    const-string v1, "VOOSMP_AUDIO_DECODER_TYPE_SOFTWARE"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_SOFTWARE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    .line 1715
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    const-string v1, "VOOSMP_AUDIO_DECODER_TYPE_MEDIACODEC"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    .line 1717
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    const-string v1, "VOOSMP_AUDIO_DECODER_TYPE_IOMX"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    .line 1719
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    const-string v1, "VOOSMP_AUDIO_DECODER_TYPE_MAX"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    .line 1710
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_SOFTWARE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

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
    .line 1722
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1723
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->value:I

    .line 1724
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;
    .locals 1

    .prologue
    .line 1731
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1732
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    move-result-object v0

    aget-object v0, v0, p0

    .line 1734
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;
    .locals 1

    .prologue
    .line 1710
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;
    .locals 1

    .prologue
    .line 1710
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1727
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->value:I

    return v0
.end method
