package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.Asset;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAssetsResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = -7111535331543950792L;
  @JsonProperty("results")
  private List<Asset> assets;
  @JsonProperty("header")
  private SolrHeader solrHeader;
  
  public List<Asset> getAssets()
  {
    return assets;
  }
  
  public SolrHeader getSolrHeader()
  {
    return solrHeader;
  }
  
  public void setAssets(List<Asset> paramList)
  {
    assets = paramList;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    solrHeader = paramSolrHeader;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowAssetsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */