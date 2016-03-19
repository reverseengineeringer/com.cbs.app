package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.Episode;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ScheduleResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = -8739101568204938291L;
  @JsonProperty("end")
  private int endIndex;
  @JsonProperty("numFound")
  private int numFound;
  @JsonProperty("results")
  private List<Episode> scheduleList = new ArrayList();
  @JsonProperty("header")
  private SolrHeader solrHeader;
  @JsonProperty("solrQuery")
  private String solrQuery;
  @JsonProperty("start")
  private int startIndex;
  
  public int getEndIndex()
  {
    return endIndex;
  }
  
  public int getNumFound()
  {
    return numFound;
  }
  
  public List<Episode> getScheduleList()
  {
    return scheduleList;
  }
  
  public SolrHeader getSolrHeader()
  {
    return solrHeader;
  }
  
  public String getSolrQuery()
  {
    return solrQuery;
  }
  
  public int getStartIndex()
  {
    return startIndex;
  }
  
  public void setEndIndex(int paramInt)
  {
    endIndex = paramInt;
  }
  
  public void setNumFound(int paramInt)
  {
    numFound = paramInt;
  }
  
  public void setScheduleList(List<Episode> paramList)
  {
    scheduleList = paramList;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    solrHeader = paramSolrHeader;
  }
  
  public void setSolrQuery(String paramString)
  {
    solrQuery = paramString;
  }
  
  public void setStartIndex(int paramInt)
  {
    startIndex = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ScheduleResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */