package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.SyncbakScheduleEndpointResponse;
import java.util.HashMap;

public class SyncbakScheduleServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return SyncbakScheduleEndpointResponse.class;
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
    return e + "/v3/schedule?stationId=" + (String)b.get("stationId") + "&startTime=" + (String)b.get("start") + "&count=" + (String)b.get("count");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.SyncbakScheduleServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */