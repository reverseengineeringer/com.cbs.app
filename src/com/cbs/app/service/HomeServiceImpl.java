package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.DeviceHome;
import com.cbs.app.view.model.rest.HomeEndpointResponse;

public class HomeServiceImpl
  extends CBSBaseService
  implements HomeService
{
  private static final String b = HomeService.class.getSimpleName();
  private static DeviceHome[] c = null;
  
  public final void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    b(paramContext, "v3.0", "/home.json?userState=" + paramString + "&includeAssets=false", paramResponseModelListener, HomeEndpointResponse.class);
  }
  
  public DeviceHome[] getHomePhotoData()
  {
    return c;
  }
  
  public void setHomePhotoData(DeviceHome[] paramArrayOfDeviceHome)
  {
    if (paramArrayOfDeviceHome != null) {
      new StringBuilder("Home Photo list NOT null : size :").append(paramArrayOfDeviceHome.length);
    }
    c = paramArrayOfDeviceHome;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.HomeServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */