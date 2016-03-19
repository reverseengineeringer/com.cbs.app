package com.cbs.app.view;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.view.model.DeviceHome;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.rest.HomeEndpointResponse;
import com.cbs.app.view.model.rest.MarqueeResponse;
import com.cbs.app.view.model.rest.ScheduleResponse;
import com.cbs.app.view.utils.Util;
import java.util.List;

final class SplashActivity2$4
  implements ResponseModelListener
{
  SplashActivity2$4(SplashActivity2 paramSplashActivity2) {}
  
  public final void a()
  {
    SplashActivity2.a(a);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if ((paramResponseModel instanceof HomeEndpointResponse))
    {
      paramResponseModel = (HomeEndpointResponse)paramResponseModel;
      localObject = paramResponseModel.getMarqueeResponse();
      if (localObject != null)
      {
        localObject = ((MarqueeResponse)localObject).getDeviceHomeList();
        if (localObject != null) {
          SplashActivity2.a(a, (DeviceHome[])((List)localObject).toArray(new DeviceHome[((List)localObject).size()]));
        }
      }
      paramResponseModel = paramResponseModel.getScheduleResponse();
      if (paramResponseModel != null)
      {
        paramResponseModel = paramResponseModel.getScheduleList();
        if (paramResponseModel != null) {
          SplashActivity2.a(a, (Episode[])paramResponseModel.toArray(new Episode[paramResponseModel.size()]));
        }
      }
      a.b = true;
      if (Util.y(a) != null)
      {
        paramResponseModel = a;
        localObject = a;
        new MyCBSService().a((Context)localObject, new SplashActivity2.3(paramResponseModel, (Context)localObject));
      }
    }
    while (!SplashActivity2.a(a))
    {
      Object localObject;
      return;
      a.b();
      return;
    }
    UnableToConnectDialogHelper.a(a, "Refresh", a.j, "Exit", a.e);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */