.class public Lcom/cbs/app/view/model/rest/PlayBillingResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private subscriptionId:Ljava/lang/String;

.field private success:Z

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->success:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->message:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setSubscriptionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->subscriptionId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->success:Z

    .line 30
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/PlayBillingResponse;->token:Ljava/lang/String;

    .line 38
    return-void
.end method
