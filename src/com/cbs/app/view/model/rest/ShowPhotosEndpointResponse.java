package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.ShowAlbum;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowPhotosEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = -3364815166667427136L;
  @JsonProperty("header")
  private SolrHeader header;
  @JsonProperty("numFound")
  private int numfound;
  @JsonProperty("results")
  private List<ShowAlbum> showAlbums;
  
  public SolrHeader getHeader()
  {
    return header;
  }
  
  public int getNumfound()
  {
    return numfound;
  }
  
  public List<ShowAlbum> getShowAlbums()
  {
    return showAlbums;
  }
  
  public void setHeader(SolrHeader paramSolrHeader)
  {
    header = paramSolrHeader;
  }
  
  public void setNumfound(int paramInt)
  {
    numfound = paramInt;
  }
  
  public void setShowAlbums(List<ShowAlbum> paramList)
  {
    showAlbums = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowPhotosEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */