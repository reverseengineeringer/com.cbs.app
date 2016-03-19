.class final Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RemotePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusReceiver"
.end annotation


# static fields
.field public static final ACTION_ITEM_STATUS_CHANGED:Ljava/lang/String; = "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED"

.field public static final ACTION_SESSION_STATUS_CHANGED:Ljava/lang/String; = "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RemotePlaybackClient;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/RemotePlaybackClient;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/RemotePlaybackClient;Landroid/support/v7/media/RemotePlaybackClient$1;)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0, p1}, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;-><init>(Landroid/support/v7/media/RemotePlaybackClient;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 791
    const-string v0, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 792
    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;
    invoke-static {v0}, Landroid/support/v7/media/RemotePlaybackClient;->access$700(Landroid/support/v7/media/RemotePlaybackClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    const-string v0, "android.media.intent.extra.SESSION_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaSessionStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaSessionStatus;

    move-result-object v3

    .line 800
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 801
    const-string v1, "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 802
    const-string v0, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 803
    if-eqz v4, :cond_0

    .line 808
    const-string v0, "android.media.intent.extra.ITEM_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaItemStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaItemStatus;

    move-result-object v5

    .line 810
    if-eqz v5, :cond_0

    .line 815
    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z
    invoke-static {}, Landroid/support/v7/media/RemotePlaybackClient;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received item status callback: sessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;
    invoke-static {v0}, Landroid/support/v7/media/RemotePlaybackClient;->access$800(Landroid/support/v7/media/RemotePlaybackClient;)Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;
    invoke-static {v0}, Landroid/support/v7/media/RemotePlaybackClient;->access$800(Landroid/support/v7/media/RemotePlaybackClient;)Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onItemStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;Ljava/lang/String;Landroid/support/v7/media/MediaItemStatus;)V

    goto :goto_0

    .line 826
    :cond_3
    const-string v1, "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    if-eqz v3, :cond_0

    .line 833
    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z
    invoke-static {}, Landroid/support/v7/media/RemotePlaybackClient;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received session status callback: sessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 838
    :cond_4
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;
    invoke-static {v0}, Landroid/support/v7/media/RemotePlaybackClient;->access$800(Landroid/support/v7/media/RemotePlaybackClient;)Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$StatusReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    # getter for: Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;
    invoke-static {v0}, Landroid/support/v7/media/RemotePlaybackClient;->access$800(Landroid/support/v7/media/RemotePlaybackClient;)Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onSessionStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;)V

    goto/16 :goto_0
.end method
