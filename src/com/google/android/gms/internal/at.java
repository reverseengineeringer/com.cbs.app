package com.google.android.gms.internal;

import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.o;

@fs
public abstract class at<T>
{
  private final String a;
  private final T b;
  
  private at(String paramString, T paramT)
  {
    a = paramString;
    b = paramT;
    o.m().a(this);
  }
  
  public static at<String> a(String paramString)
  {
    paramString = a(paramString, null);
    o.m().b(paramString);
    return paramString;
  }
  
  public static at<Integer> a(String paramString, int paramInt)
  {
    return new at.2(paramString, Integer.valueOf(paramInt));
  }
  
  public static at<Long> a(String paramString, long paramLong)
  {
    return new at.3(paramString, Long.valueOf(paramLong));
  }
  
  public static at<Boolean> a(String paramString, Boolean paramBoolean)
  {
    return new at.1(paramString, paramBoolean);
  }
  
  public static at<String> a(String paramString1, String paramString2)
  {
    return new at.4(paramString1, paramString2);
  }
  
  public static at<String> b(String paramString)
  {
    paramString = a(paramString, null);
    o.m().c(paramString);
    return paramString;
  }
  
  protected abstract T a(SharedPreferences paramSharedPreferences);
  
  public final String a()
  {
    return a;
  }
  
  public final T b()
  {
    return (T)b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */