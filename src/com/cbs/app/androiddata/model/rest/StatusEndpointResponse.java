package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.AppConfig;
import com.cbs.app.androiddata.model.Status;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class StatusEndpointResponse
  extends ResponseModel
{
  @JsonProperty("success")
  private boolean a = false;
  @JsonProperty("appVersion")
  private Status b;
  @JsonProperty("NAME")
  private String c;
  @JsonProperty("appConfig")
  private AppConfig d;
  
  public AppConfig getAppConfig()
  {
    return d;
  }
  
  public String getName()
  {
    return c;
  }
  
  public Status getStatus()
  {
    return b;
  }
  
  public void setAppConfig(AppConfig paramAppConfig)
  {
    d = paramAppConfig;
  }
  
  public void setName(String paramString)
  {
    c = paramString;
  }
  
  public void setStatus(Status paramStatus)
  {
    b = paramStatus;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.StatusEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */