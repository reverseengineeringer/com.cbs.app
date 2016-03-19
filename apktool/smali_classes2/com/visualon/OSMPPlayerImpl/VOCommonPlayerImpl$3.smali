.class Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)V
    .locals 0

    .prologue
    .line 3945
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsEvent(IIILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 3951
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$000(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3952
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4074
    :goto_0
    return-object v0

    .line 3956
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    move-object v0, v1

    .line 4067
    :goto_2
    if-eqz v0, :cond_5

    .line 4069
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 4070
    if-nez v0, :cond_5

    .line 4071
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 3959
    :sswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # setter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bAdHideSubtitle:Z
    invoke-static {v0, v5}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$1002(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Z)Z

    .line 3960
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->refreshSubtitle()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3962
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_CONTENT_START:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 3968
    :sswitch_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_CONTENT_END:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 3973
    :sswitch_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_SKIPPABLE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 3978
    :sswitch_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # setter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bAdHideSubtitle:Z
    invoke-static {v0, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$1002(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Z)Z

    .line 3979
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->refreshSubtitle()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3981
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_AD_START:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 3986
    :sswitch_4
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_AD_END:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 3992
    :sswitch_5
    if-eqz p2, :cond_2

    .line 3993
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_OPEN_FINISHED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 3996
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # invokes: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->onLoadVideoComplete()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$1100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 3998
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v2, v0, :cond_3

    .line 3999
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$000(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4000
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_OPEN_FINISHED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    invoke-virtual {v2, v3, v0, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4004
    :cond_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 4010
    :sswitch_6
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_GEO_BLOCKED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 4016
    :sswitch_7
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_THIRD_AD_PROGRESS:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 4021
    :sswitch_8
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_THIRD_AD_EVENT_START:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 4030
    :sswitch_9
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_NOT_AVAILABLE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 4037
    :sswitch_a
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_DATA_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    goto :goto_2

    .line 4042
    :sswitch_b
    if-nez p4, :cond_4

    .line 4043
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    :cond_4
    move-object v0, p4

    .line 4045
    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;

    .line 4047
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingAction;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->valueOf(I)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    move-result-object v0

    .line 4049
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    if-ne v0, v2, :cond_1

    .line 4051
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "ADS wrapper java VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4053
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_DONE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v0, v2, v5, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4055
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_PLAY_COMPLETE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v0, v2, v5, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4057
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "send VO_OSMP_CB_PLAY_WHOLE_COMPLETE %x\n"

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_PLAY_WHOLE_COMPLETE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4058
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_PLAY_WHOLE_COMPLETE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v0, v2, v5, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_1

    .line 4074
    :cond_5
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 3956
    nop

    :sswitch_data_0
    .sparse-switch
        -0x134fffff -> :sswitch_0
        -0x134ffffe -> :sswitch_1
        -0x134ffffd -> :sswitch_3
        -0x134ffffc -> :sswitch_4
        -0x134ffffb -> :sswitch_5
        -0x134ffff8 -> :sswitch_2
        -0x134efffe -> :sswitch_b
        -0x1341ffff -> :sswitch_6
        -0x1341fffe -> :sswitch_9
        -0x1341fffd -> :sswitch_9
        -0x1341fffc -> :sswitch_9
        -0x1341fffb -> :sswitch_9
        -0x1341fffa -> :sswitch_9
        -0x1341fff9 -> :sswitch_a
        -0x1341fff8 -> :sswitch_a
        -0x1341fff7 -> :sswitch_a
        -0x1340fffd -> :sswitch_7
        -0x1340fffc -> :sswitch_8
    .end sparse-switch
.end method
