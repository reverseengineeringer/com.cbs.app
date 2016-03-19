package com.cbs.app.view.model.registration;

import com.cbs.app.livetv.model.UserStatusEnum;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class UserStatus
  implements Serializable
{
  @JsonProperty("description")
  private String description;
  @JsonProperty("type")
  private int type;
  
  public String getDescription()
  {
    return description;
  }
  
  public UserStatusEnum getStatus()
  {
    return UserStatusEnum.values()[type];
  }
  
  public int getType()
  {
    return type;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
  }
  
  public void setType(int paramInt)
  {
    type = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.registration.UserStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */