package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowSeasonAvailabilityData
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 5919456840412499793L;
  @JsonProperty("action")
  private String action;
  @JsonProperty("itemCount")
  private int itemCount;
  @JsonProperty("resultSize")
  private int resultSize;
  @JsonProperty("itemList")
  private List<ShowSeasonAvailabilityItem> seasonAvailabilityItems;
  
  public int getItemCount()
  {
    return itemCount;
  }
  
  public int getResultSize()
  {
    return resultSize;
  }
  
  public List<ShowSeasonAvailabilityItem> getSeasonAvailabilityItems()
  {
    return seasonAvailabilityItems;
  }
  
  public void setItemCount(int paramInt)
  {
    itemCount = paramInt;
  }
  
  public void setResultSize(int paramInt)
  {
    resultSize = paramInt;
  }
  
  public void setSeasonAvailabilityItems(List<ShowSeasonAvailabilityItem> paramList)
  {
    seasonAvailabilityItems = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowSeasonAvailabilityData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */