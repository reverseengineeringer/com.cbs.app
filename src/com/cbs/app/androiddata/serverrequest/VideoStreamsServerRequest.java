package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.VideoStreamsEndpoint;
import java.util.HashMap;

public class VideoStreamsServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return VideoStreamsEndpoint.class;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v3.0/" + d + "/video/streams.json?contentId=" + (String)b.get("contentId");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.VideoStreamsServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */