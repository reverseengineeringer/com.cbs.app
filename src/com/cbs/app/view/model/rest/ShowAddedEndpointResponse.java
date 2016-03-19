package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.FavoriteShow;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.io.Serializable;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowAddedEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = 578355554963557L;
  private FavoriteShow item;
  private String message;
  private boolean success;
  
  public FavoriteShow getItem()
  {
    return item;
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setItem(FavoriteShow paramFavoriteShow)
  {
    item = paramFavoriteShow;
  }
  
  public void setMessage(String paramString)
  {
    message = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.ShowAddedEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */