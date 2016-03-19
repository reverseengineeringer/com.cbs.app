package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.model.Show;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowHolder
{
  private List<Show> a;
  
  public List<Show> getResults()
  {
    return a;
  }
  
  public void setResults(List<Show> paramList)
  {
    a = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */