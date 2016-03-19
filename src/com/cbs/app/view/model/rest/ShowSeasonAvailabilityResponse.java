package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowSeasonAvailabilityResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 5919456840412499791L;
  @JsonProperty("video_available_season")
  private ShowSeasonAvailabilityData availableSeasons;
  @JsonProperty("showId")
  private long showId;
  @JsonProperty("success")
  private boolean success;
  
  public ShowSeasonAvailabilityData getAvailableSeasons()
  {
    return availableSeasons;
  }
  
  public long getShowId()
  {
    return showId;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setAvailableSeasons(ShowSeasonAvailabilityData paramShowSeasonAvailabilityData)
  {
    availableSeasons = paramShowSeasonAvailabilityData;
  }
  
  public void setShowId(long paramLong)
  {
    showId = paramLong;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowSeasonAvailabilityResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */