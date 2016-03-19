.class public Lcom/cbs/app/androiddata/model/rest/SolrHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "params"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SolrHeader;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/SolrHeader;->b:I

    return v0
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SolrHeader;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/SolrHeader;->b:I

    .line 26
    return-void
.end method
