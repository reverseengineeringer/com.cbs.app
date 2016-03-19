package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.UserIpLookupResponse;

public class UserIpLookupServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return UserIpLookupResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/apps/user/ip.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.UserIpLookupServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */