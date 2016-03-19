package com.cbs.app.service;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;

public class CBSRequestTypeInfo
{
  private String a = null;
  private String b = null;
  private ResponseModelListener c = null;
  private Class<? extends ResponseModel> d;
  private long e = 3600L;
  private boolean f = true;
  private boolean g = true;
  private boolean h = false;
  
  public String getApiVersion()
  {
    return a;
  }
  
  public Class<? extends ResponseModel> getClazz()
  {
    return d;
  }
  
  public String getEndpoint()
  {
    return b;
  }
  
  public ResponseModelListener getListener()
  {
    return c;
  }
  
  public long getTtl()
  {
    return e;
  }
  
  public void setApiVersion(String paramString)
  {
    a = paramString;
  }
  
  public void setClazz(Class<? extends ResponseModel> paramClass)
  {
    d = paramClass;
  }
  
  public void setEndpoint(String paramString)
  {
    b = paramString;
  }
  
  public void setListener(ResponseModelListener paramResponseModelListener)
  {
    c = paramResponseModelListener;
  }
  
  public void setLog(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setStaleOk(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void setTtl(long paramLong)
  {
    e = paramLong;
  }
  
  public void setUseCache(boolean paramBoolean)
  {
    f = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.CBSRequestTypeInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */