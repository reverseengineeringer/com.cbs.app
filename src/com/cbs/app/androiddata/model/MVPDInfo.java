package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class MVPDInfo
{
  private long a;
  private String b;
  
  public String getMvpdIdentifier()
  {
    return b;
  }
  
  public long getStationId()
  {
    return a;
  }
  
  public void setMvpdIdentifier(String paramString)
  {
    b = paramString;
  }
  
  public void setStationId(long paramLong)
  {
    a = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.MVPDInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */