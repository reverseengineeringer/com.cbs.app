package com.cbs.app.androiddata.model.rest;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class UserStatus
  implements Serializable
{
  @JsonProperty("type")
  private int a;
  @JsonProperty("description")
  private String b;
  
  public String getDescription()
  {
    return b;
  }
  
  public int getType()
  {
    return a;
  }
  
  public void setDescription(String paramString)
  {
    b = paramString;
  }
  
  public void setType(int paramInt)
  {
    a = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.UserStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */