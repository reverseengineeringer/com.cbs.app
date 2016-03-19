.class Landroid/support/v7/media/MediaRouteProviderService$1;
.super Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProviderService;

.field final synthetic val$client:Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

.field final synthetic val$controllerId:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$messenger:Landroid/os/Messenger;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;ILandroid/content/Intent;Landroid/os/Messenger;I)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    iput-object p2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$client:Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    iput p3, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$controllerId:I

    iput-object p4, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    iput p6, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$requestId:I

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 319
    # getter for: Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z
    invoke-static {}, Landroid/support/v7/media/MediaRouteProviderService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$client:Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Route control request failed, controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$controllerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", intent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I
    invoke-static {v0, v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 326
    if-eqz p1, :cond_2

    .line 327
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 328
    const-string v0, "error"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$requestId:I

    move-object v4, p2

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->access$400(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$requestId:I

    const/4 v5, 0x0

    move-object v4, p2

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->access$400(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 305
    # getter for: Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z
    invoke-static {}, Landroid/support/v7/media/MediaRouteProviderService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$client:Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Route control request succeeded, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$controllerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I
    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouteProviderService;->access$300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 312
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$requestId:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->access$400(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 315
    :cond_1
    return-void
.end method
