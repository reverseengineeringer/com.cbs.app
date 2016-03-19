.class public Lcom/cbs/app/view/model/rest/FavoriteShowListEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShowList;",
            ">;"
        }
    .end annotation
.end field

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
.method public getLists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShowList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/FavoriteShowListEndpointResponse;->lists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/FavoriteShowListEndpointResponse;->success:Z

    return v0
.end method

.method public setLists(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShowList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/FavoriteShowListEndpointResponse;->lists:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/FavoriteShowListEndpointResponse;->success:Z

    .line 27
    return-void
.end method
