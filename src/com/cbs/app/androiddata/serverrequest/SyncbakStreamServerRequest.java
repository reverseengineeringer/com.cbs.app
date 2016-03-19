package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.SyncbakStreamsEndpointResponse;
import java.util.HashMap;

public class SyncbakStreamServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return SyncbakStreamsEndpointResponse.class;
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
    return e + "/v3/streams?stationId=" + (String)b.get("stationId") + "&mediaId=" + (String)b.get("mediaId");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.SyncbakStreamServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */