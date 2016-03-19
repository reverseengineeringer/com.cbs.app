package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.ShowMenu;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class ShowMenuResponse
  extends ResponseModel
{
  private List<ShowMenu> a;
  private boolean b;
  
  public List<ShowMenu> getShowMenu()
  {
    return a;
  }
  
  public void setShowMenu(List<ShowMenu> paramList)
  {
    a = paramList;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.ShowMenuResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */