package com.cbs.app.view.model.rest;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SolrHeader
  implements Serializable
{
  private static final long serialVersionUID = 4630259381109342058L;
  @JsonProperty("params")
  private String params;
  @JsonProperty("status")
  private int status;
  
  public String getParams()
  {
    return params;
  }
  
  public int getStatus()
  {
    return status;
  }
  
  public void setParams(String paramString)
  {
    params = paramString;
  }
  
  public void setStatus(int paramInt)
  {
    status = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.SolrHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */