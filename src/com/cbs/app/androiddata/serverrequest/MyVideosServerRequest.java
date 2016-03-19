package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ServerRequest;
import com.cbs.app.androiddata.model.rest.MyVideoResponse;

public class MyVideosServerRequest
  extends BaseServerRequest
  implements ServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return MyVideoResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v3.0/" + d + "/user/video/mycbs.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.MyVideosServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */