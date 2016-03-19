package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
@Deprecated
public class EventsEndpointResponse
  extends ResponseModel
{
  @JsonProperty("archive-events")
  private ArchiveEventsResponse archiveEvents;
  @JsonProperty("connect-events")
  private ConnectEventsResponse connectEvents;
  
  public ArchiveEventsResponse getArchiveEvents()
  {
    return archiveEvents;
  }
  
  public ConnectEventsResponse getConnectEvents()
  {
    return connectEvents;
  }
  
  public void setArchiveEvents(ArchiveEventsResponse paramArchiveEventsResponse)
  {
    archiveEvents = paramArchiveEventsResponse;
  }
  
  public void setConnectEvents(ConnectEventsResponse paramConnectEventsResponse)
  {
    connectEvents = paramConnectEventsResponse;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.EventsEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */