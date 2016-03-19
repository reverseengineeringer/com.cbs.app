package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.DeviceHome;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class MarqueeEndpointResponse
  extends ResponseModel
{
  private int a;
  private List<DeviceHome> b;
  
  public int getNumFound()
  {
    return a;
  }
  
  public List<DeviceHome> getResults()
  {
    return b;
  }
  
  public void setNumFound(int paramInt)
  {
    a = paramInt;
  }
  
  public void setResults(List<DeviceHome> paramList)
  {
    b = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.MarqueeEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */