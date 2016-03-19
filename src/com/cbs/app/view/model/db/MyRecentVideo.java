package com.cbs.app.view.model.db;

import java.util.Date;

public class MyRecentVideo
{
  private static final String TAG = "MyRecentVideo";
  private String cid;
  private Date dateViewed;
  private long medTime = 0L;
  private Integer showId;
  
  public MyRecentVideo(Integer paramInteger, String paramString, long paramLong, Date paramDate)
  {
    showId = paramInteger;
    cid = paramString;
    medTime = paramLong;
    dateViewed = new Date(paramDate.getTime());
  }
  
  public MyRecentVideo(Integer paramInteger, String paramString, Date paramDate)
  {
    showId = paramInteger;
    cid = paramString;
    dateViewed = new Date(paramDate.getTime());
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if ((paramObject instanceof MyRecentVideo))
      {
        paramObject = ((MyRecentVideo)paramObject).getCid();
        new StringBuilder("comparing ").append((String)paramObject).append(" to ").append(cid);
        bool1 = bool2;
        if (paramObject != null)
        {
          bool1 = bool2;
          if (((String)paramObject).equals(cid)) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public String getCid()
  {
    return cid;
  }
  
  public Date getDateViewed()
  {
    return new Date(dateViewed.getTime());
  }
  
  public long getMedTime()
  {
    return medTime;
  }
  
  public Integer getShowId()
  {
    return showId;
  }
  
  public int hashCode()
  {
    if (cid != null) {
      return cid.hashCode();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.db.MyRecentVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */