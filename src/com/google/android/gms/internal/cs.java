package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.o;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@fs
public final class cs
  implements Iterable<cr>
{
  private final List<cr> a = new LinkedList();
  
  public static boolean a(hs paramhs)
  {
    paramhs = c(paramhs);
    if (paramhs != null)
    {
      b.a();
      return true;
    }
    return false;
  }
  
  public static boolean b(hs paramhs)
  {
    return c(paramhs) != null;
  }
  
  private static cr c(hs paramhs)
  {
    Iterator localIterator = o.r().iterator();
    while (localIterator.hasNext())
    {
      cr localcr = (cr)localIterator.next();
      if (a == paramhs) {
        return localcr;
      }
    }
    return null;
  }
  
  public final void a(cr paramcr)
  {
    a.add(paramcr);
  }
  
  public final void b(cr paramcr)
  {
    a.remove(paramcr);
  }
  
  public final Iterator<cr> iterator()
  {
    return a.iterator();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */