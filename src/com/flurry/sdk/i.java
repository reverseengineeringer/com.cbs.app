package com.flurry.sdk;

import android.widget.Toast;

public class i
  extends at
  implements bk.a
{
  static String a = "http://data.flurry.com/aap.do";
  static String b = "https://data.flurry.com/aap.do";
  private static final String g = i.class.getSimpleName();
  private String h;
  private boolean i;
  
  public i()
  {
    this((byte)0);
  }
  
  private i(byte paramByte)
  {
    super("Analytics", i.class.getSimpleName());
    f = "AnalyticsData_";
    bj localbj = bj.a();
    i = ((Boolean)localbj.a("UseHttps")).booleanValue();
    localbj.a("UseHttps", this);
    am.a(4, g, "initSettings, UseHttps = " + i);
    String str = (String)localbj.a("ReportUrl");
    localbj.a("ReportUrl", this);
    a(str);
    am.a(4, g, "initSettings, ReportUrl = " + str);
    a(null);
  }
  
  private void a(String paramString)
  {
    if ((paramString != null) && (!paramString.endsWith(".do"))) {
      am.a(5, g, "overriding analytics agent report URL without an endpoint, are you sure?");
    }
    h = paramString;
  }
  
  public final void a(String paramString, Object paramObject)
  {
    int j = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (j)
      {
      default: 
        am.a(6, g, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("UseHttps"))
        {
          j = 0;
          continue;
          if (paramString.equals("ReportUrl")) {
            j = 1;
          }
        }
        break;
      }
    }
    i = ((Boolean)paramObject).booleanValue();
    am.a(4, g, "onSettingUpdate, UseHttps = " + i);
    return;
    paramString = (String)paramObject;
    a(paramString);
    am.a(4, g, "onSettingUpdate, ReportUrl = " + paramString);
  }
  
  protected final void a(String paramString1, String paramString2, final int paramInt)
  {
    bt local2 = new bt()
    {
      public final void a()
      {
        if (paramInt == 200) {
          a.a().d();
        }
      }
    };
    y.a().b(local2);
    super.a(paramString1, paramString2, paramInt);
  }
  
  protected final void a(byte[] paramArrayOfByte, final String paramString1, final String paramString2)
  {
    String str;
    if (h != null) {
      str = h;
    }
    for (;;)
    {
      am.a(4, g, "FlurryDataSender: start upload data " + paramArrayOfByte + " with id = " + paramString1 + " to " + str);
      aq localaq = new aq();
      localaq.a(str);
      localaq.f();
      localaq.a(ar.a.c);
      localaq.a("Content-Type", "application/octet-stream");
      localaq.a(new ax());
      localaq.a(paramArrayOfByte);
      localaq.a(new aq.a() {});
      w.a().a(this, localaq);
      return;
      if (i) {
        str = b;
      } else {
        str = a;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */