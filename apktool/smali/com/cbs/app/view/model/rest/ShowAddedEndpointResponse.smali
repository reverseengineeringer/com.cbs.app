.class public Lcom/cbs/app/view/model/rest/ShowAddedEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x20e02e5685065L


# instance fields
.field private item:Lcom/cbs/app/view/model/FavoriteShow;

.field private message:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()Lcom/cbs/app/view/model/FavoriteShow;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowAddedEndpointResponse;->item:Lcom/cbs/app/view/model/FavoriteShow;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowAddedEndpointResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/ShowAddedEndpointResponse;->success:Z

    return v0
.end method

.method public setItem(Lcom/cbs/app/view/model/FavoriteShow;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowAddedEndpointResponse;->item:Lcom/cbs/app/view/model/FavoriteShow;

    .line 46
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowAddedEndpointResponse;->message:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/ShowAddedEndpointResponse;->success:Z

    .line 38
    return-void
.end method
