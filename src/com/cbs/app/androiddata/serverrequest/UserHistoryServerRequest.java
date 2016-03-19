package com.cbs.app.androiddata.serverrequest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.rest.HistoryResponse;
import java.util.HashMap;

public class UserHistoryServerRequest
  extends BaseServerRequest
{
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return HistoryResponse.class;
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
    Object localObject2 = e + "/apps-api/v3.0/" + d + "/video/streams/history.json";
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
      if (b.get("page") != null) {
        if (i != 0) {
          break label213;
        }
      }
    }
    label213:
    for (localObject1 = (String)localObject1 + "?";; localObject1 = (String)localObject1 + "&")
    {
      localObject2 = (String)localObject1 + "page=" + (String)b.get("page");
      return (String)localObject2;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.UserHistoryServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */