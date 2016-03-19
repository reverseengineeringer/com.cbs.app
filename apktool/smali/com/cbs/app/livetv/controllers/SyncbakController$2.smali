.class final Lcom/cbs/app/livetv/controllers/SyncbakController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/controllers/SyncbakController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

.field final synthetic b:I

.field final synthetic c:Lcom/cbs/app/livetv/controllers/SyncbakController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SyncbakController;Lcom/cbs/app/view/model/syncbak/SyncbakStream;I)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$2;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    iput-object p2, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$2;->a:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    iput p3, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$2;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$2;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    const/16 v1, 0x7d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$2;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SyncbakController;->i()Ljava/lang/String;

    .line 119
    instance-of v0, p1, Lcom/cbs/app/view/model/VideoStreamsEndpoint;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcom/cbs/app/view/model/VideoStreamsEndpoint;

    .line 121
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->isOverThreshold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$2;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    const/16 v1, 0x7dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$2;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$2;->a:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V

    goto :goto_0
.end method
