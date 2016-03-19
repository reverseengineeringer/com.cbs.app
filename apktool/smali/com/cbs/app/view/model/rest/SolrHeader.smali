.class public Lcom/cbs/app/view/model/rest/SolrHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4041fc5ffcf13f6aL


# instance fields
.field private params:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "params"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/SolrHeader;->params:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/cbs/app/view/model/rest/SolrHeader;->status:I

    return v0
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/SolrHeader;->params:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/cbs/app/view/model/rest/SolrHeader;->status:I

    .line 29
    return-void
.end method
