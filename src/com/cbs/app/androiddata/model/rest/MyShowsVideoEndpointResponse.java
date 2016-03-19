package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class MyShowsVideoEndpointResponse
  extends ResponseModel
{
  private List<ShowVideo> a;
  
  public List<ShowVideo> getResults()
  {
    return a;
  }
  
  public void setResults(List<ShowVideo> paramList)
  {
    a = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.MyShowsVideoEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */