.class public Lcom/cbs/app/androiddata/model/rest/AffiliateEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Lcom/cbs/app/androiddata/model/Affiliate;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "affiliate"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getAffiliate()Lcom/cbs/app/androiddata/model/Affiliate;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AffiliateEndpointResponse;->a:Lcom/cbs/app/androiddata/model/Affiliate;

    return-object v0
.end method

.method public setAffiliate(Lcom/cbs/app/androiddata/model/Affiliate;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AffiliateEndpointResponse;->a:Lcom/cbs/app/androiddata/model/Affiliate;

    .line 30
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/AffiliateEndpointResponse;->b:Z

    .line 38
    return-void
.end method
