.class Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$HDMIListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HDMIListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$HDMIListener;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$1;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$HDMIListener;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;)V

    return-void
.end method


# virtual methods
.method public onHDMIStateChangeEvent(ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->access$100()Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    move-result-object v2

    if-nez v2, :cond_1

    .line 97
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$HDMIListener;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "m_HDMIStateCheck is null, do not use onHDMIStateChangeEvent "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 128
    :cond_2
    :goto_1
    :sswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$HDMIListener;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->mListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->access$300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$HDMIListener;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->mListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->access$300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;

    move-result-object v2

    if-eqz v1, :cond_3

    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_CONNECT:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    :goto_2
    invoke-interface {v2, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;->onHDMIStateChangeEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 105
    :sswitch_1
    if-eqz p2, :cond_2

    .line 107
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 109
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 110
    if-ne v2, v0, :cond_4

    :goto_3
    move v1, v0

    .line 114
    goto :goto_1

    :sswitch_2
    move v1, v0

    .line 119
    goto :goto_1

    .line 129
    :cond_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_DISCONNECT:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x800 -> :sswitch_1
    .end sparse-switch
.end method
