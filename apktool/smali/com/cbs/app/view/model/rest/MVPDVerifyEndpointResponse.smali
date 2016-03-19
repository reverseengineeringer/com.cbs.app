.class public Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# instance fields
.field private accessibility:Z

.field private contentId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_id"
    .end annotation
.end field

.field private isTokenValid:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_token_valid"
    .end annotation
.end field

.field private tokenGeneratedAt:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_generated_at"
    .end annotation
.end field

.field private tokenMvpdId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_mvpd_id"
    .end annotation
.end field

.field private tokenProxyMvpdId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_proxy_mvpd_id"
    .end annotation
.end field

.field private tokenUserId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTokenValid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->isTokenValid:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenGeneratedAt()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->tokenGeneratedAt:J

    return-wide v0
.end method

.method public getTokenMvpdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->tokenMvpdId:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenProxyMvpdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->tokenProxyMvpdId:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->tokenUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessibility()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->accessibility:Z

    return v0
.end method

.method public setAccessibility(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->accessibility:Z

    .line 61
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->contentId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setIsTokenValid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->isTokenValid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTokenGeneratedAt(J)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->tokenGeneratedAt:J

    .line 53
    return-void
.end method

.method public setTokenMvpdId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->tokenMvpdId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTokenProxyMvpdId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->tokenProxyMvpdId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setTokenUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;->tokenUserId:Ljava/lang/String;

    .line 45
    return-void
.end method
