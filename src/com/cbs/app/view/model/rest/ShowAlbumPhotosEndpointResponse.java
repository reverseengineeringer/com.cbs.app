package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAlbumPhotosEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 1568519432939536641L;
  @JsonProperty("results")
  private List<Album> albums;
  @JsonProperty("header")
  private SolrHeader header;
  @JsonProperty("numFound")
  private int numFound;
  
  public List<Album> getAlbums()
  {
    return albums;
  }
  
  public SolrHeader getHeader()
  {
    return header;
  }
  
  public int getNumfound()
  {
    return numFound;
  }
  
  public void setAlbums(List<Album> paramList)
  {
    albums = paramList;
  }
  
  public void setHeader(SolrHeader paramSolrHeader)
  {
    header = paramSolrHeader;
  }
  
  public void setNumfound(int paramInt)
  {
    numFound = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowAlbumPhotosEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */