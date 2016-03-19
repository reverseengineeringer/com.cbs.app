package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ServerRequest;
import com.cbs.app.androiddata.model.rest.SyncbakChannelsEndpointResponse;

public class SyncbakChannelServerRequest
  extends BaseServerRequest
  implements ServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return SyncbakChannelsEndpointResponse.class;
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
    return e + "/v3/channels";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.SyncbakChannelServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */