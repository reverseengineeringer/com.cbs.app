package com.cbs.app.livetv.controllers;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.view.model.rest.syncbak.SyncbakStreamsEndpointResponse;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import java.util.ArrayList;

final class SyncbakController$1
  implements ResponseModelListener
{
  SyncbakController$1(SyncbakController paramSyncbakController, int paramInt) {}
  
  public final void a()
  {
    if (!b.e()) {
      return;
    }
    ((SyncbakCallback)b.getCallback()).a(2000, null);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if (!b.e()) {
      return;
    }
    paramResponseModel = (SyncbakStreamsEndpointResponse)paramResponseModel;
    ArrayList localArrayList = paramResponseModel.getStreams();
    if ((localArrayList != null) && (localArrayList.size() > 0))
    {
      SyncbakController.i();
      new StringBuilder("Stream Info :").append(paramResponseModel.getStreams().size());
      SyncbakController.i();
      new StringBuilder("Stream Info :").append(((SyncbakStream)localArrayList.get(0)).getUrl()).append(" ").append(((SyncbakStream)localArrayList.get(0)).getTypeDescription());
      SyncbakController.a(b, (SyncbakStream)localArrayList.get(a), a);
    }
    for (;;)
    {
      SyncbakController.i();
      new StringBuilder("Stream response :").append(paramResponseModel);
      return;
      ((SyncbakCallback)b.getCallback()).a(2007, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SyncbakController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */