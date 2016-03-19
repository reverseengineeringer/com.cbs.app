package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowDto
{
  private String a;
  
  public String getTitle()
  {
    return a;
  }
  
  public void setTitle(String paramString)
  {
    a = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.ShowDto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */