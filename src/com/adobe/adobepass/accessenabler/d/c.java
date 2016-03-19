package com.adobe.adobepass.accessenabler.d;

import android.util.Log;
import java.util.ArrayList;

public final class c
{
  private static boolean a = true;
  private static ArrayList<a> b = new ArrayList();
  
  private static void a(a parama)
  {
    if (b.size() >= 100) {
      b.remove(0);
    }
    b.add(parama);
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (a) {
      a(new a(f.a(), paramString2, b.b, paramString1));
    }
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (a)
    {
      Log.e(paramString1, paramString2);
      a(new a(f.a(), paramString2, b.c, paramString1));
    }
  }
  
  public static final class a
  {
    public String a;
    public String b;
    public c.b c;
    public String d;
    
    public a(String paramString1, String paramString2, c.b paramb, String paramString3)
    {
      a = paramString1;
      b = paramString2;
      c = paramb;
      d = paramString3;
    }
  }
  
  public static enum b
  {
    private b() {}
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */