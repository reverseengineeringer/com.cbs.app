package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class HomeEndpointResponse
  extends ResponseModel
{
  private static final long serialVersionUID = 4958740767041521437L;
  @JsonProperty("marquee")
  private MarqueeResponse marqueeResponse;
  @JsonProperty("schedule")
  private ScheduleResponse scheduleResponse;
  
  public MarqueeResponse getMarqueeResponse()
  {
    return marqueeResponse;
  }
  
  public ScheduleResponse getScheduleResponse()
  {
    return scheduleResponse;
  }
  
  public void setMarqueeResponse(MarqueeResponse paramMarqueeResponse)
  {
    marqueeResponse = paramMarqueeResponse;
  }
  
  public void setScheduleResponse(ScheduleResponse paramScheduleResponse)
  {
    scheduleResponse = paramScheduleResponse;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.HomeEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */