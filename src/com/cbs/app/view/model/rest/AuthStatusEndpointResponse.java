package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.registration.PackageInfo;
import com.cbs.app.view.model.registration.UserStatus;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AuthStatusEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 6477454494553403213L;
  @JsonProperty("firstName")
  private String firstName;
  @JsonProperty("gender")
  private String gender;
  @JsonProperty("isLoggedIn")
  private boolean isLoggedIn;
  @JsonProperty("lastName")
  private String lastName;
  @JsonProperty("optIn")
  private boolean optIn;
  @JsonProperty("cbsPackageInfo")
  private ArrayList<PackageInfo> packageInfo;
  private String ppid;
  @JsonProperty("success")
  private boolean success;
  @JsonProperty("touDate")
  private String touDate;
  @JsonProperty("touVersion")
  private String touVersion;
  @JsonProperty("userId")
  private long userId;
  @JsonProperty("userStatus")
  private UserStatus userStatus;
  
  public String getFirstName()
  {
    return firstName;
  }
  
  public String getGender()
  {
    return gender;
  }
  
  public String getLastName()
  {
    return lastName;
  }
  
  public ArrayList<PackageInfo> getPackageInfo()
  {
    return packageInfo;
  }
  
  public String getPpid()
  {
    return ppid;
  }
  
  public String getTouDate()
  {
    return touDate;
  }
  
  public String getTouVersion()
  {
    return touVersion;
  }
  
  public long getUserId()
  {
    return userId;
  }
  
  public UserStatus getUserStatus()
  {
    return userStatus;
  }
  
  public boolean isLoggedIn()
  {
    return isLoggedIn;
  }
  
  public boolean isOptIn()
  {
    return optIn;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setFirstName(String paramString)
  {
    firstName = paramString;
  }
  
  public void setGender(String paramString)
  {
    gender = paramString;
  }
  
  public void setLastName(String paramString)
  {
    lastName = paramString;
  }
  
  public void setLoggedIn(boolean paramBoolean)
  {
    isLoggedIn = paramBoolean;
  }
  
  public void setOptIn(boolean paramBoolean)
  {
    optIn = paramBoolean;
  }
  
  public void setPackageInfo(ArrayList<PackageInfo> paramArrayList)
  {
    packageInfo = paramArrayList;
  }
  
  public void setPpid(String paramString)
  {
    ppid = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
  
  public void setTouDate(String paramString)
  {
    touDate = touVersion;
  }
  
  public void setTouVersion(String paramString)
  {
    touVersion = paramString;
  }
  
  public void setUserId(long paramLong)
  {
    userId = paramLong;
  }
  
  public void setUserStatus(UserStatus paramUserStatus)
  {
    userStatus = paramUserStatus;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.AuthStatusEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */