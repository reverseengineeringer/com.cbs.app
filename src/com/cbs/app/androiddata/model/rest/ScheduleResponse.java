package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.Schedule;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ScheduleResponse
  extends ResponseModel
{
  @JsonProperty("results")
  private List<Schedule> a = new ArrayList();
  @JsonProperty("numFound")
  private int b;
  @JsonProperty("header")
  private SolrHeader c;
  @JsonProperty("solrQuery")
  private String d;
  @JsonProperty("start")
  private int e;
  @JsonProperty("end")
  private int f;
  
  public int getEndIndex()
  {
    return f;
  }
  
  public int getNumFound()
  {
    return b;
  }
  
  public List<Schedule> getScheduleList()
  {
    return a;
  }
  
  public SolrHeader getSolrHeader()
  {
    return c;
  }
  
  public String getSolrQuery()
  {
    return d;
  }
  
  public int getStartIndex()
  {
    return e;
  }
  
  public void setEndIndex(int paramInt)
  {
    f = paramInt;
  }
  
  public void setNumFound(int paramInt)
  {
    b = paramInt;
  }
  
  public void setScheduleList(List<Schedule> paramList)
  {
    a = paramList;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    c = paramSolrHeader;
  }
  
  public void setSolrQuery(String paramString)
  {
    d = paramString;
  }
  
  public void setStartIndex(int paramInt)
  {
    e = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ScheduleResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */