package com.cbs.app.view.model.db;

import java.util.Date;

public class MyShow
{
  private Date dateAdded;
  private Integer showId;
  
  public MyShow(Integer paramInteger, Date paramDate)
  {
    showId = paramInteger;
    dateAdded = new Date(paramDate.getTime());
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof MyShow)) {
      return showId.equals(((MyShow)paramObject).getShowId());
    }
    return super.equals(paramObject);
  }
  
  public Date getDateAdded()
  {
    return new Date(dateAdded.getTime());
  }
  
  public Integer getShowId()
  {
    return showId;
  }
  
  public int hashCode()
  {
    return showId.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.db.MyShow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */