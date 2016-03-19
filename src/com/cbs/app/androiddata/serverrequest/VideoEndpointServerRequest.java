package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.VideoEndpointResponse;
import java.util.HashMap;

public class VideoEndpointServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return VideoEndpointResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v2.0/" + d + "/video/cid/" + (String)b.get("contentId") + ".json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.VideoEndpointServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */