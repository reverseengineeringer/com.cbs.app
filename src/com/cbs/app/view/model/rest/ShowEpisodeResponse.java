package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.Episode;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowEpisodeResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 5919456840412499798L;
  @JsonProperty("results")
  private List<Episode> episodes;
  @JsonProperty("numFound")
  private int numFound;
  @JsonProperty("header")
  private SolrHeader solrHeader;
  
  public List<Episode> getEpisodes()
  {
    return episodes;
  }
  
  public int getNumFound()
  {
    return numFound;
  }
  
  public SolrHeader getSolrHeader()
  {
    return solrHeader;
  }
  
  public void setEpisodes(List<Episode> paramList)
  {
    episodes = paramList;
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
 * Qualified Name:     com.cbs.app.view.model.rest.ShowEpisodeResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */