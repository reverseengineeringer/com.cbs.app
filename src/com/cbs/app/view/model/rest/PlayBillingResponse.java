package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class PlayBillingResponse
  extends ResponseModel
{
  private String message;
  private String subscriptionId;
  private boolean success;
  private String token;
  
  public String getMessage()
  {
    return message;
  }
  
  public String getSubscriptionId()
  {
    return subscriptionId;
  }
  
  public String getToken()
  {
    return token;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setMessage(String paramString)
  {
    message = paramString;
  }
  
  public void setSubscriptionId(String paramString)
  {
    subscriptionId = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
  
  public void setToken(String paramString)
  {
    token = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.PlayBillingResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */