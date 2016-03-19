package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.Util;
import com.cbs.app.androiddata.model.rest.PlayBillingResponse;

public class PlayBillingServerVerifyRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "POST";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return PlayBillingResponse.class;
  }
  
  public String getPostBody()
  {
    return Util.a(b);
  }
  
  public String getPostBodyMimeType()
  {
    return "application/x-www-form-urlencoded";
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v2.0/" + d + "/googleplay/purchase.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.PlayBillingServerVerifyRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */