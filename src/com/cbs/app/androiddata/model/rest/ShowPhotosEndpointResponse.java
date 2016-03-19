package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.ShowAlbum;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowPhotosEndpointResponse
  extends ResponseModel
{
  @JsonProperty("results")
  private List<ShowAlbum> a;
  @JsonProperty("header")
  private SolrHeader b;
  @JsonProperty("numFound")
  private int c;
  
  public SolrHeader getHeader()
  {
    return b;
  }
  
  public int getNumfound()
  {
    return c;
  }
  
  public List<ShowAlbum> getShowAlbums()
  {
    return a;
  }
  
  public void setHeader(SolrHeader paramSolrHeader)
  {
    b = paramSolrHeader;
  }
  
  public void setNumfound(int paramInt)
  {
    c = paramInt;
  }
  
  public void setShowAlbums(List<ShowAlbum> paramList)
  {
    a = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowPhotosEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */