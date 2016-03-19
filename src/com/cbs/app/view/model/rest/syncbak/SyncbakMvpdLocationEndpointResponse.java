package com.cbs.app.view.model.rest.syncbak;

import com.cbs.app.view.model.MVPDInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SyncbakMvpdLocationEndpointResponse
  extends SyncbakEndpointResponse
{
  private List<MVPDInfo> mvpds;
  
  public List<MVPDInfo> getMvpds()
  {
    return mvpds;
  }
  
  public void setMvpds(List<MVPDInfo> paramList)
  {
    mvpds = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.syncbak.SyncbakMvpdLocationEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */