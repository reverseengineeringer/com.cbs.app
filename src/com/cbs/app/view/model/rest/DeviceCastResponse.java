package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.DeviceCast;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class DeviceCastResponse
  extends ResponseModel
{
  @JsonProperty("results")
  private List<DeviceCast> castList;
  @JsonProperty("header")
  private SolrHeader solrHeader;
  @JsonProperty("solrQuery")
  private String solrQuery;
  
  public List<DeviceCast> getCastList()
  {
    return castList;
  }
  
  public SolrHeader getSolrHeader()
  {
    return solrHeader;
  }
  
  public String getSolrQuery()
  {
    return solrQuery;
  }
  
  public void setCastList(List<DeviceCast> paramList)
  {
    castList = paramList;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    solrHeader = paramSolrHeader;
  }
  
  public void setSolrQuery(String paramString)
  {
    solrQuery = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.DeviceCastResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */