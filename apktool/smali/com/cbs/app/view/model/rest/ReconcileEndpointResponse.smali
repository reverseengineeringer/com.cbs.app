.class public Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x2ea9f3f4ef492227L


# instance fields
.field private isLoggedIn:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isLoggedIn"
    .end annotation
.end field

.field private registrationStatus:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "registrationStatus"
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegistrationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->registrationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->userId:J

    return-wide v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->isLoggedIn:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->success:Z

    return v0
.end method

.method public setLoggedIn(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->isLoggedIn:Z

    .line 52
    return-void
.end method

.method public setRegistrationStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->registrationStatus:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->success:Z

    .line 44
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->userId:J

    .line 60
    return-void
.end method
