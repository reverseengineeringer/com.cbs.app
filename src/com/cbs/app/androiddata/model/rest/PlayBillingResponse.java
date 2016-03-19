package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class PlayBillingResponse
  extends ResponseModel
{
  private String a;
  private boolean b;
  private String c;
  private String d;
  
  public String getMessage()
  {
    return d;
  }
  
  public String getSubscriptionId()
  {
    return a;
  }
  
  public String getToken()
  {
    return c;
  }
  
  public void setMessage(String paramString)
  {
    d = paramString;
  }
  
  public void setSubscriptionId(String paramString)
  {
    a = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void setToken(String paramString)
  {
    c = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.PlayBillingResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */