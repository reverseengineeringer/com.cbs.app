.class Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPDataSource/voOSDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPDataSource/voOSDataSource;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPDataSource/voOSDataSource;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->this$0:Lcom/visualon/OSMPDataSource/voOSDataSource;

    .line 205
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 206
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->this$0:Lcom/visualon/OSMPDataSource/voOSDataSource;

    # getter for: Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J
    invoke-static {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->access$000(Lcom/visualon/OSMPDataSource/voOSDataSource;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 214
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "vomeplayer went away with unhandled events"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x7dfffffa

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->arg2:I

    const v1, 0x109901

    if-ne v0, v1, :cond_2

    .line 236
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->this$0:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Pause()I

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->this$0:Lcom/visualon/OSMPDataSource/voOSDataSource;

    # getter for: Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;
    invoke-static {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->access$100(Lcom/visualon/OSMPDataSource/voOSDataSource;)Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->this$0:Lcom/visualon/OSMPDataSource/voOSDataSource;

    # getter for: Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;
    invoke-static {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->access$100(Lcom/visualon/OSMPDataSource/voOSDataSource;)Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;->onDataSourceEvent(IIILjava/lang/Object;)I

    goto :goto_0
.end method
