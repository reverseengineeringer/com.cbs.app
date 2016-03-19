package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.SyncbakMarket;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakEndpointResponse
  extends ResponseModel
{
  @JsonProperty("serverTime")
  private long a;
  @JsonProperty("isAuthenticated")
  private boolean b;
  @JsonProperty("markets")
  private ArrayList<SyncbakMarket> c;
  
  public ArrayList<SyncbakMarket> getMarkets()
  {
    return c;
  }
  
  public long getServerTime()
  {
    return a;
  }
  
  public void setAuthenticated(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void setMarkets(ArrayList<SyncbakMarket> paramArrayList)
  {
    c = paramArrayList;
  }
  
  public void setServerTime(long paramLong)
  {
    a = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.SyncbakEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */