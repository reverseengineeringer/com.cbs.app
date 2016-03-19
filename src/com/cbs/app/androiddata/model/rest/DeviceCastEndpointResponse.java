package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class DeviceCastEndpointResponse
  extends ResponseModel
{
  @JsonProperty("cast")
  private DeviceCastResponse a;
  @JsonProperty("host")
  private DeviceCastResponse b;
  
  public DeviceCastResponse getCastResponse()
  {
    return a;
  }
  
  public DeviceCastResponse getHostResponse()
  {
    return b;
  }
  
  public void setCastResponse(DeviceCastResponse paramDeviceCastResponse)
  {
    a = paramDeviceCastResponse;
  }
  
  public void setHostResponse(DeviceCastResponse paramDeviceCastResponse)
  {
    b = paramDeviceCastResponse;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.DeviceCastEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */