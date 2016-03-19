package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.ShowVideo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class MyCbsEndpointResponse
  extends ResponseModel
{
  @JsonProperty("results")
  private ShowVideo[] showVideoArray;
  
  public ShowVideo[] getShowVideoArray()
  {
    ShowVideo[] arrayOfShowVideo = null;
    if (showVideoArray != null) {
      arrayOfShowVideo = (ShowVideo[])showVideoArray.clone();
    }
    return arrayOfShowVideo;
  }
  
  public void setShowVideoArray(ShowVideo[] paramArrayOfShowVideo)
  {
    if (paramArrayOfShowVideo != null) {}
    for (paramArrayOfShowVideo = (ShowVideo[])paramArrayOfShowVideo.clone();; paramArrayOfShowVideo = null)
    {
      showVideoArray = paramArrayOfShowVideo;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.MyCbsEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */