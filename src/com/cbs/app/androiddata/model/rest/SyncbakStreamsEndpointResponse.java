package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.model.SyncbakStream;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakStreamsEndpointResponse
  extends SyncbakEndpointResponse
{
  @JsonProperty("streams")
  private ArrayList<SyncbakStream> a;
  
  public ArrayList<SyncbakStream> getStreams()
  {
    return a;
  }
  
  public void setStreams(ArrayList<SyncbakStream> paramArrayList)
  {
    a = paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.SyncbakStreamsEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */