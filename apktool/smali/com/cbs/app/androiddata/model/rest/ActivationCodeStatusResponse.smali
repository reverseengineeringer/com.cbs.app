.class public Lcom/cbs/app/androiddata/model/rest/ActivationCodeStatusResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreationTime()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeStatusResponse;->b:J

    return-wide v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeStatusResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeStatusResponse;->c:J

    return-wide v0
.end method

.method public setCreationTime(J)V
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeStatusResponse;->b:J

    .line 34
    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeStatusResponse;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeStatusResponse;->a:Z

    .line 25
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/ActivationCodeStatusResponse;->c:J

    .line 42
    return-void
.end method
