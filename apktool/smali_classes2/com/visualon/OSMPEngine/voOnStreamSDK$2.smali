.class Lcom/visualon/OSMPEngine/voOnStreamSDK$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPEngine/voOnStreamSDK;
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
    .line 656
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$2;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalDisplayConnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 683
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    if-ne p1, v0, :cond_0

    .line 685
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v1

    aput v1, v0, v5

    aput v4, v0, v4

    .line 687
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$2;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0x63

    invoke-virtual {v1, v2, v3, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 688
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, HDMIState param is %d"

    new-array v3, v4, [Ljava/lang/Object;

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    :cond_0
    return-void
.end method

.method public onExternalDisplayDisconnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 697
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    if-ne p1, v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$2;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$2;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->hdmiDisConnect()V

    .line 701
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v1

    aput v1, v0, v4

    aput v4, v0, v5

    .line 703
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$2;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0x63

    invoke-virtual {v1, v2, v3, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 704
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, HDMIState param is %d"

    new-array v3, v5, [Ljava/lang/Object;

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    :cond_1
    return-void
.end method

.method public onMiracastClosed()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 672
    new-array v0, v4, [I

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v1

    aput v1, v0, v5

    aput v5, v0, v6

    .line 674
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$2;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0x63

    invoke-virtual {v1, v2, v3, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 675
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, type is %s, value is %d"

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    return-void
.end method

.method public onMiracastOpened()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 661
    new-array v0, v4, [I

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v1

    aput v1, v0, v6

    aput v5, v0, v5

    .line 663
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$2;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0x63

    invoke-virtual {v1, v2, v3, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 664
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, type is %s, value is %d"

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    return-void
.end method
