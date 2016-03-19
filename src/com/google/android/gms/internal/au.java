package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@fs
public final class au
{
  private final Collection<at> a = new ArrayList();
  private final Collection<at<String>> b = new ArrayList();
  private final Collection<at<String>> c = new ArrayList();
  
  public final List<String> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (at)localIterator.next();
      localObject = (String)o.n().a((at)localObject);
      if (localObject != null) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public final void a(at paramat)
  {
    a.add(paramat);
  }
  
  public final void b(at<String> paramat)
  {
    b.add(paramat);
  }
  
  public final void c(at<String> paramat)
  {
    c.add(paramat);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */