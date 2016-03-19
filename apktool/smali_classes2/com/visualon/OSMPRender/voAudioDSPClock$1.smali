.class Lcom/visualon/OSMPRender/voAudioDSPClock$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleAudioTimer(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPRender/voAudioDSPClock;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPRender/voAudioDSPClock;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock$1;->this$0:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock$1;->this$0:Lcom/visualon/OSMPRender/voAudioDSPClock;

    # invokes: Lcom/visualon/OSMPRender/voAudioDSPClock;->setDSPTime()V
    invoke-static {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->access$000(Lcom/visualon/OSMPRender/voAudioDSPClock;)V

    .line 78
    return-void
.end method
