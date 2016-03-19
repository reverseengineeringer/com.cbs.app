package com.cbs.app.view.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class MVPDInfo
{
  private String mvpdIdentifier;
  private long stationId;
  
  public String getMvpdIdentifier()
  {
    return mvpdIdentifier;
  }
  
  public long getStationId()
  {
    return stationId;
  }
  
  public void setMvpdIdentifier(String paramString)
  {
    mvpdIdentifier = paramString;
  }
  
  public void setStationId(long paramLong)
  {
    stationId = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.MVPDInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */