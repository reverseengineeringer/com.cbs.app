.class public Lcom/cbs/app/androiddata/model/rest/StatusEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private b:Lcom/cbs/app/androiddata/model/Status;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "appVersion"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "NAME"
    .end annotation
.end field

.field private d:Lcom/cbs/app/androiddata/model/AppConfig;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "appConfig"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/rest/StatusEndpointResponse;->a:Z

    return-void
.end method


# virtual methods
.method public getAppConfig()Lcom/cbs/app/androiddata/model/AppConfig;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/StatusEndpointResponse;->d:Lcom/cbs/app/androiddata/model/AppConfig;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/StatusEndpointResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/cbs/app/androiddata/model/Status;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/StatusEndpointResponse;->b:Lcom/cbs/app/androiddata/model/Status;

    return-object v0
.end method

.method public setAppConfig(Lcom/cbs/app/androiddata/model/AppConfig;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/StatusEndpointResponse;->d:Lcom/cbs/app/androiddata/model/AppConfig;

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/StatusEndpointResponse;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setStatus(Lcom/cbs/app/androiddata/model/Status;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/StatusEndpointResponse;->b:Lcom/cbs/app/androiddata/model/Status;

    .line 41
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/StatusEndpointResponse;->a:Z

    .line 33
    return-void
.end method
