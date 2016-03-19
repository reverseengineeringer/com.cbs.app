package com.cbs.app.androiddata;

import java.io.Serializable;

public class CacheEntry
  implements Serializable
{
  private static final String a = CacheEntry.class.getSimpleName();
  private long b = 0L;
  private long c = 3600L;
  private ResponseModel d;
  private boolean e = true;
  
  public CacheEntry()
  {
    this(null);
  }
  
  public CacheEntry(ResponseModel paramResponseModel)
  {
    d = paramResponseModel;
    b = (System.currentTimeMillis() / 1000L);
  }
  
  public final boolean a()
  {
    boolean bool = false;
    long l = System.currentTimeMillis() / 1000L;
    if (b >= l - c) {
      bool = true;
    }
    return bool;
  }
  
  public long getEntered()
  {
    return b;
  }
  
  public ResponseModel getResponseModel()
  {
    return d;
  }
  
  public long getTimeToLive()
  {
    return c;
  }
  
  public void setEntered(long paramLong)
  {
    b = paramLong;
  }
  
  public void setResponseModel(ResponseModel paramResponseModel)
  {
    d = paramResponseModel;
  }
  
  public void setShowIfExpired(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void setTimeToLive(long paramLong)
  {
    c = paramLong;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\n");
    localStringBuilder.append(" \"showIfExpired\": ");
    if (e) {}
    for (String str = "true";; str = "false")
    {
      localStringBuilder.append(str);
      localStringBuilder.append(",\n \"entered\": ");
      localStringBuilder.append(b);
      localStringBuilder.append(",\n \"timeToLive\": ");
      localStringBuilder.append(c);
      localStringBuilder.append(",\n \"responseModel\": \"");
      localStringBuilder.append(d.toString());
      localStringBuilder.append("\"\n}");
      return localStringBuilder.toString();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.CacheEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */