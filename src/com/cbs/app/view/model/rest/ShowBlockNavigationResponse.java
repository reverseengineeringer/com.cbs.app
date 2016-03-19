package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.ShowBlockNavigation;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowBlockNavigationResponse
  extends ResponseModel
  implements Serializable
{
  @JsonProperty("blockNavigationList")
  private List<ShowBlockNavigation> items;
  
  public List<ShowBlockNavigation> getItems()
  {
    return items;
  }
  
  public void setItems(List<ShowBlockNavigation> paramList)
  {
    items = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowBlockNavigationResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */