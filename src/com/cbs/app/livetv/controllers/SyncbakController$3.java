package com.cbs.app.livetv.controllers;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.view.model.rest.syncbak.SyncbakChannelsEndpointResponse;
import java.util.ArrayList;

final class SyncbakController$3
  implements ResponseModelListener
{
  SyncbakController$3(SyncbakController paramSyncbakController) {}
  
  public final void a()
  {
    if (!a.e()) {
      return;
    }
    ((SyncbakCallback)a.getCallback()).a(2002, null);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    boolean bool2 = false;
    SyncbakController.i();
    new StringBuilder("success() called with: model = [").append(paramResponseModel).append("]");
    if (!a.e()) {
      return;
    }
    if ((paramResponseModel instanceof SyncbakChannelsEndpointResponse))
    {
      paramResponseModel = ((SyncbakChannelsEndpointResponse)paramResponseModel).getChannels();
      bool1 = bool2;
      if (paramResponseModel != null)
      {
        bool1 = bool2;
        if (paramResponseModel.size() <= 0) {}
      }
    }
    for (boolean bool1 = true;; bool1 = false)
    {
      ((SyncbakCallback)a.getCallback()).a(bool1);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SyncbakController.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */