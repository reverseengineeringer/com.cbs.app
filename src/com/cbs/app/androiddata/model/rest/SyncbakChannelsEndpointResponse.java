package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.model.SyncbakChannel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakChannelsEndpointResponse
  extends SyncbakEndpointResponse
{
  @JsonProperty("channels")
  private ArrayList<SyncbakChannel> a;
  
  public ArrayList<SyncbakChannel> getChannels()
  {
    return a;
  }
  
  public void setChannels(ArrayList<SyncbakChannel> paramArrayList)
  {
    a = paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.SyncbakChannelsEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */