.class final Lcom/cbs/app/livetv/controllers/SyncbakController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cbs/app/livetv/controllers/SyncbakController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SyncbakController;I)V
    .locals 1

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$1;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$1;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$1;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$1;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_0
    check-cast p1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakStreamsEndpointResponse;

    .line 89
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakStreamsEndpointResponse;->getStreams()Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 91
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SyncbakController;->i()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Stream Info :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakStreamsEndpointResponse;->getStreams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SyncbakController;->i()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Stream Info :"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->getTypeDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$1;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    iget v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$1;->a:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    iget v1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$1;->a:I

    invoke-static {v2, v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/livetv/controllers/SyncbakController;Lcom/cbs/app/view/model/syncbak/SyncbakStream;I)V

    .line 97
    :goto_1
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SyncbakController;->i()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stream response :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$1;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    const/16 v1, 0x7d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    goto :goto_1
.end method
