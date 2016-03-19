package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ReconcileEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final String TAG = ReconcileEndpointResponse.class.getSimpleName();
  private static final long serialVersionUID = -3362486830120903207L;
  @JsonProperty("isLoggedIn")
  private boolean isLoggedIn;
  @JsonProperty("registrationStatus")
  private String registrationStatus;
  @JsonProperty("success")
  private boolean success;
  @JsonProperty("userId")
  private long userId;
  
  public String getRegistrationStatus()
  {
    return registrationStatus;
  }
  
  public long getUserId()
  {
    return userId;
  }
  
  public boolean isLoggedIn()
  {
    return isLoggedIn;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setLoggedIn(boolean paramBoolean)
  {
    isLoggedIn = paramBoolean;
  }
  
  public void setRegistrationStatus(String paramString)
  {
    registrationStatus = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
  
  public void setUserId(long paramLong)
  {
    userId = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ReconcileEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */