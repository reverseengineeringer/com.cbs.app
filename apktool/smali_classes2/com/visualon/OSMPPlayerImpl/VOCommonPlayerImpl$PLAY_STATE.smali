.class final enum Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PLAY_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

.field public static final enum PS_MY_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

.field public static final enum PS_OPEN:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

.field public static final enum PS_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

.field public static final enum PS_START:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

.field public static final enum PS_STOP:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    const-string v1, "PS_START"

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_START:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    const-string v1, "PS_OPEN"

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_OPEN:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    const-string v1, "PS_MY_PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_MY_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    const-string v1, "PS_PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    const-string v1, "PS_STOP"

    invoke-direct {v0, v1, v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_STOP:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_START:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_OPEN:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_MY_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_STOP:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

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
    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    return-object v0
.end method
