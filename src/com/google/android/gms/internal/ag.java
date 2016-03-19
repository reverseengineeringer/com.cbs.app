package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Iterator;

@fs
public final class ag
{
  private final int a;
  private final int b;
  private final int c;
  private final al d;
  private final Object e = new Object();
  private ArrayList<String> f = new ArrayList();
  private int g = 0;
  private int h = 0;
  private int i = 0;
  private int j;
  private String k = "";
  
  public ag(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = new al(paramInt4);
  }
  
  private static String a(ArrayList<String> paramArrayList)
  {
    if (paramArrayList.isEmpty()) {
      paramArrayList = "";
    }
    Object localObject;
    do
    {
      return paramArrayList;
      localObject = new StringBuffer();
      paramArrayList = paramArrayList.iterator();
      do
      {
        if (!paramArrayList.hasNext()) {
          break;
        }
        ((StringBuffer)localObject).append((String)paramArrayList.next());
        ((StringBuffer)localObject).append(' ');
      } while (((StringBuffer)localObject).length() <= 200);
      ((StringBuffer)localObject).deleteCharAt(((StringBuffer)localObject).length() - 1);
      localObject = ((StringBuffer)localObject).toString();
      paramArrayList = (ArrayList<String>)localObject;
    } while (((String)localObject).length() < 200);
    return ((String)localObject).substring(0, 200);
  }
  
  private void c(String paramString)
  {
    if ((paramString == null) || (paramString.length() < c)) {
      return;
    }
    synchronized (e)
    {
      f.add(paramString);
      g += paramString.length();
      return;
    }
  }
  
  public final void a(int paramInt)
  {
    h = paramInt;
  }
  
  public final void a(String arg1)
  {
    c(???);
    synchronized (e)
    {
      if (i < 0) {
        b.a(3);
      }
      f();
      return;
    }
  }
  
  public final boolean a()
  {
    for (;;)
    {
      synchronized (e)
      {
        if (i == 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public final String b()
  {
    return k;
  }
  
  public final void b(String paramString)
  {
    c(paramString);
  }
  
  public final void c()
  {
    synchronized (e)
    {
      j -= 100;
      return;
    }
  }
  
  public final void d()
  {
    synchronized (e)
    {
      i -= 1;
      return;
    }
  }
  
  public final void e()
  {
    synchronized (e)
    {
      i += 1;
      return;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ag)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (ag)paramObject;
    } while ((k == null) || (!k.equals(k)));
    return true;
  }
  
  public final void f()
  {
    synchronized (e)
    {
      int m = g;
      int n = h;
      m = m * a + n * b;
      if (m > j)
      {
        j = m;
        k = d.a(f);
      }
      return;
    }
  }
  
  public final int g()
  {
    return j;
  }
  
  final int h()
  {
    return g;
  }
  
  public final int hashCode()
  {
    return k.hashCode();
  }
  
  public final String toString()
  {
    return "ActivityContent fetchId: " + h + " score:" + j + " total_length:" + g + "\n text: " + a(f) + "\n signture: " + k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */