package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ServerRequest;
import com.cbs.app.androiddata.model.rest.MyShowEndpointResponse;
import java.util.HashMap;

public class MyShowsServerRequest
  extends BaseServerRequest
  implements ServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return MyShowEndpointResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/" + d + "/lists/favoriteshows/unique/" + (String)b.get("uniqueName") + ".json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.MyShowsServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */