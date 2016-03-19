package com.kochava.android.a;

import android.util.Log;
import com.kochava.android.tracker.c;
import java.util.regex.Pattern;

public final class b
{
  static Pattern a = Pattern.compile("(?<!\\.)koch(ava)?_?(?!\\.com)( (?=generated)|%20)?", 2);
  
  public static void a()
  {
    boolean bool = c.a;
  }
  
  public static void a(String paramString)
  {
    if (c.b) {
      Log.e("KochavaTracker", paramString);
    }
  }
  
  public static void b(String paramString)
  {
    if (c.b) {
      Log.e("KochavaRequirements", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.kochava.android.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */