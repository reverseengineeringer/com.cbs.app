.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_SRC_PROGRAM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

.field public static final enum VOOSMP_SRC_PROGRAM_TYPE_LIVE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

.field public static final enum VOOSMP_SRC_PROGRAM_TYPE_VOD:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1612
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    const-string v1, "VOOSMP_SRC_PROGRAM_TYPE_LIVE"

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->VOOSMP_SRC_PROGRAM_TYPE_LIVE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    .line 1613
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    const-string v1, "VOOSMP_SRC_PROGRAM_TYPE_VOD"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->VOOSMP_SRC_PROGRAM_TYPE_VOD:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    .line 1610
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->VOOSMP_SRC_PROGRAM_TYPE_LIVE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->VOOSMP_SRC_PROGRAM_TYPE_VOD:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

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
    .line 1617
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1618
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->value:I

    .line 1619
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;
    .locals 1

    .prologue
    .line 1622
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1623
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    move-result-object v0

    aget-object v0, v0, p0

    .line 1625
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->VOOSMP_SRC_PROGRAM_TYPE_VOD:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;
    .locals 1

    .prologue
    .line 1610
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;
    .locals 1

    .prologue
    .line 1610
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1629
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->value:I

    return v0
.end method
