package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ActivationCodeStatusResponse
  extends ResponseModel
{
  private boolean a;
  private long b;
  private long c;
  private String d;
  
  public long getCreationTime()
  {
    return b;
  }
  
  public String getDeviceToken()
  {
    return d;
  }
  
  public long getUserId()
  {
    return c;
  }
  
  public void setCreationTime(long paramLong)
  {
    b = paramLong;
  }
  
  public void setDeviceToken(String paramString)
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
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ActivationCodeStatusResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */