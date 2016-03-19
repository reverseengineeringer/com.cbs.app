.class public Lcom/cbs/app/androiddata/model/rest/SocialLoginEndpointResponse;
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

.field private b:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isLoggedIn"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userId"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "registrationStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegistrationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SocialLoginEndpointResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/SocialLoginEndpointResponse;->c:J

    return-wide v0
.end method

.method public setLoggedIn(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/SocialLoginEndpointResponse;->b:Z

    .line 45
    return-void
.end method

.method public setRegistrationStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SocialLoginEndpointResponse;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/SocialLoginEndpointResponse;->a:Z

    .line 37
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/SocialLoginEndpointResponse;->c:J

    .line 53
    return-void
.end method
