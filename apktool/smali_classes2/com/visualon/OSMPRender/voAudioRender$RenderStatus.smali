.class final enum Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPRender/voAudioRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RenderStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

.field public static final enum PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

.field public static final enum PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

.field public static final enum STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    new-instance v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    new-instance v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->$VALUES:[Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->$VALUES:[Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v0}, [Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    return-object v0
.end method
