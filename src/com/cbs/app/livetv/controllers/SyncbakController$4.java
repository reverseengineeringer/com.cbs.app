package com.cbs.app.livetv.controllers;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.view.model.MVPDInfo;
import com.cbs.app.view.model.rest.syncbak.SyncbakMvpdLocationEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.Iterator;
import java.util.List;

final class SyncbakController$4
  implements ResponseModelListener
{
  SyncbakController$4(SyncbakController paramSyncbakController, String paramString) {}
  
  public final void a()
  {
    if (!b.e()) {
      return;
    }
    SyncbakCallback localSyncbakCallback = (SyncbakCallback)b.getCallback();
    if (Util.L(b.d())) {}
    for (String str = b.d().getString(2131231161);; str = null)
    {
      localSyncbakCallback.a(2012, str);
      return;
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    boolean bool2 = true;
    if (!b.e()) {
      return;
    }
    paramResponseModel = ((SyncbakMvpdLocationEndpointResponse)paramResponseModel).getMvpds();
    boolean bool1;
    if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
    {
      bool1 = true;
      if (!bool1) {
        break label138;
      }
      paramResponseModel = paramResponseModel.iterator();
      MVPDInfo localMVPDInfo;
      do
      {
        if (!paramResponseModel.hasNext()) {
          break;
        }
        localMVPDInfo = (MVPDInfo)paramResponseModel.next();
        SyncbakController.i();
        new StringBuilder("mvpd supported info: ").append(localMVPDInfo.getStationId()).append(" ").append(localMVPDInfo.getMvpdIdentifier());
      } while (!a.equals(localMVPDInfo.getMvpdIdentifier()));
    }
    for (;;)
    {
      ((SyncbakCallback)b.getCallback()).a(bool2, bool1);
      return;
      bool1 = false;
      break;
      label138:
      bool2 = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SyncbakController.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */