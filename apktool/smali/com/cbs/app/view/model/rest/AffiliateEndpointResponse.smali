.class public Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private affiliate:Lcom/cbs/app/view/model/Affiliate;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "affiliate"
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
    .line 19
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getAffiliate()Lcom/cbs/app/view/model/Affiliate;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;->affiliate:Lcom/cbs/app/view/model/Affiliate;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;->success:Z

    return v0
.end method

.method public setAffiliate(Lcom/cbs/app/view/model/Affiliate;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;->affiliate:Lcom/cbs/app/view/model/Affiliate;

    .line 29
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;->success:Z

    .line 37
    return-void
.end method
