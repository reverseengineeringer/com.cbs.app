package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.ShowGroupResponse;

public class AllShowsGroupsServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return ShowGroupResponse.class;
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
    return e + "/apps-api/v2.0/" + d + "/shows/groups.json?includeAllShowGroups=true";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.AllShowsGroupsServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */