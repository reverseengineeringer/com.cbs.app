.class public Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    .line 161
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v0, v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v0, v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;->onHDMIStateChangeEvent(ILjava/lang/Object;)V

    .line 177
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 178
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v0, v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    if-nez v0, :cond_2

    .line 172
    const-string v0, "HDMIStateCheck"

    const-string v1, "m_OnHDMIStateChangeListener should no be null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 174
    const-string v0, "HDMIStateCheck"

    const-string v1, "Message.obj field should not be null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
