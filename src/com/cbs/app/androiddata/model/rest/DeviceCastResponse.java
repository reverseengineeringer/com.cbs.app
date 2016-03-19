package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.DeviceCast;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class DeviceCastResponse
  extends ResponseModel
{
  @JsonProperty("results")
  private List<DeviceCast> a;
  @JsonProperty("header")
  private SolrHeader b;
  @JsonProperty("solrQuery")
  private String c;
  
  public List<DeviceCast> getCastList()
  {
    return a;
  }
  
  public SolrHeader getSolrHeader()
  {
    return b;
  }
  
  public String getSolrQuery()
  {
    return c;
  }
  
  public void setCastList(List<DeviceCast> paramList)
  {
    a = paramList;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    b = paramSolrHeader;
  }
  
  public void setSolrQuery(String paramString)
  {
    c = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.DeviceCastResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */