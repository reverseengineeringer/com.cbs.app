package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.VideoConfigResponse;
import java.util.HashMap;

public class VideoConfigServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return VideoConfigResponse.class;
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
    Object localObject2 = e + "/apps-api/v2.0/" + d + "/shows/" + (String)b.get("showId") + "/videos/config/" + (String)b.get("uniqueName") + ".json";
    int j = 0;
    int i = j;
    Object localObject1 = localObject2;
    if (b != null)
    {
      i = j;
      localObject1 = localObject2;
      if (b.get("rows") != null)
      {
        localObject1 = (String)localObject2 + "?";
        localObject1 = (String)localObject1 + "rows=" + (String)b.get("rows");
        i = 1;
      }
    }
    localObject2 = localObject1;
    if (b != null)
    {
      localObject2 = localObject1;
      if (b.get("platformType") != null) {
        if (i != 0) {
          break label253;
        }
      }
    }
    label253:
    for (localObject1 = (String)localObject1 + "?";; localObject1 = (String)localObject1 + "&")
    {
      localObject2 = (String)localObject1 + "platformType=" + (String)b.get("platformType");
      return (String)localObject2;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.VideoConfigServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */