.class Landroid/support/v7/media/RemotePlaybackClient$2;
.super Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RemotePlaybackClient;

.field final synthetic val$callback:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RemotePlaybackClient;Ljava/lang/String;Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iput-object p2, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$sessionId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$callback:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$callback:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;

    # invokes: Landroid/support/v7/media/RemotePlaybackClient;->handleError(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/v7/media/RemotePlaybackClient;->access$600(Landroid/support/v7/media/RemotePlaybackClient;Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 676
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 646
    if-eqz p1, :cond_3

    .line 647
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$sessionId:Ljava/lang/String;

    const-string v1, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/support/v7/media/RemotePlaybackClient;->inferMissingResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/support/v7/media/RemotePlaybackClient;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    const-string v0, "android.media.intent.extra.SESSION_STATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaSessionStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaSessionStatus;

    move-result-object v0

    .line 651
    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    # invokes: Landroid/support/v7/media/RemotePlaybackClient;->adoptSession(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/support/v7/media/RemotePlaybackClient;->access$200(Landroid/support/v7/media/RemotePlaybackClient;Ljava/lang/String;)V

    .line 652
    if-eqz v1, :cond_3

    .line 653
    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z
    invoke-static {}, Landroid/support/v7/media/RemotePlaybackClient;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received result from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Landroid/support/v7/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {p1}, Landroid/support/v7/media/RemotePlaybackClient;->access$400(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sessionStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 660
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$callback:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;

    invoke-virtual {v2, p1, v1, v0}, Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;->onResult(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.intent.action.END_SESSION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;
    invoke-static {v0}, Landroid/support/v7/media/RemotePlaybackClient;->access$700(Landroid/support/v7/media/RemotePlaybackClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v0, v4}, Landroid/support/v7/media/RemotePlaybackClient;->setSessionId(Ljava/lang/String;)V

    .line 671
    :cond_1
    :goto_0
    return-void

    .line 662
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.intent.action.END_SESSION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v7/media/RemotePlaybackClient;->access$700(Landroid/support/v7/media/RemotePlaybackClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v1, v4}, Landroid/support/v7/media/RemotePlaybackClient;->setSessionId(Ljava/lang/String;)V

    :cond_2
    throw v0

    .line 670
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient$2;->val$callback:Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;

    # invokes: Landroid/support/v7/media/RemotePlaybackClient;->handleInvalidResult(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2, p1}, Landroid/support/v7/media/RemotePlaybackClient;->access$500(Landroid/support/v7/media/RemotePlaybackClient;Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Landroid/os/Bundle;)V

    goto :goto_0
.end method
