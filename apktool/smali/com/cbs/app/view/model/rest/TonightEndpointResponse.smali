.class public Lcom/cbs/app/view/model/rest/TonightEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x207aa2e465ff7605L


# instance fields
.field private registrationConfigurationResponse:Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "configuration"
    .end annotation
.end field

.field private tonightResponse:Lcom/cbs/app/view/model/rest/TonightResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tonight"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegistrationConfigurationResponse()Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;->registrationConfigurationResponse:Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;

    return-object v0
.end method

.method public getTonightResponse()Lcom/cbs/app/view/model/rest/TonightResponse;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;->tonightResponse:Lcom/cbs/app/view/model/rest/TonightResponse;

    return-object v0
.end method

.method public setRegistrationConfigurationResponse(Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;->registrationConfigurationResponse:Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;

    .line 36
    return-void
.end method

.method public setTonightResponse(Lcom/cbs/app/view/model/rest/TonightResponse;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/TonightEndpointResponse;->tonightResponse:Lcom/cbs/app/view/model/rest/TonightResponse;

    .line 27
    return-void
.end method
