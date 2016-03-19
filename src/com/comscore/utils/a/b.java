package com.comscore.utils.a;

import android.annotation.SuppressLint;
import android.content.Context;
import com.comscore.android.a.c;
import com.comscore.b.d;
import com.comscore.utils.l;
import com.comscore.utils.n;
import java.util.HashMap;

@SuppressLint({"NewApi"})
public final class b
{
  private com.comscore.a.b a;
  private String b;
  private String c;
  private l d;
  private Context e;
  private String f;
  private String g;
  private String h;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private Boolean l;
  private a m;
  
  public b(Context paramContext, l paraml, com.comscore.a.b paramb)
  {
    e = paramContext;
    d = paraml;
    a = paramb;
    m = new a(e, paraml);
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    int i1 = 0;
    if (paramString != null)
    {
      i = paramBoolean;
      String str1 = d.b("md5RawCrossPublisherId");
      if (h == null) {}
      for (paramBoolean = true;; paramBoolean = false)
      {
        h = n.a(paramString);
        String str2 = h;
        String str3 = d.b("md5RawCrossPublisherId");
        int n = i1;
        if (str3 != null)
        {
          n = i1;
          if (str3.equals(str2)) {
            n = 1;
          }
        }
        if (n == 0) {
          break;
        }
        b = d.b("crossPublisherId");
        return;
      }
      if ((i) && (str1 != null) && (!str1.isEmpty()) && (str1 != h))
      {
        j = true;
        k = paramBoolean;
      }
      b = b(paramString);
      d.a("crossPublisherId", b);
      d.a("md5RawCrossPublisherId", h);
      return;
    }
    b = null;
    h = null;
  }
  
  private static String b(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramString != null)
    {
      localObject1 = localObject2;
      if (paramString.length() <= 0) {}
    }
    try
    {
      localObject1 = n.b(paramString);
      return (String)localObject1;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private void h()
  {
    com.comscore.android.a.b localb = c.b(e);
    if (localb == null)
    {
      i = true;
      a(null, false);
      return;
    }
    if ((localb.b() == 0) && (localb.c() == 0))
    {
      a(localb.a(), true);
      return;
    }
    String str = d.b("md5RawCrossPublisherId");
    if (!m.a(str))
    {
      d.d("md5RawCrossPublisherId");
      d.d("crossPublisherId");
      b = null;
      h = null;
    }
    a(localb.a(), false);
  }
  
  private boolean i()
  {
    boolean bool = c.a(e);
    if (l == null) {
      l = Boolean.valueOf(bool);
    }
    while (l.booleanValue() == bool) {
      return bool;
    }
    h();
    return bool;
  }
  
  public final void a(String paramString)
  {
    f = paramString;
  }
  
  public final boolean a()
  {
    return j;
  }
  
  public final String b()
  {
    if (i)
    {
      if (i())
      {
        h();
        if ((j) && (!k)) {
          return "none";
        }
        return b;
      }
      return "none";
    }
    return b;
  }
  
  public final String c()
  {
    return c;
  }
  
  public final String d()
  {
    if (f == null) {
      f = "";
    }
    return f;
  }
  
  public final boolean e()
  {
    return (f == null) || (f.length() == 0);
  }
  
  public final void f()
  {
    if (e()) {
      return;
    }
    g = c.c(e).a();
    Object localObject1;
    if (d.a("vid").booleanValue())
    {
      c = d.b("vid");
      if (!m.a())
      {
        localObject1 = new HashMap();
        ((HashMap)localObject1).put("cs_c12u", d.b("vid"));
        a.a(d.d, (HashMap)localObject1, true);
        d.d("vid");
        c = null;
      }
    }
    else
    {
      Object localObject2 = c.c(e);
      localObject1 = ((com.comscore.android.a.b)localObject2).a();
      localObject2 = "-cs" + ((com.comscore.android.a.b)localObject2).d();
      if (c == null)
      {
        c = (n.a(new StringBuilder().append((String)localObject1).append(d()).toString()) + (String)localObject2);
        d.a("vid", c);
      }
    }
    h();
  }
  
  public final String g()
  {
    if ((i) && (i())) {
      return h;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */