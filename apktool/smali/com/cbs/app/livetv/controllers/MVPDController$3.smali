.class final Lcom/cbs/app/livetv/controllers/MVPDController$3;
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
    .line 116
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/MVPDController$3;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController$3;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Lcom/cbs/app/livetv/controllers/MVPDController;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    check-cast p1, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;

    .line 123
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->getIsTokenValid()Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    const-string v1, "VALID_TOKEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController$3;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController$3;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-static {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->e(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Lcom/cbs/app/livetv/controllers/MVPDController;Ljava/lang/String;)V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController$3;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-static {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->f(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->getTokenUserId()Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->isAccessibility()Z

    .line 137
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->getTokenGeneratedAt()J

    .line 138
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->getContentId()Ljava/lang/String;

    .line 145
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Authorization FAILED: Failed media token validation: Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController$3;->a:Lcom/cbs/app/livetv/controllers/MVPDController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Lcom/cbs/app/livetv/controllers/MVPDController;Ljava/lang/String;)V

    goto :goto_0
.end method
