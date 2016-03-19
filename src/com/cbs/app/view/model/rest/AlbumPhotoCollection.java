package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.AlbumPhoto;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AlbumPhotoCollection
  extends ResponseModel
{
  @JsonProperty("header")
  private SolrHeader header;
  @JsonProperty("numFound")
  private int numfound;
  @JsonProperty("results")
  private ArrayList<AlbumPhoto> results;
  
  public SolrHeader getHeader()
  {
    return header;
  }
  
  public int getNumfound()
  {
    return numfound;
  }
  
  public ArrayList<AlbumPhoto> getResults()
  {
    return results;
  }
  
  public void setHeader(SolrHeader paramSolrHeader)
  {
    header = paramSolrHeader;
  }
  
  public void setNumfound(int paramInt)
  {
    numfound = paramInt;
  }
  
  public void setResults(ArrayList<AlbumPhoto> paramArrayList)
  {
    results = paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.AlbumPhotoCollection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */