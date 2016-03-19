package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.MarqueeEndpointResponse;

public class MarqueeServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return MarqueeEndpointResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v3.0/" + d + "/home/marquee.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.MarqueeServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */