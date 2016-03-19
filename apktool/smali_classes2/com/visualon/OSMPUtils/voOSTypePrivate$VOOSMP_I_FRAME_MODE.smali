.class public final enum Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSTypePrivate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_I_FRAME_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

.field public static final enum VOOSMP_I_FRAME_MODE_BACKWARD:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

.field public static final enum VOOSMP_I_FRAME_MODE_DISABLED:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

.field public static final enum VOOSMP_I_FRAME_MODE_FORWARD:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

.field public static final enum VOOSMP_I_FRAME_MODE_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;


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

    .line 89
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    const-string v1, "VOOSMP_I_FRAME_MODE_DISABLED"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->VOOSMP_I_FRAME_MODE_DISABLED:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    .line 90
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    const-string v1, "VOOSMP_I_FRAME_MODE_FORWARD"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->VOOSMP_I_FRAME_MODE_FORWARD:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    .line 91
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    const-string v1, "VOOSMP_I_FRAME_MODE_BACKWARD"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->VOOSMP_I_FRAME_MODE_BACKWARD:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    .line 92
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    const-string v1, "VOOSMP_I_FRAME_MODE_MAX"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->VOOSMP_I_FRAME_MODE_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->VOOSMP_I_FRAME_MODE_DISABLED:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->VOOSMP_I_FRAME_MODE_FORWARD:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->VOOSMP_I_FRAME_MODE_BACKWARD:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->VOOSMP_I_FRAME_MODE_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->value:I

    .line 99
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 110
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 111
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    move-result-object v1

    aget-object v0, v1, v0

    .line 115
    :goto_1
    return-object v0

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const-string v0, "@@@voOSTypePrivate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOOSMP_I_FRAME_MODE does not match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->VOOSMP_I_FRAME_MODE_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;->value:I

    return v0
.end method
