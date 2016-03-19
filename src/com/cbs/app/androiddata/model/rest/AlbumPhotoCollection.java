package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.AlbumPhoto;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AlbumPhotoCollection
  extends ResponseModel
{
  @JsonProperty("header")
  private SolrHeader a;
  @JsonProperty("numFound")
  private int b;
  @JsonProperty("results")
  private ArrayList<AlbumPhoto> c;
  
  public SolrHeader getHeader()
  {
    return a;
  }
  
  public int getNumfound()
  {
    return b;
  }
  
  public ArrayList<AlbumPhoto> getResults()
  {
    return c;
  }
  
  public void setHeader(SolrHeader paramSolrHeader)
  {
    a = paramSolrHeader;
  }
  
  public void setNumfound(int paramInt)
  {
    b = paramInt;
  }
  
  public void setResults(ArrayList<AlbumPhoto> paramArrayList)
  {
    c = paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.AlbumPhotoCollection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */