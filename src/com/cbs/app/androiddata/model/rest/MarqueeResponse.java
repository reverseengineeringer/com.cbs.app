package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.model.DeviceHome;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class MarqueeResponse
{
  @JsonProperty("results")
  private List<DeviceHome> a = new ArrayList();
  @JsonProperty("numFound")
  private int b;
  @JsonProperty("start")
  private int c;
  @JsonProperty("end")
  private int d;
  @JsonProperty("header")
  private SolrHeader e;
  
  public List<DeviceHome> getDeviceHomeList()
  {
    return a;
  }
  
  public int getEnd()
  {
    return d;
  }
  
  public int getNumFound()
  {
    return b;
  }
  
  public SolrHeader getSolrHeader()
  {
    return e;
  }
  
  public int getStart()
  {
    return c;
  }
  
  public void setDeviceHomeList(List<DeviceHome> paramList)
  {
    a = paramList;
  }
  
  public void setEnd(int paramInt)
  {
    d = paramInt;
  }
  
  public void setNumFound(int paramInt)
  {
    b = paramInt;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    e = paramSolrHeader;
  }
  
  public void setStart(int paramInt)
  {
    c = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.MarqueeResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */