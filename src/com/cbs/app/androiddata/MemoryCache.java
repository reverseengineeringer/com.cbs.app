package com.cbs.app.androiddata;

import android.support.v4.util.LruCache;

public class MemoryCache
{
  private static final Object a;
  private static LruCache<String, CacheEntry> b;
  
  static
  {
    int i = 1000;
    a = new Object();
    b = null;
    int j = (int)((float)Runtime.getRuntime().maxMemory() / 51200.0F);
    if (j > 1000) {}
    for (;;)
    {
      b = new LruCache(i);
      return;
      i = j;
    }
  }
  
  public static CacheEntry a(String paramString)
  {
    if (b != null) {
      synchronized (a)
      {
        paramString = (CacheEntry)b.get(paramString);
        return paramString;
      }
    }
    return null;
  }
  
  public static void a()
  {
    if (b != null) {
      synchronized (a)
      {
        b.trimToSize(-1);
        b.evictAll();
        return;
      }
    }
  }
  
  public static void a(String paramString, CacheEntry paramCacheEntry)
  {
    if (b != null) {
      synchronized (a)
      {
        if (b.get(paramString) == null) {
          b.put(paramString, paramCacheEntry);
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.MemoryCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */