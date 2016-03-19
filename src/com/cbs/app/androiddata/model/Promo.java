package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Promo
{
  private long a;
  private String b;
  private String c;
  private int d;
  private ShowDto e;
  
  public int getEpisodeVideoCount()
  {
    return d;
  }
  
  public String getImage()
  {
    return c;
  }
  
  public ShowDto getShowDto()
  {
    return e;
  }
  
  public long getShowId()
  {
    return a;
  }
  
  public String getTitle()
  {
    return b;
  }
  
  public void setEpisodeVideoCount(int paramInt)
  {
    d = paramInt;
  }
  
  public void setImage(String paramString)
  {
    c = paramString;
  }
  
  public void setShowDto(ShowDto paramShowDto)
  {
    e = paramShowDto;
  }
  
  public void setShowId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.Promo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */