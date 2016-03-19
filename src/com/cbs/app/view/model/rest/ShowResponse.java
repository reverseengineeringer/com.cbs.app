package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.Show;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowResponse
  extends ResponseModel
  implements Serializable
{
  private static final String TAG = ShowResponse.class.getSimpleName();
  private static final long serialVersionUID = -1614960088429550374L;
  @JsonProperty("results")
  private List<Show> shows;
  @JsonProperty("header")
  private SolrHeader solrHeader;
  
  public List<Show> getShows()
  {
    return shows;
  }
  
  public SolrHeader getSolrHeader()
  {
    return solrHeader;
  }
  
  public void setShows(List<Show> paramList)
  {
    shows = paramList;
  }
  
  public void setSolrHeader(SolrHeader paramSolrHeader)
  {
    solrHeader = paramSolrHeader;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */