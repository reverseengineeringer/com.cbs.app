package com.cbs.app.androiddata;

import android.content.Context;
import java.util.HashMap;

public class ServerRequestFactory$FactoryHolder
{
  private Context a;
  private HashMap<String, String> b;
  private ResponseModelListener c;
  private DataManagerConfiguration d;
  private String e;
  
  public DataManagerConfiguration getConfig()
  {
    return d;
  }
  
  public Context getContext()
  {
    return a;
  }
  
  @Deprecated
  public String getDeviceType()
  {
    return e;
  }
  
  public ResponseModelListener getListener()
  {
    return c;
  }
  
  public HashMap<String, String> getParams()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.ServerRequestFactory.FactoryHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */