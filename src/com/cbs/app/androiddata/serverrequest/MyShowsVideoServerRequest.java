package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.MyShowsVideoEndpointResponse;
import java.util.HashMap;

public class MyShowsVideoServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return MyShowsVideoEndpointResponse.class;
  }
  
  public String getUrl()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(e).append("/apps-api/v2.0/").append(d).append("/mycbs.json?showIdList=").append((String)b.get("showIdList")).append("&maxVideoCount=");
    if (b.get("maxVideoCount") == null) {}
    for (String str = "10";; str = (String)b.get("maxVideoCount")) {
      return str;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.MyShowsVideoServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */