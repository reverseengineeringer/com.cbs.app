package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.AffiliateEndpointResponse;
import java.util.HashMap;

public class AffiliateServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return AffiliateEndpointResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/ext/v2.0/cbs/affiliate/" + (String)b.get("affiliateName") + ".json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.AffiliateServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */