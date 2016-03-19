package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class DeviceCastEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 4418905350545674480L;
  @JsonProperty("cast")
  private DeviceCastResponse castResponse;
  @JsonProperty("host")
  private DeviceCastResponse hostResponse;
  
  public DeviceCastResponse getCastResponse()
  {
    return castResponse;
  }
  
  public DeviceCastResponse getHostResponse()
  {
    return hostResponse;
  }
  
  public void setCastResponse(DeviceCastResponse paramDeviceCastResponse)
  {
    castResponse = paramDeviceCastResponse;
  }
  
  public void setHostResponse(DeviceCastResponse paramDeviceCastResponse)
  {
    hostResponse = paramDeviceCastResponse;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.DeviceCastEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */