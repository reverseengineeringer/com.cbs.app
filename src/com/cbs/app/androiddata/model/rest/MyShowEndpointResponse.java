package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.FavoriteShowList;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class MyShowEndpointResponse
  extends ResponseModel
{
  private boolean a;
  private FavoriteShowList b;
  
  public FavoriteShowList getFavshowlist()
  {
    return b;
  }
  
  public void setFavshowlist(FavoriteShowList paramFavoriteShowList)
  {
    b = paramFavoriteShowList;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.MyShowEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */