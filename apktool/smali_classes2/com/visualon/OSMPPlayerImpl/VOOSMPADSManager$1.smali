.class Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomerAdEvent(IJJLjava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    iget-boolean v0, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->selfTest:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->strUrl:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->access$000(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    move-result-object v0

    const v1, -0x134ffffb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;->onAdsEvent(IIILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 178
    :cond_1
    if-eqz p6, :cond_2

    .line 179
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->access$100(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    move-result-object v0

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->initAgain(Ljava/lang/String;)I

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->Open()I

    .line 181
    const-string v0, "@@@VOOSMPADSManager"

    const-string v1, "messageUrlReceived:\r\nobj1.toString()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :pswitch_1
    if-nez p7, :cond_3

    .line 194
    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 195
    const/4 v1, 0x0

    aput-wide p2, v0, v1

    .line 196
    const/4 v1, 0x1

    aput-wide p4, v0, v1

    .line 197
    const/4 v1, 0x2

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 198
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 199
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    .line 200
    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    .line 201
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->access$100(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setPlaybackAdInfo([J[Ljava/lang/String;II)I

    .line 202
    const-string v1, "@@@VOOSMPADSManager"

    const-string v2, "messageDurationInformationReceived: %d, %d, %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v6, v0, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-wide v6, v0, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-wide v6, v0, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 204
    :cond_3
    if-eqz p7, :cond_0

    .line 207
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->access$000(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    move-result-object v0

    const v1, -0x1340fffd

    long-to-int v2, p2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p7}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;->onAdsEvent(IIILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 208
    const-string v0, "@@@VOOSMPADSManager"

    const-string v1, "messageDurationInformationReceived: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 215
    :pswitch_2
    if-eqz p6, :cond_4

    .line 217
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->access$000(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    move-result-object v0

    const v1, -0x1340fffc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;->onAdsEvent(IIILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 218
    const-string v0, "@@@VOOSMPADSManager"

    const-string v1, "messageADEventReceived: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    if-eqz p7, :cond_0

    .line 223
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->access$000(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    move-result-object v0

    const v1, -0x1341fffe

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p7}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;->onAdsEvent(IIILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
