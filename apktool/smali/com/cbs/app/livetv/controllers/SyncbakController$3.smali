.class final Lcom/cbs/app/livetv/controllers/SyncbakController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/controllers/SyncbakController;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/controllers/SyncbakController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SyncbakController;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$3;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$3;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$3;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    const/16 v1, 0x7d2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SyncbakController;->i()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "success() called with: model = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$3;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 256
    :cond_0
    instance-of v1, p1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;

    if-eqz v1, :cond_2

    .line 257
    check-cast p1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;

    .line 258
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;->getChannels()Ljava/util/ArrayList;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$3;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(Z)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method
