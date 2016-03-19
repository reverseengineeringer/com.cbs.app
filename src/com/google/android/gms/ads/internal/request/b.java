package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.dd;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk.a;
import com.google.android.gms.internal.gm;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.m;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class b
  extends gr
  implements c.a
{
  gr a;
  AdResponseParcel b;
  dd c;
  private final a.a d;
  private final AdRequestInfoParcel.a e;
  private final Object f = new Object();
  private final Context g;
  private final m h;
  private AdRequestInfoParcel i;
  private Runnable j;
  
  public b(Context paramContext, AdRequestInfoParcel.a parama, m paramm, a.a parama1)
  {
    d = parama1;
    g = paramContext;
    e = parama;
    h = paramm;
  }
  
  private AdSizeParcel a(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    if (b.m == null) {
      throw new a("The ad response must specify one of the supported ad sizes.", 0);
    }
    Object localObject = b.m.split("x");
    if (localObject.length != 2) {
      throw new a("Invalid ad size format from the ad response: " + b.m, 0);
    }
    for (;;)
    {
      int k;
      AdSizeParcel localAdSizeParcel;
      try
      {
        int i1 = Integer.parseInt(localObject[0]);
        int i2 = Integer.parseInt(localObject[1]);
        localObject = d.h;
        int i3 = localObject.length;
        k = 0;
        if (k >= i3) {
          break;
        }
        localAdSizeParcel = localObject[k];
        float f1 = g.getResources().getDisplayMetrics().density;
        if (f == -1)
        {
          m = (int)(g / f1);
          if (c != -2) {
            break label247;
          }
          n = (int)(d / f1);
          if ((i1 != m) || (i2 != n)) {
            break label257;
          }
          return new AdSizeParcel(localAdSizeParcel, d.h);
        }
      }
      catch (NumberFormatException paramAdRequestInfoParcel)
      {
        throw new a("Invalid ad size number from the ad response: " + b.m, 0);
      }
      int m = f;
      continue;
      label247:
      int n = c;
      continue;
      label257:
      k += 1;
    }
    throw new a("The ad size from the ad response was not one of the requested sizes: " + b.m, 0);
  }
  
  private void a(int paramInt, String paramString)
  {
    if ((paramInt == 3) || (paramInt == -1))
    {
      com.google.android.gms.ads.internal.util.client.b.a(4);
      if (b != null) {
        break label86;
      }
    }
    label86:
    for (b = new AdResponseParcel(paramInt);; b = new AdResponseParcel(paramInt, b.k))
    {
      paramString = new gk.a(i, b, c, null, paramInt, -1L, b.n, null);
      d.a(paramString);
      return;
      com.google.android.gms.ads.internal.util.client.b.a(5);
      break;
    }
  }
  
  public final void a()
  {
    com.google.android.gms.ads.internal.util.client.b.a(3);
    Object localObject1 = h.a().a(g);
    j = new b.1(this);
    ??? = gw.a;
    Object localObject4 = j;
    at localat = ax.al;
    ((Handler)???).postDelayed((Runnable)localObject4, ((Long)o.n().a(localat)).longValue());
    long l = o.i().b();
    i = new AdRequestInfoParcel(e, (String)localObject1, l);
    synchronized (f)
    {
      localObject1 = i;
      localObject4 = g;
      if (new c.1((Context)localObject4).a((AdRequestInfoParcel)localObject1))
      {
        com.google.android.gms.ads.internal.util.client.b.a(3);
        localObject1 = new d.a((Context)localObject4, (AdRequestInfoParcel)localObject1, this);
        ((d.a)localObject1).e();
      }
      for (;;)
      {
        a = ((gr)localObject1);
        if (a == null)
        {
          a(0, "Could not start the ad request service.");
          gw.a.removeCallbacks(j);
        }
        return;
        com.google.android.gms.ads.internal.util.client.b.a(3);
        n.a();
        if (a.b((Context)localObject4)) {
          break;
        }
        com.google.android.gms.ads.internal.util.client.b.a(5);
        localObject1 = null;
      }
      localObject1 = new d.b((Context)localObject4, (AdRequestInfoParcel)localObject1, this);
    }
  }
  
  public final void a(AdResponseParcel arg1)
  {
    com.google.android.gms.ads.internal.util.client.b.a(3);
    b = ???;
    long l = o.i().b();
    synchronized (f)
    {
      a = null;
      try
      {
        if ((b.e != -2) && (b.e != -3)) {
          throw new a("There was a problem getting an ad response. ErrorCode: " + b.e, b.e);
        }
      }
      catch (a ???)
      {
        a(???.a(), ???.getMessage());
        gw.a.removeCallbacks(j);
        return;
      }
    }
    boolean bool;
    if (b.e != -3)
    {
      if (TextUtils.isEmpty(b.c)) {
        throw new a("No fill from ad server.", 3);
      }
      o.h().a(g, b.u);
      bool = b.h;
      if (!bool) {}
    }
    for (;;)
    {
      try
      {
        c = new dd(b.c);
        if (i.d.h == null) {
          break label419;
        }
        ??? = a(i);
        bool = b.v;
        o.h().a(bool);
        Object localObject2 = o.h().a(g);
        if ((localObject2 != null) && (!((aj)localObject2).isAlive()))
        {
          com.google.android.gms.ads.internal.util.client.b.a(3);
          ((aj)localObject2).a();
        }
        if (!TextUtils.isEmpty(b.r)) {}
        Object localObject3 = null;
      }
      catch (JSONException ???)
      {
        try
        {
          localObject2 = new JSONObject(b.r);
          ??? = new gk.a(i, b, c, ???, -2, l, b.n, (JSONObject)localObject2);
          d.a(???);
          gw.a.removeCallbacks(j);
          return;
        }
        catch (Exception localException)
        {
          com.google.android.gms.ads.internal.util.client.b.a("Error parsing the JSON for Active View.", localException);
        }
        ??? = ???;
        throw new a("Could not parse mediation config: " + b.c, 0);
      }
      continue;
      label419:
      ??? = null;
    }
  }
  
  public final void b()
  {
    synchronized (f)
    {
      if (a != null) {
        a.c();
      }
      return;
    }
  }
  
  @fs
  static final class a
    extends Exception
  {
    private final int a;
    
    public a(String paramString, int paramInt)
    {
      super();
      a = paramInt;
    }
    
    public final int a()
    {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */