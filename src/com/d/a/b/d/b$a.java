package com.d.a.b.d;

import java.util.Locale;

public enum b$a
{
  private String h;
  private String i;
  
  private b$a(String paramString)
  {
    h = paramString;
    i = (paramString + "://");
  }
  
  public static a a(String paramString)
  {
    if (paramString != null)
    {
      a[] arrayOfa = values();
      int m = arrayOfa.length;
      int k = 0;
      while (k < m)
      {
        a locala = arrayOfa[k];
        if (locala.d(paramString)) {
          return locala;
        }
        k += 1;
      }
    }
    return g;
  }
  
  private boolean d(String paramString)
  {
    return paramString.toLowerCase(Locale.US).startsWith(i);
  }
  
  public final String b(String paramString)
  {
    return i + paramString;
  }
  
  public final String c(String paramString)
  {
    if (!d(paramString)) {
      throw new IllegalArgumentException(String.format("URI [%1$s] doesn't have expected scheme [%2$s]", new Object[] { paramString, h }));
    }
    return paramString.substring(i.length());
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.d.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */