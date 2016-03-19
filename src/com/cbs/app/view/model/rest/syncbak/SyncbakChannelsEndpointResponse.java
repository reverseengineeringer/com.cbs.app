package com.cbs.app.view.model.rest.syncbak;

import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakChannelsEndpointResponse
  extends SyncbakEndpointResponse
{
  @JsonProperty("channels")
  private ArrayList<SyncbakChannel> channels;
  
  public ArrayList<SyncbakChannel> getChannels()
  {
    return channels;
  }
  
  public void setChannels(ArrayList<SyncbakChannel> paramArrayList)
  {
    channels = paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.syncbak.SyncbakChannelsEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */