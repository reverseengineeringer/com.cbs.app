package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.HashMap;

@JsonIgnoreProperties(ignoreUnknown=true)
public class CreateEndpointResponse
  extends ResponseModel
{
  private static final long serialVersionUID = 2065787599878290402L;
  @JsonProperty("errorMessages")
  private HashMap<String, String> errorMessages;
  @JsonProperty("errors")
  private HashMap<String, String> errors;
  @JsonProperty("message")
  private String message;
  @JsonProperty("success")
  private boolean success;
  @JsonProperty("userId")
  private long userId;
  
  public HashMap<String, String> getErrorMessages()
  {
    return errorMessages;
  }
  
  public HashMap<String, String> getErrors()
  {
    return errors;
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public long getUserId()
  {
    return userId;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setErrorMessages(HashMap<String, String> paramHashMap)
  {
    errorMessages = paramHashMap;
  }
  
  public void setErrors(HashMap<String, String> paramHashMap)
  {
    errors = paramHashMap;
  }
  
  public void setMessage(String paramString)
  {
    message = paramString;
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
 * Qualified Name:     com.cbs.app.view.model.rest.CreateEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */