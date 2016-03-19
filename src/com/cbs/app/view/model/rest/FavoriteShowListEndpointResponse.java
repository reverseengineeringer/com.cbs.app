package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.FavoriteShowList;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class FavoriteShowListEndpointResponse
  extends ResponseModel
{
  private ArrayList<FavoriteShowList> lists;
  private boolean success;
  
  public ArrayList<FavoriteShowList> getLists()
  {
    return lists;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setLists(ArrayList<FavoriteShowList> paramArrayList)
  {
    lists = paramArrayList;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.FavoriteShowListEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */