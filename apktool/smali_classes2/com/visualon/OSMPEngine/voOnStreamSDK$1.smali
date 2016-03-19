.class Lcom/visualon/OSMPEngine/voOnStreamSDK$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;


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
    .line 570
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$1;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHDMIStateChangeEvent(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;
    invoke-static {}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3400()Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    move-result-object v0

    if-nez v0, :cond_0

    .line 578
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "m_HDMIStateCheck is null, do not use onHDMIStateChangeEvent "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    :goto_0
    return-void

    .line 584
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 611
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v4

    aput v4, v3, v2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    aput v0, v3, v1

    .line 614
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$1;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v4, 0x63

    invoke-virtual {v0, v4, v5, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 615
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v4, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, HDMIState param is %d"

    new-array v5, v1, [Ljava/lang/Object;

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 586
    :sswitch_0
    if-eqz p2, :cond_3

    .line 588
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 590
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 591
    if-ne v0, v1, :cond_3

    move v0, v1

    .line 593
    goto :goto_1

    :sswitch_1
    move v0, v1

    .line 600
    goto :goto_1

    .line 602
    :sswitch_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$1;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$1;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPRender/voAudioRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->hdmiDisConnect()V

    :cond_1
    move v0, v2

    .line 605
    goto :goto_1

    :cond_2
    move v0, v2

    .line 611
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    .line 584
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method
