package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.PostalCodeResponse;
import java.util.HashMap;

public class PostalCodeVerifyServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return PostalCodeResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v2.0/zipcode/check.json?country=" + (String)b.get("country") + "&zip=" + (String)b.get("zip");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.PostalCodeVerifyServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */