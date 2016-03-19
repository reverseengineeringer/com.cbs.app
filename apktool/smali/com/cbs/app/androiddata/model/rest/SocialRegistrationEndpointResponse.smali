.class public Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;
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

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "errors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "errorMessages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getErrorMessages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public getErrors()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;->e:J

    return-wide v0
.end method

.method public setErrorMessages(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;->d:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method public setErrors(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;->c:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;->a:Z

    .line 51
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/SocialRegistrationEndpointResponse;->e:J

    .line 75
    return-void
.end method
