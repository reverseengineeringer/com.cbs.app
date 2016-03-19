package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class FavoriteShowList
{
  private long a;
  private String b;
  private String c;
  private ArrayList<FavoriteShow> d;
  
  public long getId()
  {
    return a;
  }
  
  public String getName()
  {
    return b;
  }
  
  public ArrayList<FavoriteShow> getShowList()
  {
    return d;
  }
  
  public String getUniqueName()
  {
    return c;
  }
  
  public void setId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setName(String paramString)
  {
    b = paramString;
  }
  
  public void setShowList(ArrayList<FavoriteShow> paramArrayList)
  {
    d = paramArrayList;
  }
  
  public void setUniqueName(String paramString)
  {
    c = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.FavoriteShowList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */