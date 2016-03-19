package com.flurry.sdk;

import android.location.Criteria;
import android.location.Location;

public final class bj
  extends bk
{
  public static final Integer a = Integer.valueOf(195);
  public static final Integer b = Integer.valueOf(5);
  public static final Integer c = Integer.valueOf(3);
  public static final Integer d = Integer.valueOf(0);
  public static final String e = null;
  public static final Boolean f = Boolean.valueOf(true);
  public static final Boolean g = Boolean.valueOf(true);
  public static final String h = null;
  public static final Boolean i = Boolean.valueOf(true);
  public static final Criteria j = null;
  public static final Location k = null;
  public static final Long l = Long.valueOf(10000L);
  public static final Boolean m = Boolean.valueOf(true);
  public static final Long n = null;
  public static final Byte o = Byte.valueOf((byte)-1);
  private static bj p;
  
  private bj()
  {
    a("AgentVersion", a);
    a("ReleaseMajorVersion", b);
    a("ReleaseMinorVersion", c);
    a("ReleasePatchVersion", d);
    a("ReleaseBetaVersion", "");
    a("VersionName", e);
    a("CaptureUncaughtExceptions", f);
    a("UseHttps", g);
    a("ReportUrl", h);
    a("ReportLocation", i);
    a("ExplicitLocation", k);
    a("ContinueSessionMillis", l);
    a("LogEvents", m);
    a("Age", n);
    a("Gender", o);
    a("UserId", "");
  }
  
  public static bj a()
  {
    try
    {
      if (p == null) {
        p = new bj();
      }
      bj localbj = p;
      return localbj;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */