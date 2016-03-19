package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.ShowConfigResult;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowConfig
  extends ResponseModel
{
  private List<ShowConfigResult> a;
  
  public List<ShowConfigResult> getResults()
  {
    return a;
  }
  
  public void setResults(List<ShowConfigResult> paramList)
  {
    a = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */