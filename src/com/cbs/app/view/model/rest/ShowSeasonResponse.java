package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.Season;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowSeasonResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 6760541951489412477L;
  @JsonProperty("numFound")
  private int numFound;
  @JsonProperty("results")
  private List<Season> seasons;
  @JsonProperty("header")
  private SolrHeader solrHeader;
  
  public int getNumFound()
  {
    return numFound;
  }
  
  public List<Season> getSeasons()
  {
    return seasons;
  }
  
  public SolrHeader getSolrHeader()
  {
    return solrHeader;
  }
  
  public void setNumFound(int paramInt)
  {
    numFound = paramInt;
  }
  
  public void setSeasons(List<Season> paramList)
  {
    seasons = paramList;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    solrHeader = paramSolrHeader;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowSeasonResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */