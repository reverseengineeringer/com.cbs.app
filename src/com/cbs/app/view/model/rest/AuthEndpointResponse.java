package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AuthEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 6477454494553403310L;
  @JsonProperty("success")
  private boolean success;
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.AuthEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */