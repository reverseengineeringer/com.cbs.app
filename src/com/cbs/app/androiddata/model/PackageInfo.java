package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class PackageInfo
{
  @JsonProperty("packageCode")
  private String a;
  @JsonProperty("packageStatus")
  private String b;
  @JsonProperty("endDate")
  private long c;
  @JsonProperty("createdDate")
  private long d;
  @JsonProperty("packageHoldingState")
  private String e;
  
  public long getCreatedDate()
  {
    return d;
  }
  
  public long getEndDate()
  {
    return c;
  }
  
  public String getPackageCode()
  {
    return a;
  }
  
  public String getPackageHoldingState()
  {
    return e;
  }
  
  public String getPackageStatus()
  {
    return b;
  }
  
  public void setCreatedDate(long paramLong)
  {
    d = paramLong;
  }
  
  public void setEndDate(long paramLong)
  {
    c = paramLong;
  }
  
  public void setPackageCode(String paramString)
  {
    a = paramString;
  }
  
  public void setPackageHoldingState(String paramString)
  {
    e = paramString;
  }
  
  public void setPackageStatus(String paramString)
  {
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.PackageInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */