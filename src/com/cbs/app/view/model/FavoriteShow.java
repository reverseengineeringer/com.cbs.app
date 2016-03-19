package com.cbs.app.view.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class FavoriteShow
  implements Serializable
{
  public static final String TAG = FavoriteShow.class.getSimpleName();
  private static final long serialVersionUID = 5185816666684130764L;
  private long cbsShowId;
  private long dateAdded;
  private long displayOrder;
  private long id;
  
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
        new StringBuilder("comparing ").append(cbsShowId).append(" to ").append(((FavoriteShow)paramObject).getCbsShowId());
        bool1 = bool2;
        if (cbsShowId == ((FavoriteShow)paramObject).getCbsShowId()) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public long getCbsShowId()
  {
    return cbsShowId;
  }
  
  public long getDateAdded()
  {
    return dateAdded;
  }
  
  public long getDisplayOrder()
  {
    return displayOrder;
  }
  
  public long getId()
  {
    return id;
  }
  
  public int hashCode()
  {
    return (int)id;
  }
  
  public void setCbsShowId(long paramLong)
  {
    cbsShowId = paramLong;
  }
  
  public void setDateAdded(long paramLong)
  {
    dateAdded = paramLong;
  }
  
  public void setDisplayOrder(long paramLong)
  {
    displayOrder = paramLong;
  }
  
  public void setId(long paramLong)
  {
    id = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.FavoriteShow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */