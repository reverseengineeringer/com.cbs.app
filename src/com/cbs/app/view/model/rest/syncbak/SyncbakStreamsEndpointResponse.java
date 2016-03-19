package com.cbs.app.view.model.rest.syncbak;

import com.cbs.app.view.model.syncbak.SyncbakStream;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakStreamsEndpointResponse
  extends SyncbakEndpointResponse
{
  @JsonProperty("streams")
  private ArrayList<SyncbakStream> streams;
  
  public ArrayList<SyncbakStream> getStreams()
  {
    return streams;
  }
  
  public void setStreams(ArrayList<SyncbakStream> paramArrayList)
  {
    streams = paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.syncbak.SyncbakStreamsEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */