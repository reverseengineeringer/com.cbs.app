package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.Util;
import com.cbs.app.androiddata.model.rest.ActivationCodeStatusResponse;

public class ActivationCodeStatusServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "POST";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return ActivationCodeStatusResponse.class;
  }
  
  public String getPostBody()
  {
    return Util.a(b);
  }
  
  public String getPostBodyMimeType()
  {
    return null;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v2.0/" + d + "/ott/auth/status.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.ActivationCodeStatusServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */