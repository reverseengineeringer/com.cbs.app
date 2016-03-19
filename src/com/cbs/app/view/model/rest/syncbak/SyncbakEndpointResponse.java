package com.cbs.app.view.model.rest.syncbak;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.syncbak.SyncbakMarket;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakEndpointResponse
  extends ResponseModel
  implements Serializable
{
  @JsonProperty("isAuthenticated")
  private boolean isAuthenticated;
  @JsonProperty("markets")
  private ArrayList<SyncbakMarket> markets;
  @JsonProperty("serverTime")
  private long serverTime;
  
  public ArrayList<SyncbakMarket> getMarkets()
  {
    return markets;
  }
  
  public long getServerTime()
  {
    return serverTime;
  }
  
  public boolean isAuthenticated()
  {
    return isAuthenticated;
  }
  
  public void setAuthenticated(boolean paramBoolean)
  {
    isAuthenticated = paramBoolean;
  }
  
  public void setMarkets(ArrayList<SyncbakMarket> paramArrayList)
  {
    markets = paramArrayList;
  }
  
  public void setServerTime(long paramLong)
  {
    serverTime = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.syncbak.SyncbakEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */