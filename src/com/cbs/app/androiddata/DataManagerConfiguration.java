package com.cbs.app.androiddata;

public class DataManagerConfiguration
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private boolean g;
  private boolean h;
  private boolean i = true;
  private boolean j = true;
  
  public final boolean a()
  {
    return i;
  }
  
  public final boolean b()
  {
    return g;
  }
  
  public final boolean c()
  {
    return h;
  }
  
  public String getCbsAppSecret()
  {
    return a;
  }
  
  public String getCbsHost()
  {
    return e;
  }
  
  public String getDeviceType()
  {
    return d;
  }
  
  public String getSyncbakAppKey()
  {
    return b;
  }
  
  public String getSyncbakAppSecret()
  {
    return c;
  }
  
  public String getSyncbakHost()
  {
    return f;
  }
  
  public void setCbsAppSecret(String paramString)
  {
    a = paramString;
  }
  
  public void setCbsHost(String paramString)
  {
    e = paramString;
  }
  
  public void setDeviceType(String paramString)
  {
    d = paramString;
  }
  
  public void setLoggingEnabled(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void setParallelExcecuationAllowed(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setSyncbakAppKey(String paramString)
  {
    b = paramString;
  }
  
  public void setSyncbakAppSecret(String paramString)
  {
    c = paramString;
  }
  
  public void setSyncbakHost(String paramString)
  {
    f = paramString;
  }
  
  public void setUseHttps(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void setUseResponseCache(boolean paramBoolean)
  {
    j = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.DataManagerConfiguration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */