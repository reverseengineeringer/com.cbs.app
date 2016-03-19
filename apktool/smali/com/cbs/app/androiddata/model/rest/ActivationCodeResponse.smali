.class public Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryDuration()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;->d:J

    return-wide v0
.end method

.method public getRetryInterval()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;->a:J

    return-wide v0
.end method

.method public setActivationCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;->e:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setRetryDuration(J)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;->d:J

    .line 47
    return-void
.end method

.method public setRetryInterval(J)V
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;->a:J

    .line 23
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeResponse;->c:Z

    .line 39
    return-void
.end method
