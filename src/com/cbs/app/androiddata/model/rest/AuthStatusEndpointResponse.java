package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.PackageInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AuthStatusEndpointResponse
  extends ResponseModel
{
  @JsonProperty("success")
  private boolean a;
  @JsonProperty("isLoggedIn")
  private boolean b;
  @JsonProperty("lastName")
  private String c;
  @JsonProperty("firstName")
  private String d;
  @JsonProperty("gender")
  private String e;
  @JsonProperty("optIn")
  private boolean f;
  @JsonProperty("userStatus")
  private UserStatus g;
  @JsonProperty("cbsPackageInfo")
  private ArrayList<PackageInfo> h;
  @JsonProperty("userId")
  private long i;
  @JsonProperty("touVersion")
  private String j;
  @JsonProperty("touDate")
  private String k;
  private String l;
  
  public String getFirstName()
  {
    return d;
  }
  
  public String getGender()
  {
    return e;
  }
  
  public String getLastName()
  {
    return c;
  }
  
  public ArrayList<PackageInfo> getPackageInfo()
  {
    return h;
  }
  
  public String getPpid()
  {
    return l;
  }
  
  public String getTouDate()
  {
    return k;
  }
  
  public String getTouVersion()
  {
    return j;
  }
  
  public long getUserId()
  {
    return i;
  }
  
  public UserStatus getUserStatus()
  {
    return g;
  }
  
  public void setFirstName(String paramString)
  {
    d = paramString;
  }
  
  public void setGender(String paramString)
  {
    e = paramString;
  }
  
  public void setLastName(String paramString)
  {
    c = paramString;
  }
  
  public void setLoggedIn(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void setOptIn(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setPackageInfo(ArrayList<PackageInfo> paramArrayList)
  {
    h = paramArrayList;
  }
  
  public void setPpid(String paramString)
  {
    l = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setTouDate(String paramString)
  {
    k = j;
  }
  
  public void setTouVersion(String paramString)
  {
    j = paramString;
  }
  
  public void setUserId(long paramLong)
  {
    i = paramLong;
  }
  
  public void setUserStatus(UserStatus paramUserStatus)
  {
    g = paramUserStatus;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.AuthStatusEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */