package com.cbs.app.livetv.controllers;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.view.model.VideoStreamsEndpoint;
import com.cbs.app.view.model.syncbak.SyncbakStream;

final class SyncbakController$2
  implements ResponseModelListener
{
  SyncbakController$2(SyncbakController paramSyncbakController, SyncbakStream paramSyncbakStream, int paramInt) {}
  
  public final void a()
  {
    if (!c.e()) {
      return;
    }
    ((SyncbakCallback)c.getCallback()).a(2005, null);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if (!c.e()) {}
    do
    {
      return;
      SyncbakController.i();
    } while (!(paramResponseModel instanceof VideoStreamsEndpoint));
    if (((VideoStreamsEndpoint)paramResponseModel).isOverThreshold())
    {
      ((SyncbakCallback)c.getCallback()).a(2013, null);
      return;
    }
    ((SyncbakCallback)c.getCallback()).a(a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SyncbakController.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */