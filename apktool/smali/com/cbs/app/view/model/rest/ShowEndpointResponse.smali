.class public Lcom/cbs/app/view/model/rest/ShowEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x18e18dae2264d34bL


# instance fields
.field private assetCarouselResponse:Lcom/cbs/app/view/model/rest/AssetCarouselResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "assetCarousel"
    .end annotation
.end field

.field private showAssetResponseV2:Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showAssets"
    .end annotation
.end field

.field private showAssetsResponse:Lcom/cbs/app/view/model/rest/ShowAssetsResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "assets"
    .end annotation
.end field

.field private showBlockNavigationResponse:Lcom/cbs/app/view/model/rest/ShowBlockNavigationResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "blockNavigation"
    .end annotation
.end field

.field private showConfigResponse:Lcom/cbs/app/view/model/rest/ShowConfigResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "config"
    .end annotation
.end field

.field private showEpisodeResponse:Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "episode"
    .end annotation
.end field

.field private showSeasonResponse:Lcom/cbs/app/view/model/rest/ShowSeasonResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "season"
    .end annotation
.end field

.field private showShowResponse:Lcom/cbs/app/view/model/rest/ShowResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetCarouselResponse()Lcom/cbs/app/view/model/rest/AssetCarouselResponse;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->assetCarouselResponse:Lcom/cbs/app/view/model/rest/AssetCarouselResponse;

    return-object v0
.end method

.method public getShowAssetResponseV2()Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showAssetResponseV2:Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;

    return-object v0
.end method

.method public getShowAssetsResponse()Lcom/cbs/app/view/model/rest/ShowAssetsResponse;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showAssetsResponse:Lcom/cbs/app/view/model/rest/ShowAssetsResponse;

    return-object v0
.end method

.method public getShowBlockNavigationResponse()Lcom/cbs/app/view/model/rest/ShowBlockNavigationResponse;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showBlockNavigationResponse:Lcom/cbs/app/view/model/rest/ShowBlockNavigationResponse;

    return-object v0
.end method

.method public getShowConfigResponse()Lcom/cbs/app/view/model/rest/ShowConfigResponse;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showConfigResponse:Lcom/cbs/app/view/model/rest/ShowConfigResponse;

    return-object v0
.end method

.method public getShowEpisodeResponse()Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showEpisodeResponse:Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;

    return-object v0
.end method

.method public getShowSeasonResponse()Lcom/cbs/app/view/model/rest/ShowSeasonResponse;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showSeasonResponse:Lcom/cbs/app/view/model/rest/ShowSeasonResponse;

    return-object v0
.end method

.method public getShowShowResponse()Lcom/cbs/app/view/model/rest/ShowResponse;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showShowResponse:Lcom/cbs/app/view/model/rest/ShowResponse;

    return-object v0
.end method

.method public setAssetCarouselResponse(Lcom/cbs/app/view/model/rest/AssetCarouselResponse;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->assetCarouselResponse:Lcom/cbs/app/view/model/rest/AssetCarouselResponse;

    .line 97
    return-void
.end method

.method public setShowAssetResponseV2(Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showAssetResponseV2:Lcom/cbs/app/view/model/rest/ShowAssetResponseV2;

    .line 48
    return-void
.end method

.method public setShowAssetsResponse(Lcom/cbs/app/view/model/rest/ShowAssetsResponse;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showAssetsResponse:Lcom/cbs/app/view/model/rest/ShowAssetsResponse;

    .line 64
    return-void
.end method

.method public setShowBlockNavigationResponse(Lcom/cbs/app/view/model/rest/ShowBlockNavigationResponse;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showBlockNavigationResponse:Lcom/cbs/app/view/model/rest/ShowBlockNavigationResponse;

    .line 105
    return-void
.end method

.method public setShowConfigResponse(Lcom/cbs/app/view/model/rest/ShowConfigResponse;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showConfigResponse:Lcom/cbs/app/view/model/rest/ShowConfigResponse;

    .line 56
    return-void
.end method

.method public setShowEpisodeResponse(Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showEpisodeResponse:Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;

    .line 80
    return-void
.end method

.method public setShowSeasonResponse(Lcom/cbs/app/view/model/rest/ShowSeasonResponse;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showSeasonResponse:Lcom/cbs/app/view/model/rest/ShowSeasonResponse;

    .line 89
    return-void
.end method

.method public setShowShowResponse(Lcom/cbs/app/view/model/rest/ShowResponse;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;->showShowResponse:Lcom/cbs/app/view/model/rest/ShowResponse;

    .line 72
    return-void
.end method
