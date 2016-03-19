package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.MVPDConfig;
import java.util.List;

public class MVPDConfigsEndpointResponse
  extends ResponseModel
{
  private List<MVPDConfig> mvpdConfigList;
  private boolean success;
  
  public List<MVPDConfig> getMvpdConfigList()
  {
    return mvpdConfigList;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
  
  public void setMvpdConfigList(List<MVPDConfig> paramList)
  {
    mvpdConfigList = paramList;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    success = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.MVPDConfigsEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */