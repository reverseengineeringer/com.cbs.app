package com.cbs.app.service;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.StatusEndpointResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class StatusServiceImpl
  extends CBSBaseService
  implements StatusService
{
  public static final String b = StatusServiceImpl.class.getSimpleName();
  
  public final void a(Context paramContext, ResponseModelListener paramResponseModelListener)
  {
    Object localObject = "/app/status.json";
    try
    {
      String str = "/app/status.json" + "?osv=" + Build.VERSION.RELEASE + "&hwv=" + URLEncoder.encode(Build.DEVICE, "UTF-8") + URLEncoder.encode(Build.MODEL, "UTF-8") + URLEncoder.encode(Build.PRODUCT, "UTF-8");
      localObject = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        Log.e(b, localUnsupportedEncodingException.getLocalizedMessage());
      }
    }
    a(paramContext, "v2.0", (String)localObject, paramResponseModelListener, StatusEndpointResponse.class, 10L, false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.StatusServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */