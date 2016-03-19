package com.google.ads.interactivemedia.v3.impl.c;

import com.google.b.a;

@a(a=g.class)
public abstract class j
{
  private String a;
  
  public abstract String a();
  
  public abstract String b();
  
  public abstract String c();
  
  public abstract j.a d();
  
  public final String e()
  {
    return a;
  }
  
  public String toString()
  {
    String str1 = a;
    String str2 = a();
    String str3 = b();
    String str4 = c();
    String str5 = String.valueOf(d());
    return String.valueOf(str1).length() + 66 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + "CompanionData [companionId=" + str1 + ", size=" + str2 + ", src=" + str3 + ", clickThroughUrl=" + str4 + ", type=" + str5 + "]";
  }
}

/* Location:
 * Qualified Name:     com.google.ads.interactivemedia.v3.impl.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */