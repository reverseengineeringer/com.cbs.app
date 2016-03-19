package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.AppConfig;
import com.cbs.app.view.model.Status;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class StatusEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 5173288340886171042L;
  @JsonProperty("appConfig")
  private AppConfig appConfig;
  @JsonProperty("NAME")
  private String name;
  @JsonProperty("appVersion")
  private Status status;
  @JsonProperty("success")
  private boolean success = false;
  
  public AppConfig getAppConfig()
  {
    return appConfig;
  }
  
  public String getName()
  {
    return name;
  }
  
  public Status getStatus()
  {
    return status;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setAppConfig(AppConfig paramAppConfig)
  {
    appConfig = paramAppConfig;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setStatus(Status paramStatus)
  {
    status = paramStatus;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.StatusEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */