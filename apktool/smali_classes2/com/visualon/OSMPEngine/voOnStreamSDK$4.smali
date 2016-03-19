.class Lcom/visualon/OSMPEngine/voOnStreamSDK$4;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPEngine/voOnStreamSDK;->createTimerTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V
    .locals 0

    .prologue
    .line 2639
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$4;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$4;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$1300(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    move-result-object v0

    const/16 v1, 0x2001

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendEmptyMessage(I)Z

    .line 2643
    return-void
.end method
