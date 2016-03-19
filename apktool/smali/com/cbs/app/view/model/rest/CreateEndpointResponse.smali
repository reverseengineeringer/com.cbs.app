.class public Lcom/cbs/app/view/model/rest/CreateEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1cab26e08826fbe2L


# instance fields
.field private errorMessages:Ljava/util/HashMap;
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

.field private errors:Ljava/util/HashMap;
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

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation
.end field

.field private success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private userId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 40
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
    .line 67
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->errorMessages:Ljava/util/HashMap;

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
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->errors:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->userId:J

    return-wide v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->success:Z

    return v0
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
    .line 71
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->errorMessages:Ljava/util/HashMap;

    .line 72
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
    .line 47
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->errors:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->message:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->success:Z

    .line 56
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/CreateEndpointResponse;->userId:J

    .line 80
    return-void
.end method
