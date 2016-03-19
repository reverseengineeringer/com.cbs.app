package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.FavoriteShow;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAddedEndpointResponse
  extends ResponseModel
{
  private String a;
  private boolean b;
  private FavoriteShow c;
  
  public FavoriteShow getItem()
  {
    return c;
  }
  
  public String getMessage()
  {
    return a;
  }
  
  public void setItem(FavoriteShow paramFavoriteShow)
  {
    c = paramFavoriteShow;
  }
  
  public void setMessage(String paramString)
  {
    a = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowAddedEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */