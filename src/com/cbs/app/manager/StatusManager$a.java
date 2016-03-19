package com.cbs.app.manager;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.AppConfig;
import com.cbs.app.view.model.Status;
import com.cbs.app.view.model.rest.StatusEndpointResponse;
import com.cbs.app.view.utils.Util;

final class StatusManager$a
  implements ResponseModelListener
{
  private Context a = null;
  private StatusManager.StatusResponseListener b = null;
  
  public StatusManager$a(Context paramContext, StatusManager.StatusResponseListener paramStatusResponseListener)
  {
    b = paramStatusResponseListener;
    a = paramContext;
  }
  
  public final void a()
  {
    StatusManager.b = true;
    b.b();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    boolean bool1;
    boolean bool2;
    if ((paramResponseModel instanceof StatusEndpointResponse))
    {
      paramResponseModel = (StatusEndpointResponse)paramResponseModel;
      Status localStatus = paramResponseModel.getStatus();
      if (localStatus != null)
      {
        bool1 = localStatus.isUpgradeAvailable();
        bool2 = localStatus.isActive();
        if ((!bool1) || (bool2)) {
          break label73;
        }
        b.c();
        paramResponseModel = paramResponseModel.getAppConfig();
        if (paramResponseModel != null) {
          StatusManager.a = paramResponseModel.getAdServerOverride();
        }
      }
    }
    for (;;)
    {
      StatusManager.b = true;
      return;
      label73:
      if (!bool2)
      {
        b.d();
        break;
      }
      if (bool1)
      {
        Util.a(a, true);
        b.a();
        break;
      }
      Util.a(a, false);
      b.a();
      break;
      b.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.manager.StatusManager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */