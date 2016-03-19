package com.cbs.app.androiddata.model;

public class DeviceData
{
  private String a;
  private double b;
  private double c;
  private int d;
  private int e;
  private int f = 0;
  private String g;
  private int h = 4;
  private String i;
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{ ");
    localStringBuilder.append(" \"deviceId\": \"");
    localStringBuilder.append(a);
    localStringBuilder.append("\", ");
    if ((b == 0.0D) && (c == 0.0D))
    {
      localStringBuilder.append(" \"ip\": \"");
      localStringBuilder.append(g);
      localStringBuilder.append("\", ");
    }
    for (;;)
    {
      localStringBuilder.append(" \"locationAge\": ");
      localStringBuilder.append(e);
      localStringBuilder.append(", ");
      localStringBuilder.append(" \"locationAccuracy\": ");
      localStringBuilder.append(d);
      localStringBuilder.append(", ");
      localStringBuilder.append(" \"deviceType\": ");
      localStringBuilder.append(h);
      localStringBuilder.append(", ");
      if ((i != null) && (!i.isEmpty()))
      {
        localStringBuilder.append(" \"MVPDId\": ");
        localStringBuilder.append("\"" + i + "\"");
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(" \"isPhone\": ");
      localStringBuilder.append(f);
      localStringBuilder.append(" ");
      localStringBuilder.append("}");
      return localStringBuilder.toString();
      localStringBuilder.append(" \"latitude\": ");
      localStringBuilder.append(b);
      localStringBuilder.append(", ");
      localStringBuilder.append(" \"longitude\": ");
      localStringBuilder.append(c);
      localStringBuilder.append(", ");
    }
  }
  
  public String getDeviceId()
  {
    return a;
  }
  
  public int getDeviceType()
  {
    return h;
  }
  
  public String getIp()
  {
    return g;
  }
  
  public int getIsPhone()
  {
    return f;
  }
  
  public double getLatitude()
  {
    return b;
  }
  
  public int getLocationAccuracy()
  {
    return d;
  }
  
  public int getLocationAge()
  {
    return e;
  }
  
  public double getLongitude()
  {
    return c;
  }
  
  public String getMVPDId()
  {
    return i;
  }
  
  public void setDeviceId(String paramString)
  {
    a = paramString;
  }
  
  public void setDeviceType(int paramInt)
  {
    h = paramInt;
  }
  
  public void setIp(String paramString)
  {
    g = paramString;
  }
  
  public void setIsPhone(int paramInt)
  {
    f = paramInt;
  }
  
  public void setLatitude(double paramDouble)
  {
    b = paramDouble;
  }
  
  public void setLocationAccuracy(int paramInt)
  {
    d = paramInt;
  }
  
  public void setLocationAge(int paramInt)
  {
    e = paramInt;
  }
  
  public void setLongitude(double paramDouble)
  {
    c = paramDouble;
  }
  
  public void setMVPDId(String paramString)
  {
    i = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.DeviceData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */