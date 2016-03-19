package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.NextEpisodeResponse;
import java.util.HashMap;

public class NextEpisodeServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return NextEpisodeResponse.class;
  }
  
  public String getUrl()
  {
    return e + "/apps-api/v3.0/" + d + "/shows/" + (String)b.get("showId") + "/video/autoplay/nextEpisode.json?contentId=" + (String)b.get("contentId");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.NextEpisodeServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */