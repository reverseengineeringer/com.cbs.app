package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowSeasonAvailabilityData
{
  @JsonProperty("itemCount")
  private int a;
  @JsonProperty("resultSize")
  private int b;
  @JsonProperty("itemList")
  private List<ShowSeasonAvailabilityItem> c;
  
  public int getItemCount()
  {
    return a;
  }
  
  public int getResultSize()
  {
    return b;
  }
  
  public List<ShowSeasonAvailabilityItem> getSeasonAvailabilityItems()
  {
    return c;
  }
  
  public void setItemCount(int paramInt)
  {
    a = paramInt;
  }
  
  public void setResultSize(int paramInt)
  {
    b = paramInt;
  }
  
  public void setSeasonAvailabilityItems(List<ShowSeasonAvailabilityItem> paramList)
  {
    c = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowSeasonAvailabilityData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */