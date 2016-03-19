.class public Lcom/cbs/app/androiddata/model/rest/ShowAddedEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/cbs/app/androiddata/model/FavoriteShow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()Lcom/cbs/app/androiddata/model/FavoriteShow;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowAddedEndpointResponse;->c:Lcom/cbs/app/androiddata/model/FavoriteShow;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowAddedEndpointResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setItem(Lcom/cbs/app/androiddata/model/FavoriteShow;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowAddedEndpointResponse;->c:Lcom/cbs/app/androiddata/model/FavoriteShow;

    .line 41
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowAddedEndpointResponse;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowAddedEndpointResponse;->b:Z

    .line 33
    return-void
.end method
