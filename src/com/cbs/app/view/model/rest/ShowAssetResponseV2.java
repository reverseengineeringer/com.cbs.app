package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.AssetFilePathMap;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAssetResponseV2
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = -7111535331543950782L;
  @JsonProperty("results")
  private AssetFilePathMap showAssets;
  
  public AssetFilePathMap getShowAssets()
  {
    return showAssets;
  }
  
  public void setShowAssets(AssetFilePathMap paramAssetFilePathMap)
  {
    showAssets = paramAssetFilePathMap;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowAssetResponseV2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */