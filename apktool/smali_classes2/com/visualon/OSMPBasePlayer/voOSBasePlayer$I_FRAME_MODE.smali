.class final enum Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "I_FRAME_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

.field public static final enum I_FRAME_MODE_BACKWARD:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

.field public static final enum I_FRAME_MODE_DISABLED:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

.field public static final enum I_FRAME_MODE_FORWARD:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    const-string v1, "I_FRAME_MODE_DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_DISABLED:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    const-string v1, "I_FRAME_MODE_FORWARD"

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_FORWARD:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    const-string v1, "I_FRAME_MODE_BACKWARD"

    invoke-direct {v0, v1, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_BACKWARD:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_DISABLED:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_FORWARD:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_BACKWARD:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->$VALUES:[Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;
    .locals 1

    .prologue
    .line 183
    const-class v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->$VALUES:[Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    return-object v0
.end method
