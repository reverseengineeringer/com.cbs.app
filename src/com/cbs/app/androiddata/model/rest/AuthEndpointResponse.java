package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AuthEndpointResponse
  extends ResponseModel
{
  @JsonProperty("success")
  private boolean a;
  
  public void setSuccess(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.AuthEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */