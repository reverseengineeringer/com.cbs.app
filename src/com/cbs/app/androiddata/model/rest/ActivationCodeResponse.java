package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ActivationCodeResponse
  extends ResponseModel
{
  private long a;
  private String b;
  private boolean c;
  private long d;
  private String e;
  
  public String getActivationCode()
  {
    return b;
  }
  
  public String getDeviceToken()
  {
    return e;
  }
  
  public long getRetryDuration()
  {
    return d;
  }
  
  public long getRetryInterval()
  {
    return a;
  }
  
  public void setActivationCode(String paramString)
  {
    b = paramString;
  }
  
  public void setDeviceToken(String paramString)
  {
    e = paramString;
  }
  
  public void setRetryDuration(long paramLong)
  {
    d = paramLong;
  }
  
  public void setRetryInterval(long paramLong)
  {
    a = paramLong;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    c = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ActivationCodeResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */