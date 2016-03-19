package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.Util;
import com.cbs.app.androiddata.model.rest.ShowAddedEndpointResponse;
import java.util.HashMap;

public class AddMyShowServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "POST";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return ShowAddedEndpointResponse.class;
  }
  
  public String getPostBody()
  {
    return Util.a(b);
  }
  
  public String getUrl()
  {
    return e + "/apps-api/" + d + "/lists/favoriteshows/unique/" + (String)b.get("uniqueName") + "/item/add.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.AddMyShowServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */