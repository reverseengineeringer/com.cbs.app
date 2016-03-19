package com.comscore.utils;

import android.content.Context;
import com.comscore.utils.b.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.util.EntityUtils;

public final class i
{
  protected final com.comscore.a.b a;
  private int b;
  private int c;
  private int d;
  private long e;
  private long f;
  private String g = null;
  private final String h;
  private ArrayList<String> i = null;
  private String j = null;
  private int k = 0;
  private long l = 0L;
  private long m = 0L;
  
  public i(com.comscore.a.b paramb)
  {
    this(paramb, "cs_cache_");
  }
  
  private i(com.comscore.a.b paramb, String paramString)
  {
    a = paramb;
    h = paramString;
    a(2000);
    b(100);
    d = 10;
    d(30);
    e(31);
    e();
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    if (paramString != null)
    {
      if (paramBoolean)
      {
        l locall = a.g();
        if (locall.a(paramString).booleanValue()) {
          f(Integer.valueOf(locall.b(paramString)).intValue());
        }
      }
      h.a(a, paramString);
      i.remove(paramString);
    }
  }
  
  private boolean a(long paramLong)
  {
    long l1 = System.currentTimeMillis();
    return f * 24L * 60L * 60L * 1000L - (l1 - paramLong) <= 0L;
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    HttpClient localHttpClient = d.a();
    paramString2 = new HttpPost(paramString2);
    try
    {
      paramString1 = new StringEntity(paramString1, "UTF-8");
      paramString1.setContentType("text/xml");
      paramString2.setHeader("User-Agent", System.getProperty("http.agent"));
      paramString2.setEntity(paramString1);
      b.a(this, "Sending POST request");
      paramString1 = localHttpClient.execute(paramString2);
      int n = paramString1.getStatusLine().getStatusCode();
      b.a(this, "Response:" + n);
      b.a(this, "Cache flushed");
      paramString1 = EntityUtils.toString(paramString1.getEntity());
      if ((n == 200) && (n.f(paramString1)))
      {
        boolean bool = paramString1.startsWith("OK");
        if (bool) {
          return true;
        }
      }
    }
    catch (SSLException paramString1)
    {
      b.b(this, paramString1.getMessage());
      a.a(m.e);
      b();
      return false;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        b.b(this, "Exception in flush:" + paramString1.getLocalizedMessage());
        b.a(paramString1);
      }
    }
  }
  
  private void c(String paramString)
  {
    b.a(this, "Creating new cache batch file");
    String str = h + o.a(paramString, "ns_ts");
    h.a(a, str, 0, paramString);
    if (i == null) {
      i = new ArrayList();
    }
    i.add(str);
    d();
  }
  
  private int d(String paramString)
  {
    l locall = a.g();
    int n = 0;
    if (paramString != null)
    {
      if (locall.a(paramString).booleanValue()) {
        n = Integer.valueOf(locall.b(paramString)).intValue();
      }
    }
    else {
      return n;
    }
    return h.a(a.A(), paramString).length;
  }
  
  private void d()
  {
    l = 0L;
    if (j != null) {
      j = null;
    }
  }
  
  private void e()
  {
    List localList = f();
    int n = localList.size() - 1;
    while (n >= 0)
    {
      if (a(Long.valueOf(((String)localList.get(n)).substring(h.length())).longValue()))
      {
        b.a(this, "Deleting expired cache file " + (String)localList.get(n));
        a((String)localList.get(n), true);
      }
      n -= 1;
    }
  }
  
  private String[] e(String paramString)
  {
    String[] arrayOfString = h.a(a.A(), paramString);
    int n = 0;
    int i2 = 0;
    for (;;)
    {
      i1 = n;
      if (i2 < arrayOfString.length) {
        i1 = n;
      }
      try
      {
        long l1 = Long.parseLong(o.a(arrayOfString[i2], "ns_ts"));
        i1 = n;
        if (!a(l1)) {}
        for (n = 1;; n = 0)
        {
          i1 = n;
          if (n == 0) {
            break;
          }
          i1 = n;
          b.a(this, "Valid timestamp found: " + l1);
          i1 = n;
          if (i1 != 0) {
            break label147;
          }
          b.a(this, "All events in the file " + paramString + " are expired");
          a(paramString, true);
          return null;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        i2 += 1;
        n = i1;
      }
    }
    label147:
    f(i2);
    int i1 = arrayOfString.length;
    if (i2 > i1) {
      throw new IllegalArgumentException();
    }
    n = arrayOfString.length;
    if ((i2 < 0) || (i2 > n)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    i1 -= i2;
    n = Math.min(i1, n - i2);
    paramString = new String[i1];
    System.arraycopy(arrayOfString, i2, paramString, 0, n);
    return paramString;
  }
  
  private List<String> f()
  {
    if (i == null) {
      i = h.a(a.A());
    }
    return i;
  }
  
  private void f(int paramInt)
  {
    l locall = a.g();
    int n = paramInt;
    if (locall.a("CACHE_DROPPED_MEASUREMENTS").booleanValue()) {
      n = paramInt + Integer.valueOf(locall.b("CACHE_DROPPED_MEASUREMENTS")).intValue();
    }
    locall.a("CACHE_DROPPED_MEASUREMENTS", String.valueOf(n));
  }
  
  private String g()
  {
    if ((i != null) && (i.size() > 0)) {
      return (String)i.get(i.size() - 1);
    }
    return null;
  }
  
  public final int a()
  {
    int i1 = d(g());
    List localList = f();
    int n = i1;
    if (localList.size() > 0) {
      n = i1 + (localList.size() - 1) * c;
    }
    return n;
  }
  
  public final void a(int paramInt)
  {
    if (!a.U()) {
      return;
    }
    b = paramInt;
  }
  
  public final void a(com.comscore.b.d paramd, HashMap<String, String> paramHashMap)
  {
    if (!a.U()) {
      return;
    }
    paramd = com.comscore.b.c.a(a, paramd, paramHashMap, null);
    a.i().c(paramd);
    a.i().b(paramd);
    a(paramd, true);
  }
  
  public final void a(com.comscore.c.b paramb, boolean paramBoolean)
  {
    if (!a.U()) {
      return;
    }
    if (paramBoolean)
    {
      a.h().a(new r(this, paramb), true);
      return;
    }
    a(paramb.a(a.R()));
  }
  
  public final void a(String paramString)
  {
    try
    {
      boolean bool = a.U();
      if (!bool) {}
      for (;;)
      {
        return;
        if ((a.O() != m.e) && (a.M() != null) && (n.f(o.a(paramString, "ns_ts"))))
        {
          str = g();
          if (str == null) {
            break label216;
          }
          if (d(str) >= c) {
            break;
          }
          paramString = "\n" + paramString;
          h.a(a, str, 32768, paramString);
          d();
        }
      }
      b.a(this, "The newest cache batch file is full");
    }
    finally {}
    if (f().size() >= b / c)
    {
      b.a(this, "reached the cache max (" + b + ") size");
      if ((i == null) || (i.size() <= 0)) {
        break label224;
      }
    }
    label216:
    label224:
    for (String str = (String)i.get(0);; str = null)
    {
      a(str, true);
      c(paramString);
      break;
      c(paramString);
      break;
    }
  }
  
  public final void b()
  {
    if (!a.U()) {}
    for (;;)
    {
      return;
      List localList = f();
      int n = localList.size();
      while (n > 0)
      {
        a((String)localList.get(n - 1), true);
        n -= 1;
      }
    }
  }
  
  public final void b(int paramInt)
  {
    if (!a.U()) {}
    while (paramInt <= 0) {
      return;
    }
    c = paramInt;
  }
  
  public final void b(String paramString)
  {
    if (!a.U()) {
      return;
    }
    g = paramString;
  }
  
  public final void c(int paramInt)
  {
    d = paramInt;
  }
  
  public final boolean c()
  {
    long l1;
    int n;
    label111:
    label178:
    label296:
    label310:
    label353:
    label610:
    Object localObject2;
    for (;;)
    {
      boolean bool1;
      l locall;
      boolean bool2;
      Object localObject1;
      Object localObject4;
      try
      {
        bool1 = a.U();
        if (!bool1)
        {
          bool1 = false;
          return bool1;
        }
        locall = a.g();
        bool2 = false;
        bool1 = false;
        e();
        l1 = e * 1000L * 60L - (System.currentTimeMillis() - l);
        if (l1 > 0L) {
          break label768;
        }
        l = 0L;
        localObject1 = a.A();
        if (!d.b()) {
          break label610;
        }
        localObject1 = Boolean.valueOf(true);
        if (!((Boolean)localObject1).booleanValue()) {
          break label826;
        }
        if (a() != 0) {
          break label821;
        }
        n = 1;
        if ((n != 0) || (a.M() == null)) {
          break label826;
        }
        if (k < d) {
          break label831;
        }
        l1 = e * 1000L * 60L - (System.currentTimeMillis() - m);
        if (l1 > 0L) {
          break;
        }
        k = 0;
        m = 0L;
        n = 1;
        bool1 = bool2;
        if (n == 0) {
          continue;
        }
        b.a(this, "Cache is not empty, contains " + i.size() + " files");
        if (j != null) {
          break label808;
        }
        localObject3 = g();
        b.a(this, "reading events from the file " + (String)localObject3);
        localObject4 = e((String)localObject3);
        if ((localObject4 == null) || (localObject4.length <= 0)) {
          break label814;
        }
        if (!locall.a("CACHE_DROPPED_MEASUREMENTS").booleanValue()) {
          break label836;
        }
        localObject1 = locall.b("CACHE_DROPPED_MEASUREMENTS");
        j = o.a((String[])localObject4, (String)localObject1);
      }
      finally {}
      if ((j != null) && (j.length() > 0))
      {
        localObject4 = j;
        if (g == null) {
          break label729;
        }
        localObject3 = new StringBuilder(g);
        n = 1;
        if (((StringBuilder)localObject3).indexOf("?") == -1)
        {
          ((StringBuilder)localObject3).append("?");
          n = 0;
        }
        String str = a.M();
        int i1 = n;
        if (str != null)
        {
          i1 = n;
          if (!str.equals(""))
          {
            if (n != 0) {
              ((StringBuilder)localObject3).append("&");
            }
            ((StringBuilder)localObject3).append("c2=");
            ((StringBuilder)localObject3).append(str);
            i1 = 1;
          }
        }
        str = n.a(String.format("JetportGotAMaskOfThe%sS.D_K-", new Object[] { a.H() }));
        if ((str != null) && (!str.equals("")))
        {
          if (i1 != 0) {
            ((StringBuilder)localObject3).append("&");
          }
          ((StringBuilder)localObject3).append("s=");
          ((StringBuilder)localObject3).append(str);
        }
        bool1 = a((String)localObject4, ((StringBuilder)localObject3).toString().toLowerCase(new Locale("en", "US")));
        if (!bool1) {
          break label758;
        }
        k += 1;
        a((String)localObject1, false);
        d();
        m = System.currentTimeMillis();
        locall.d("CACHE_DROPPED_MEASUREMENTS");
        a.g().a("lastMeasurementProcessedTimestamp", String.valueOf(System.currentTimeMillis()));
        bool2 = bool1;
        continue;
        if (!j.a(localContext, "android.permission.ACCESS_NETWORK_STATE").booleanValue()) {
          localObject2 = Boolean.valueOf(true);
        } else if (d.b((Context)localObject2)) {
          localObject2 = Boolean.valueOf(true);
        } else if (d.c((Context)localObject2)) {
          localObject2 = Boolean.valueOf(true);
        } else {
          localObject2 = Boolean.valueOf(false);
        }
      }
    }
    b.a(this, "Max flushes in a row (" + d + ") reached. Waiting " + l1 / 1000.0D / 60.0D + " minutes");
    break label826;
    label729:
    if (a.P()) {}
    for (Object localObject3 = "https://udm.scorecardresearch.com/offline";; localObject3 = "http://udm.scorecardresearch.com/offline")
    {
      localObject3 = new StringBuilder((String)localObject3);
      break label353;
      label758:
      l = System.currentTimeMillis();
      break;
      label768:
      b.a(this, "Waiting " + l1 / 1000.0D / 60.0D + " minutes");
      break;
      label808:
      localObject2 = null;
      break label310;
      label814:
      localObject2 = localObject3;
      break label310;
      label821:
      n = 0;
      break label111;
      label826:
      n = 0;
      break label178;
      label831:
      n = 1;
      break label178;
      label836:
      localObject2 = "0";
      break label296;
    }
  }
  
  public final void d(int paramInt)
  {
    if (!a.U()) {
      return;
    }
    e = paramInt;
  }
  
  public final void e(int paramInt)
  {
    if (!a.U()) {
      return;
    }
    f = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */