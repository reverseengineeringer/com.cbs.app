package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.HashMap;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowEndpointResponse
  extends ResponseModel
{
  @JsonProperty("show")
  private ShowHolder a;
  private HashMap<String, String> b;
  private ShowConfig c;
  
  public HashMap<String, String> getShowAssets()
  {
    return b;
  }
  
  public ShowConfig getShowConfig()
  {
    return c;
  }
  
  public ShowHolder getShowHolder()
  {
    return a;
  }
  
  public void setShowAssets(HashMap<String, String> paramHashMap)
  {
    b = paramHashMap;
  }
  
  public void setShowConfig(ShowConfig paramShowConfig)
  {
    c = paramShowConfig;
  }
  
  public void setShowHolder(ShowHolder paramShowHolder)
  {
    a = paramShowHolder;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */