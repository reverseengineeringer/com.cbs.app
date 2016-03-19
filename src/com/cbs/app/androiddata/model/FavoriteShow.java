package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class FavoriteShow
{
  private long a;
  private long b;
  private long c;
  private long d;
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if ((paramObject instanceof FavoriteShow))
      {
        paramObject = (FavoriteShow)paramObject;
        bool1 = bool2;
        if (c == ((FavoriteShow)paramObject).getCbsShowId()) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public long getCbsShowId()
  {
    return c;
  }
  
  public long getDateAdded()
  {
    return d;
  }
  
  public long getDisplayOrder()
  {
    return b;
  }
  
  public long getId()
  {
    return a;
  }
  
  public int hashCode()
  {
    return (int)a;
  }
  
  public void setCbsShowId(long paramLong)
  {
    c = paramLong;
  }
  
  public void setDateAdded(long paramLong)
  {
    d = paramLong;
  }
  
  public void setDisplayOrder(long paramLong)
  {
    b = paramLong;
  }
  
  public void setId(long paramLong)
  {
    a = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.FavoriteShow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */