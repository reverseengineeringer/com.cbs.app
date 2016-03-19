.class public Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private favshowlist:Lcom/cbs/app/view/model/FavoriteShowList;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getFavshowlist()Lcom/cbs/app/view/model/FavoriteShowList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->favshowlist:Lcom/cbs/app/view/model/FavoriteShowList;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->success:Z

    return v0
.end method

.method public setFavshowlist(Lcom/cbs/app/view/model/FavoriteShowList;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->favshowlist:Lcom/cbs/app/view/model/FavoriteShowList;

    .line 33
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/FavoriteShowsEndpointResponse;->success:Z

    .line 25
    return-void
.end method
