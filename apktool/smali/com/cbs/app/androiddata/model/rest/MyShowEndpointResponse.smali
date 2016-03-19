.class public Lcom/cbs/app/androiddata/model/rest/MyShowEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/cbs/app/androiddata/model/FavoriteShowList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getFavshowlist()Lcom/cbs/app/androiddata/model/FavoriteShowList;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MyShowEndpointResponse;->b:Lcom/cbs/app/androiddata/model/FavoriteShowList;

    return-object v0
.end method

.method public setFavshowlist(Lcom/cbs/app/androiddata/model/FavoriteShowList;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MyShowEndpointResponse;->b:Lcom/cbs/app/androiddata/model/FavoriteShowList;

    .line 30
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/MyShowEndpointResponse;->a:Z

    .line 22
    return-void
.end method
