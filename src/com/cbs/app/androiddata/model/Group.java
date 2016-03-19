package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Group
{
  private long a;
  private String b;
  private ArrayList<ShowItem> c;
  private String d;
  
  public long getId()
  {
    return a;
  }
  
  public String getPlatformType()
  {
    return b;
  }
  
  public ArrayList<ShowItem> getShowGroupItems()
  {
    return c;
  }
  
  public String getTitle()
  {
    return d;
  }
  
  public void setId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setPlatformType(String paramString)
  {
    b = paramString;
  }
  
  public void setShowGroupItems(ArrayList<ShowItem> paramArrayList)
  {
    c = paramArrayList;
  }
  
  public void setTitle(String paramString)
  {
    d = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.Group
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */