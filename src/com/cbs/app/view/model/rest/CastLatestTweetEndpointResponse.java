package com.cbs.app.view.model.rest;

import com.cbs.app.view.model.DeviceCast;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Map;

@JsonIgnoreProperties(ignoreUnknown=true)
public class CastLatestTweetEndpointResponse
{
  @JsonProperty("cast")
  private List<DeviceCast> castList;
  @JsonProperty("tweets")
  private Map<String, String> castTweetMap;
  @JsonProperty("success")
  private Boolean success;
  
  public List<DeviceCast> getCastList()
  {
    return castList;
  }
  
  public Map<String, String> getCastTweetMap()
  {
    return castTweetMap;
  }
  
  public Boolean getSuccess()
  {
    return success;
  }
  
  public void setCastList(List<DeviceCast> paramList)
  {
    castList = paramList;
  }
  
  public void setCastTweetMap(Map<String, String> paramMap)
  {
    castTweetMap = paramMap;
  }
  
  public void setSuccess(Boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.CastLatestTweetEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */