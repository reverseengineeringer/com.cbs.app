package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.model.MVPDInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakMvpdLocationEndpointResponse
  extends SyncbakEndpointResponse
{
  private List<MVPDInfo> a;
  
  public List<MVPDInfo> getMvpds()
  {
    return a;
  }
  
  public void setMvpds(List<MVPDInfo> paramList)
  {
    a = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.SyncbakMvpdLocationEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */