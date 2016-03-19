package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.DeviceHome;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class MarqueeResponse
  extends ResponseModel
{
  @JsonProperty("results")
  private List<DeviceHome> deviceHomeList = new ArrayList();
  @JsonProperty("end")
  private int end;
  @JsonProperty("numFound")
  private int numFound;
  @JsonProperty("header")
  private SolrHeader solrHeader;
  @JsonProperty("start")
  private int start;
  
  public List<DeviceHome> getDeviceHomeList()
  {
    return deviceHomeList;
  }
  
  public int getEnd()
  {
    return end;
  }
  
  public int getNumFound()
  {
    return numFound;
  }
  
  public SolrHeader getSolrHeader()
  {
    return solrHeader;
  }
  
  public int getStart()
  {
    return start;
  }
  
  public void setDeviceHomeList(List<DeviceHome> paramList)
  {
    deviceHomeList = paramList;
  }
  
  public void setEnd(int paramInt)
  {
    end = paramInt;
  }
  
  public void setNumFound(int paramInt)
  {
    numFound = paramInt;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    solrHeader = paramSolrHeader;
  }
  
  public void setStart(int paramInt)
  {
    start = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.MarqueeResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */