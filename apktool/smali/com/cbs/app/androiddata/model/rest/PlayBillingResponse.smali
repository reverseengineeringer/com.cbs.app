.class public Lcom/cbs/app/androiddata/model/rest/PlayBillingResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/PlayBillingResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/PlayBillingResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/PlayBillingResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/PlayBillingResponse;->d:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSubscriptionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/PlayBillingResponse;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/PlayBillingResponse;->b:Z

    .line 32
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/PlayBillingResponse;->c:Ljava/lang/String;

    .line 40
    return-void
.end method
