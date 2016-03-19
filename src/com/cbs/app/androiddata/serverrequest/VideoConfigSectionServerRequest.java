package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.VideoConfigSectionResponse;
import java.util.HashMap;

public class VideoConfigSectionServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return VideoConfigSectionResponse.class;
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
    StringBuilder localStringBuilder = new StringBuilder().append(e).append("/apps-api/v2.0/").append(d).append("/videos/section/").append((String)b.get("sectionId")).append(".json?begin=").append((String)b.get("begin")).append("&rows=").append((String)b.get("rows"));
    if (b.get("seasonNum") != null) {}
    for (String str = "&params=seasonNum%3D" + (String)b.get("seasonNum");; str = "") {
      return str;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.VideoConfigSectionServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */