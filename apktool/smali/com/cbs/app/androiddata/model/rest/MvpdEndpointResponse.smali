.class public Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_token_valid"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_user_id"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_generated_at"
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_id"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_proxy_mvpd_id"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token_mvpd_id"
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
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTokenValid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenGeneratedAt()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->c:J

    return-wide v0
.end method

.method public getTokenMvpdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenProxyMvpdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessibility(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->d:Z

    .line 61
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->e:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setIsTokenValid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTokenGeneratedAt(J)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->c:J

    .line 53
    return-void
.end method

.method public setTokenMvpdId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->g:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTokenProxyMvpdId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->f:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setTokenUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MvpdEndpointResponse;->b:Ljava/lang/String;

    .line 45
    return-void
.end method
