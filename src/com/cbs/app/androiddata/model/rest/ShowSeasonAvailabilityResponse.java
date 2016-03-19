package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.ShowSeasonAvailabilityData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowSeasonAvailabilityResponse
  extends ResponseModel
{
  @JsonProperty("showId")
  private long a;
  @JsonProperty("success")
  private boolean b;
  @JsonProperty("video_available_season")
  private ShowSeasonAvailabilityData c;
  
  public ShowSeasonAvailabilityData getAvailableSeasons()
  {
    return c;
  }
  
  public long getShowId()
  {
    return a;
  }
  
  public void setAvailableSeasons(ShowSeasonAvailabilityData paramShowSeasonAvailabilityData)
  {
    c = paramShowSeasonAvailabilityData;
  }
  
  public void setShowId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowSeasonAvailabilityResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */