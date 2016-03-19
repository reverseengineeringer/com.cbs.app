package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.Util;
import com.cbs.app.androiddata.model.rest.MyShowEndpointResponse;

public class CreateMyShowsListServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "POST";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return MyShowEndpointResponse.class;
  }
  
  public String getPostBody()
  {
    return Util.a(b);
  }
  
  public String getUrl()
  {
    return e + "/apps-api/" + d + "/lists/favoriteshows/create.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.CreateMyShowsListServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */