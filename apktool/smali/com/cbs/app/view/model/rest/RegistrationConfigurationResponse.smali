.class public Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4d2L


# instance fields
.field private numFound:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field

.field private registrationConfiguration:Lcom/cbs/app/view/model/RegistrationConfiguration;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "result"
    .end annotation
.end field

.field private success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumFound()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;->numFound:I

    return v0
.end method

.method public getRegistrationConfiguration()Lcom/cbs/app/view/model/RegistrationConfiguration;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;->registrationConfiguration:Lcom/cbs/app/view/model/RegistrationConfiguration;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;->success:Z

    return v0
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;->numFound:I

    .line 39
    return-void
.end method

.method public setRegistrationConfiguration(Lcom/cbs/app/view/model/RegistrationConfiguration;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;->registrationConfiguration:Lcom/cbs/app/view/model/RegistrationConfiguration;

    .line 31
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/RegistrationConfigurationResponse;->success:Z

    .line 47
    return-void
.end method
