package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.ScheduleEndpointResponse;

public class ScheduleServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return ScheduleEndpointResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v2.0/" + d + "/schedule.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.ScheduleServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */