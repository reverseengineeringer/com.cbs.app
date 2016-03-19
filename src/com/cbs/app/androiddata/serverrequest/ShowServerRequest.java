package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.ShowEndpointResponse;
import java.util.HashMap;

public class ShowServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return ShowEndpointResponse.class;
  }
  
  public String getPostBody()
  {
    return null;
  }
  
  public String getPostBodyMimeType()
  {
    return null;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v3.0/" + d + "/shows/" + (String)b.get("showId") + ".json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.ShowServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */