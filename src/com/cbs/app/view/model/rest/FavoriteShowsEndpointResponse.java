package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.FavoriteShowList;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class FavoriteShowsEndpointResponse
  extends ResponseModel
{
  private FavoriteShowList favshowlist;
  private boolean success;
  
  public FavoriteShowList getFavshowlist()
  {
    return favshowlist;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setFavshowlist(FavoriteShowList paramFavoriteShowList)
  {
    favshowlist = paramFavoriteShowList;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */