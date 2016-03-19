.class Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPOutputControl/voOSDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 3

    .prologue
    .line 45
    const-string v0, "@@@voOSDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output Control, Display #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " added."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # invokes: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->listDisplay()V
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$000(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V

    .line 49
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$200(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onMiracastOpened()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$300(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onExternalDisplayConnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # invokes: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->forbidMiracast()V
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$400(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V

    .line 56
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .prologue
    .line 60
    const-string v0, "@@@voOSDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output Control, Display #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    .prologue
    .line 65
    const-string v0, "@@@voOSDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output Control, Display #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$200(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onMiracastClosed()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$300(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # getter for: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onExternalDisplayDisconnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    # invokes: Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->listDisplay()V
    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$000(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V

    .line 78
    return-void
.end method
