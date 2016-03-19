package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.ShowConfig;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowConfigResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = -2945314537264847479L;
  @JsonProperty("results")
  private List<ShowConfig> configuration;
  @JsonProperty("numFound")
  private int numFound;
  @JsonProperty("header")
  private SolrHeader solrHeader;
  @JsonProperty("solrQuery")
  private String solrQuery;
  
  public List<ShowConfig> getConfiguration()
  {
    return configuration;
  }
  
  public int getNumFound()
  {
    return numFound;
  }
  
  public SolrHeader getSolrHeader()
  {
    return solrHeader;
  }
  
  public String getSolrQuery()
  {
    return solrQuery;
  }
  
  public void setConfiguration(List<ShowConfig> paramList)
  {
    configuration = paramList;
  }
  
  public void setNumFound(int paramInt)
  {
    numFound = paramInt;
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
 * Qualified Name:     com.cbs.app.view.model.rest.ShowConfigResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */