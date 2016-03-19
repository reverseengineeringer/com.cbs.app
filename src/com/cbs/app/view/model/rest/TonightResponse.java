package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.Episode;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class TonightResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  @JsonProperty("results")
  private ArrayList<Episode> episodes;
  @JsonProperty("header")
  private SolrHeader header;
  @JsonProperty("numFound")
  private int numFound;
  
  public SolrHeader getHeader()
  {
    return header;
  }
  
  public int getNumFound()
  {
    return numFound;
  }
  
  public ArrayList<Episode> getTonightEpisodes()
  {
    return episodes;
  }
  
  public void setHeader(SolrHeader paramSolrHeader)
  {
    header = paramSolrHeader;
  }
  
  public void setNumFound(int paramInt)
  {
    numFound = paramInt;
  }
  
  public void setTonightEpisodes(ArrayList<Episode> paramArrayList)
  {
    episodes = paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.TonightResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */