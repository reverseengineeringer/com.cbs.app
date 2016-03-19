package com.cbs.app.androiddata.model.rest;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SolrHeader
{
  @JsonProperty("params")
  private String a;
  @JsonProperty("status")
  private int b;
  
  public String getParams()
  {
    return a;
  }
  
  public int getStatus()
  {
    return b;
  }
  
  public void setParams(String paramString)
  {
    a = paramString;
  }
  
  public void setStatus(int paramInt)
  {
    b = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.SolrHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */