package com.d.a.a.b.a;

import android.graphics.Bitmap;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

public final class a
  implements com.d.a.a.b.a
{
  private final com.d.a.a.b.a a;
  private final Comparator<String> b;
  
  public a(com.d.a.a.b.a parama, Comparator<String> paramComparator)
  {
    a = parama;
    b = paramComparator;
  }
  
  private boolean a(String paramString, Bitmap paramBitmap)
  {
    for (;;)
    {
      synchronized (a)
      {
        Iterator localIterator = a.a().iterator();
        if (localIterator.hasNext())
        {
          str = (String)localIterator.next();
          if (b.compare(paramString, str) != 0) {
            continue;
          }
          if (str != null) {
            a.b(str);
          }
          return a.a(paramString, paramBitmap);
        }
      }
      String str = null;
    }
  }
  
  public final Collection<String> a()
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */