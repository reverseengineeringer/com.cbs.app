package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.ShowSeasonAvailabilityResponse;
import java.util.HashMap;

public class ShowSeasonServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return ShowSeasonAvailabilityResponse.class;
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
    d.equals("androidtv");
    return e + "/apps-api/v3.0/" + d + "/shows/" + (String)b.get("showId") + "/video/season/availability.json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.ShowSeasonServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */