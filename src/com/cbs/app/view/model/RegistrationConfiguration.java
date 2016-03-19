package com.cbs.app.view.model;

import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class RegistrationConfiguration
  implements Serializable
{
  private static final long serialVersionUID = 27272L;
  private Map<String, String> other = new HashMap();
  private String property;
  
  @JsonAnyGetter
  public Map<String, String> any()
  {
    return other;
  }
  
  public String getProperty()
  {
    return property;
  }
  
  public boolean hasUnknowProperties()
  {
    return !other.isEmpty();
  }
  
  @JsonAnySetter
  public void set(String paramString1, String paramString2)
  {
    other.put(paramString1, paramString2);
  }
  
  public void setProperty(String paramString)
  {
    property = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.RegistrationConfiguration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */