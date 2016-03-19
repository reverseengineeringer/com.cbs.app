package com.cbs.app.view.model.registration;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class PackageInfo
  implements Serializable
{
  @JsonProperty("createdDate")
  private long createdDate;
  @JsonProperty("endDate")
  private long endDate;
  @JsonProperty("packageCode")
  private String packageCode;
  @JsonProperty("packageHoldingState")
  private String packageHoldingState;
  @JsonProperty("packageStatus")
  private String packageStatus;
  
  public long getCreatedDate()
  {
    return createdDate;
  }
  
  public long getEndDate()
  {
    return endDate;
  }
  
  public String getPackageCode()
  {
    return packageCode;
  }
  
  public String getPackageHoldingState()
  {
    return packageHoldingState;
  }
  
  public String getPackageStatus()
  {
    return packageStatus;
  }
  
  public void setCreatedDate(long paramLong)
  {
    createdDate = paramLong;
  }
  
  public void setEndDate(long paramLong)
  {
    endDate = paramLong;
  }
  
  public void setPackageCode(String paramString)
  {
    packageCode = paramString;
  }
  
  public void setPackageHoldingState(String paramString)
  {
    packageHoldingState = paramString;
  }
  
  public void setPackageStatus(String paramString)
  {
    packageStatus = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.registration.PackageInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */