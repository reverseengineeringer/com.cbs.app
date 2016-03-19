package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SocialLoginEndpointResponse
  extends ResponseModel
{
  @JsonProperty("success")
  private boolean a;
  @JsonProperty("isLoggedIn")
  private boolean b;
  @JsonProperty("userId")
  private long c;
  @JsonProperty("registrationStatus")
  private String d;
  
  public String getRegistrationStatus()
  {
    return d;
  }
  
  public long getUserId()
  {
    return c;
  }
  
  public void setLoggedIn(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void setRegistrationStatus(String paramString)
  {
    d = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setUserId(long paramLong)
  {
    c = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.SocialLoginEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */