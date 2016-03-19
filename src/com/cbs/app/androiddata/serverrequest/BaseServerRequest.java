package com.cbs.app.androiddata.serverrequest;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.androiddata.ServerRequest;
import java.util.HashMap;

public abstract class BaseServerRequest
  implements ServerRequest
{
  protected Context a;
  protected HashMap<String, String> b;
  protected ResponseModelListener c;
  protected String d;
  protected String e;
  protected long f;
  protected boolean g = true;
  
  public Context getContext()
  {
    return a;
  }
  
  public abstract String getHttpMethod();
  
  public ResponseModelListener getListener()
  {
    return c;
  }
  
  public abstract Class<? extends ResponseModel> getMappingClass();
  
  public String getPostBody()
  {
    return null;
  }
  
  public String getPostBodyMimeType()
  {
    return null;
  }
  
  public long getTimeToLive()
  {
    return f;
  }
  
  public abstract String getUrl();
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.serverrequest.BaseServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */