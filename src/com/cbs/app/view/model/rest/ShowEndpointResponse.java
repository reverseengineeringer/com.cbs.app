package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 1792869905711027019L;
  @JsonProperty("assetCarousel")
  private AssetCarouselResponse assetCarouselResponse;
  @JsonProperty("showAssets")
  private ShowAssetResponseV2 showAssetResponseV2;
  @JsonProperty("assets")
  private ShowAssetsResponse showAssetsResponse;
  @JsonProperty("blockNavigation")
  private ShowBlockNavigationResponse showBlockNavigationResponse;
  @JsonProperty("config")
  private ShowConfigResponse showConfigResponse;
  @JsonProperty("episode")
  private ShowEpisodeResponse showEpisodeResponse;
  @JsonProperty("season")
  private ShowSeasonResponse showSeasonResponse;
  @JsonProperty("show")
  private ShowResponse showShowResponse;
  
  public AssetCarouselResponse getAssetCarouselResponse()
  {
    return assetCarouselResponse;
  }
  
  public ShowAssetResponseV2 getShowAssetResponseV2()
  {
    return showAssetResponseV2;
  }
  
  public ShowAssetsResponse getShowAssetsResponse()
  {
    return showAssetsResponse;
  }
  
  public ShowBlockNavigationResponse getShowBlockNavigationResponse()
  {
    return showBlockNavigationResponse;
  }
  
  public ShowConfigResponse getShowConfigResponse()
  {
    return showConfigResponse;
  }
  
  public ShowEpisodeResponse getShowEpisodeResponse()
  {
    return showEpisodeResponse;
  }
  
  public ShowSeasonResponse getShowSeasonResponse()
  {
    return showSeasonResponse;
  }
  
  public ShowResponse getShowShowResponse()
  {
    return showShowResponse;
  }
  
  public void setAssetCarouselResponse(AssetCarouselResponse paramAssetCarouselResponse)
  {
    assetCarouselResponse = paramAssetCarouselResponse;
  }
  
  public void setShowAssetResponseV2(ShowAssetResponseV2 paramShowAssetResponseV2)
  {
    showAssetResponseV2 = paramShowAssetResponseV2;
  }
  
  public void setShowAssetsResponse(ShowAssetsResponse paramShowAssetsResponse)
  {
    showAssetsResponse = paramShowAssetsResponse;
  }
  
  public void setShowBlockNavigationResponse(ShowBlockNavigationResponse paramShowBlockNavigationResponse)
  {
    showBlockNavigationResponse = paramShowBlockNavigationResponse;
  }
  
  public void setShowConfigResponse(ShowConfigResponse paramShowConfigResponse)
  {
    showConfigResponse = paramShowConfigResponse;
  }
  
  public void setShowEpisodeResponse(ShowEpisodeResponse paramShowEpisodeResponse)
  {
    showEpisodeResponse = paramShowEpisodeResponse;
  }
  
  public void setShowSeasonResponse(ShowSeasonResponse paramShowSeasonResponse)
  {
    showSeasonResponse = paramShowSeasonResponse;
  }
  
  public void setShowShowResponse(ShowResponse paramShowResponse)
  {
    showShowResponse = paramShowResponse;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */