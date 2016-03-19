package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.AssetCarouselItem;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AssetCarouselResponse
  extends ResponseModel
{
  @JsonProperty("results")
  private List<AssetCarouselItem> items;
  @JsonProperty("numFound")
  private int numFound;
  @JsonProperty("header")
  private SolrHeader solrHeader;
  
  public List<AssetCarouselItem> getItems()
  {
    return items;
  }
  
  public int getNumFound()
  {
    return numFound;
  }
  
  public SolrHeader getSolrHeader()
  {
    return solrHeader;
  }
  
  public void setItems(List<AssetCarouselItem> paramList)
  {
    items = paramList;
  }
  
  public void setNumFound(int paramInt)
  {
    numFound = paramInt;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    solrHeader = paramSolrHeader;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.AssetCarouselResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */