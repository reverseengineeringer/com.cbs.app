.class Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voID3ContainerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    .line 42
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    # getter for: Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;
    invoke-static {v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->access$000(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    const-string v0, "@@@voID3ContainerImpl"

    const-string v1, "voID3ContainerImpl went away with unhandled events"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0xf0ffffc

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    # getter for: Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;
    invoke-static {v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->access$100(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;->onGetPos()J

    move-result-wide v0

    long-to-int v0, v0

    .line 55
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->check(J)V

    goto :goto_0
.end method
