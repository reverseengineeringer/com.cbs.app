.class final Lcom/cbs/app/livetv/controllers/SyncbakController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/livetv/controllers/SyncbakController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SyncbakController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$4;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    iput-object p2, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$4;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$4;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    const/16 v2, 0x7dc

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$4;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->L(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$4;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0801b9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$4;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 284
    :cond_0
    check-cast p1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;

    .line 285
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;->getMvpds()Ljava/util/List;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v1

    .line 288
    :goto_1
    if-eqz v3, :cond_3

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDInfo;

    .line 290
    invoke-static {}, Lcom/cbs/app/livetv/controllers/SyncbakController;->i()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mvpd supported info: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDInfo;->getStationId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDInfo;->getMvpdIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v5, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$4;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDInfo;->getMvpdIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$4;->b:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    invoke-virtual {v0, v1, v3}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ZZ)V

    goto :goto_0

    :cond_2
    move v3, v2

    .line 287
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
