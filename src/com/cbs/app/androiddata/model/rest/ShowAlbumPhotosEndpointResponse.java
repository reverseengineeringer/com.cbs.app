package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.Album;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAlbumPhotosEndpointResponse
  extends ResponseModel
{
  @JsonProperty("results")
  private List<Album> a;
  @JsonProperty("header")
  private SolrHeader b;
  @JsonProperty("numFound")
  private int c;
  
  public List<Album> getAlbums()
  {
    return a;
  }
  
  public SolrHeader getHeader()
  {
    return b;
  }
  
  public int getNumfound()
  {
    return c;
  }
  
  public void setAlbums(List<Album> paramList)
  {
    a = paramList;
  }
  
  public void setHeader(SolrHeader paramSolrHeader)
  {
    b = paramSolrHeader;
  }
  
  public void setNumfound(int paramInt)
  {
    c = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowAlbumPhotosEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */