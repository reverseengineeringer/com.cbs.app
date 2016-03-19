package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.ConnectArchive;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
@Deprecated
public class ArchiveEventsResponse
  extends ResponseModel
{
  @JsonProperty("result")
  private ArrayList<ConnectArchive> events;
  @JsonProperty("header")
  private SolrHeader header;
  @JsonProperty("numFound")
  private int numFound;
  
  public ArrayList<ConnectArchive> getEvents()
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
  
  public void setEvents(ArrayList<ConnectArchive> paramArrayList)
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
 * Qualified Name:     com.cbs.app.view.model.rest.ArchiveEventsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */