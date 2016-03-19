.class Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->adBreakProgressed(Lcom/mdialog/android/stream/AdBreak;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;

.field final synthetic val$adBreak:Lcom/mdialog/android/stream/AdBreak;

.field final synthetic val$durationRemaining:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;Lcom/mdialog/android/stream/AdBreak;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$adBreak:Lcom/mdialog/android/stream/AdBreak;

    iput-object p3, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$durationRemaining:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 303
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    if-eqz v0, :cond_1

    .line 305
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;

    iget-object v1, v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->access$100(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 308
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$adBreak:Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->isUnwatched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$durationRemaining:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$adBreak:Lcom/mdialog/android/stream/AdBreak;

    invoke-interface/range {v0 .. v7}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;->onCustomerAdEvent(IJJLjava/lang/Object;Ljava/lang/Object;)I

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$durationRemaining:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mContSeekPos:J
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->access$200(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    # invokes: Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->seekContentTo()V
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->access$300(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)V

    .line 319
    :cond_1
    :goto_0
    const-string v0, "@@@AdMdialogEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$adBreak:Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v2}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", durationRemaining:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$durationRemaining:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    return-void

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$adBreak:Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v2}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$adBreak:Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v4}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;->val$durationRemaining:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;->onCustomerAdEvent(IJJLjava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0
.end method
