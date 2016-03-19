package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class UserIpLookupResponse
  extends ResponseModel
{
  private boolean a;
  private String b;
  
  public String getIp()
  {
    return b;
  }
  
  public void setIp(String paramString)
  {
    b = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.UserIpLookupResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */