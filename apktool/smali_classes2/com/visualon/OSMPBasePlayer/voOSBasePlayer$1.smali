.class Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->startTimer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)V
    .locals 0

    .prologue
    .line 3128
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 3131
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSubtitleInEngine:Z
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1600(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1700(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 3190
    :cond_0
    :goto_0
    return-void

    .line 3133
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunIsFirstCalled:Z
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1800(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3137
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 3138
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOffsetTime:I
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$800(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 3141
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOffsetTime:I
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$800(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3145
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOffsetTime:I
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$800(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)I

    move-result v0

    .line 3148
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SUBTITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->ordinal()I

    move-result v4

    invoke-virtual {v1, v4, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetSample(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    .line 3149
    if-nez v0, :cond_3

    .line 3151
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v1

    const/16 v2, 0x2001

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3154
    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->closeCaptionOutput:Z
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1900(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3157
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    .line 3158
    if-eqz v1, :cond_4

    .line 3159
    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->parcelToSubtitleInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-result-object v0

    .line 3165
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3166
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v1

    const/16 v2, 0x2001

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3167
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;->onEvent(IIILjava/lang/Object;)I

    goto/16 :goto_0

    .line 3162
    :cond_4
    new-instance v1, Lcom/visualon/widget/ClosedCaptionManager;

    invoke-direct {v1}, Lcom/visualon/widget/ClosedCaptionManager;-><init>()V

    .line 3163
    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->parcelToSubtitleInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-result-object v0

    goto :goto_1

    .line 3172
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3174
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$100(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPEngine/voOnStreamSDK;

    move-result-object v1

    const-wide/16 v6, 0xe

    invoke-virtual {v1, v6, v7}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    .line 3175
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # invokes: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v6

    .line 3176
    if-eqz v6, :cond_0

    .line 3178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3179
    const/4 v1, 0x0

    .line 3180
    const/4 v7, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v0, v7, v10}, Lcom/visualon/widget/ClosedCaptionManager;->handleRawData(Landroid/os/Parcel;ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3182
    const-string v6, "@@@OSMPBasePlayer"

    const-string v7, "CloseCaption Surface Subtitle parser step1 is %d, step2 is %d, step3 is %d, total is %d."

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sub-long v12, v4, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x2

    sub-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x3

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v4

    invoke-static {v6, v7, v10}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3184
    const/4 v0, 0x1

    .line 3187
    :goto_2
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v1

    const/16 v2, 0x2001

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3188
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;->this$0:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    # getter for: Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    invoke-static {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method
