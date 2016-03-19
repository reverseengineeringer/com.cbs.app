.class Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_3

    .line 145
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "+++ doing clearWidget +++"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$000(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mIsPreview:Z
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$100(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$000(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 183
    :goto_0
    return-void

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const-string v1, ""

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mSubtitleText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$202(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 2"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$300(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 3"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$300(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 157
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 4"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 5"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->rlMain:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$400(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$300(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 162
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 6"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_1
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 7"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v1, 0x0

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->llWindow1:Landroid/widget/RelativeLayout;
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$302(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 167
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 8"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v1, 0x0

    # setter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->textViewOfRows:Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$502(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$TextOutLinesView;

    .line 169
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 9"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_2
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "checkpoint 10"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$000(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "--- doing clearWidget ---"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 175
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$000(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 178
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_4

    .line 179
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->invalidateView()V
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$600(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    goto/16 :goto_0

    .line 181
    :cond_4
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v2, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager;->createImageView(ZLcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)V
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->access$700(Lcom/visualon/OSMPSubTitle/voSubTitleManager;ZLcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)V

    goto/16 :goto_0
.end method
