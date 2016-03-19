package com.cbs.app.androiddata.serverrequest;

import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.StatusEndpointResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class AppStatusServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return StatusEndpointResponse.class;
  }
  
  public String getUrl()
  {
    Object localObject = "";
    try
    {
      String str = Build.DEVICE + " " + Build.PRODUCT;
      localObject = str;
      str = URLEncoder.encode(str, "UTF-8");
      localObject = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        Log.e("AppStatusServerRequest", "exception: " + localUnsupportedEncodingException.getLocalizedMessage(), localUnsupportedEncodingException);
      }
    }
    return e + "/apps-api/v2.0/" + d + "/app/status.json?osv=" + Build.VERSION.RELEASE + "&hwv=" + (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.AppStatusServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */