.class final Lcom/cbs/app/livetv/controllers/MVPDController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/controllers/MVPDController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/controllers/MVPDController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/MVPDController;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/MVPDController$1;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 65
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/MVPDConfigsEndpointResponse;

    if-eqz v0, :cond_2

    .line 66
    check-cast p1, Lcom/cbs/app/view/model/rest/MVPDConfigsEndpointResponse;

    .line 68
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController$1;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController$1;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/MVPDConfigsEndpointResponse;->getMvpdConfigList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController$1;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    .line 89
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController$1;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->b(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/adobepass/accessenabler/a/g;

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/a/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/model/MVPDConfig;->setAdobeLogoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController$1;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->c(Lcom/cbs/app/livetv/controllers/MVPDController;)Z

    .line 98
    :cond_2
    return-void
.end method
