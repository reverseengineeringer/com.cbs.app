package com.adobe.adobepass.accessenabler.api;

import android.content.Context;
import com.adobe.adobepass.accessenabler.a.j;
import com.adobe.adobepass.accessenabler.a.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Semaphore;

public final class b
{
  public e.a a;
  public ArrayList<String> b;
  public boolean c;
  public boolean d;
  public String e;
  public j f = new j(this);
  public k g = null;
  public com.adobe.adobepass.accessenabler.c.b h;
  public com.adobe.adobepass.accessenabler.b.b i = new com.adobe.adobepass.accessenabler.b.b();
  public d j;
  private int k;
  private boolean l;
  private List<Map<String, String>> m = new ArrayList();
  private Semaphore n = new Semaphore(1, true);
  private com.adobe.adobepass.accessenabler.a.c o = new com.adobe.adobepass.accessenabler.a.c();
  
  b(Context paramContext)
  {
    h = new com.adobe.adobepass.accessenabler.c.b(paramContext);
  }
  
  public final int a(final String paramString1, final String paramString2)
  {
    try
    {
      paramString1 = new HashMap() {};
      if (!m.contains(paramString1)) {
        m.add(paramString1);
      }
      int i1 = m.size();
      return i1;
    }
    finally {}
  }
  
  public final void a(boolean paramBoolean)
  {
    try
    {
      if (!l) {
        l = paramBoolean;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean a()
  {
    try
    {
      boolean bool = l;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void b()
  {
    l = false;
    f.d().clear();
  }
  
  public final void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        n.acquire();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        com.adobe.adobepass.accessenabler.d.c.b("AccessEnablerContext", localInterruptedException.toString());
        continue;
      }
      finally {}
      n.release();
    }
  }
  
  public final void c()
  {
    try
    {
      k += 1;
      com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerContext", "Increase the setRequestor() thread count to: " + k);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void d()
  {
    try
    {
      k -= 1;
      com.adobe.adobepass.accessenabler.d.c.a("AccessEnablerContext", "Decrease the setRequestor() thread count to: " + k);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int e()
  {
    try
    {
      int i1 = k;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final List<Map<String, String>> f()
  {
    try
    {
      List localList = m;
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void g()
  {
    try
    {
      m.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final com.adobe.adobepass.accessenabler.a.c h()
  {
    return o;
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.api.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */