package com.cbs.app.view.model.rest;

import com.cbs.app.view.model.ConnectEvent;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
@Deprecated
public class ConnectEventsResponse
{
  @JsonProperty("results")
  private ArrayList<ConnectEvent> events;
  @JsonProperty("header")
  private SolrHeader header;
  @JsonProperty("numFound")
  private int numFound;
  
  public ArrayList<ConnectEvent> getEvents()
  {
    return events;
  }
  
  public SolrHeader getHeader()
  {
    return header;
  }
  
  public int getNumFound()
  {
    return numFound;
  }
  
  public void setEvents(ArrayList<ConnectEvent> paramArrayList)
  {
    events = paramArrayList;
  }
  
  public void setHeader(SolrHeader paramSolrHeader)
  {
    header = paramSolrHeader;
  }
  
  public void setNumFound(int paramInt)
  {
    numFound = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ConnectEventsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */