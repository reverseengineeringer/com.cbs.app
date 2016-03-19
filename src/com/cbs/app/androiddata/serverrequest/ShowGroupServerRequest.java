package com.cbs.app.androiddata.serverrequest;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.androiddata.ServerRequest;
import com.cbs.app.androiddata.model.rest.SingleShowGroupResponse;
import java.util.HashMap;

public class ShowGroupServerRequest
  extends BaseServerRequest
  implements ServerRequest
{
  public Context getContext()
  {
    return a;
  }
  
  public String getHttpMethod()
  {
    return "GET";
  }
  
  public ResponseModelListener getListener()
  {
    return c;
  }
  
  public Class<? extends ResponseModel> getMappingClass()
  {
    return SingleShowGroupResponse.class;
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
    return e + "/apps-api/v2.0/" + d + "/shows/group/" + (String)b.get("groupId") + ".json";
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.ShowGroupServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */