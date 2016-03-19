package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.HashMap;

@JsonIgnoreProperties(ignoreUnknown=true)
public class CreateEndpointResponse
  extends ResponseModel
{
  @JsonProperty("success")
  private boolean a;
  @JsonProperty("message")
  private String b;
  @JsonProperty("errors")
  private HashMap<String, String> c;
  @JsonProperty("errorMessages")
  private HashMap<String, String> d;
  @JsonProperty("userId")
  private long e;
  
  public HashMap<String, String> getErrorMessages()
  {
    return d;
  }
  
  public HashMap<String, String> getErrors()
  {
    return c;
  }
  
  public String getMessage()
  {
    return b;
  }
  
  public long getUserId()
  {
    return e;
  }
  
  public void setErrorMessages(HashMap<String, String> paramHashMap)
  {
    d = paramHashMap;
  }
  
  public void setErrors(HashMap<String, String> paramHashMap)
  {
    c = paramHashMap;
  }
  
  public void setMessage(String paramString)
  {
    b = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setUserId(long paramLong)
  {
    e = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.CreateEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */