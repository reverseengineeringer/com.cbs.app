package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.ShowGroup;
import com.cbs.app.androiddata.model.ShowItem;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowGroupResponse
  extends ResponseModel
{
  @JsonProperty("all")
  private ArrayList<ShowItem> a;
  private ArrayList<ShowGroup> b;
  private String c;
  private boolean d;
  
  public String getPlatformType()
  {
    return c;
  }
  
  public ArrayList<ShowGroup> getShowGroups()
  {
    return b;
  }
  
  public ArrayList<ShowItem> getShowItems()
  {
    return a;
  }
  
  public void setPlatformType(String paramString)
  {
    c = paramString;
  }
  
  public void setShowGroups(ArrayList<ShowGroup> paramArrayList)
  {
    b = paramArrayList;
  }
  
  public void setShowItems(ArrayList<ShowItem> paramArrayList)
  {
    a = paramArrayList;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    d = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowGroupResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */