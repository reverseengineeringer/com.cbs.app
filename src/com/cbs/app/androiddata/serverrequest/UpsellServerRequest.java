package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.UpsellEndpointResponse;
import java.util.HashMap;

public class UpsellServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return UpsellEndpointResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/" + d + "/upsell.json?userState=" + (String)b.get("userState") + "&pageURL=" + (String)b.get("pageURL");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.UpsellServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */