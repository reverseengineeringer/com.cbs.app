package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gk.a;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.w;
import com.google.android.gms.internal.x;
import java.util.List;

@fs
public final class f
  extends c
{
  private boolean l;
  
  public f(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dl paramdl, VersionInfoParcel paramVersionInfoParcel, d paramd)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramdl, paramVersionInfoParcel, paramd);
  }
  
  private boolean b(gk paramgk1, gk paramgk2)
  {
    if (k) {}
    for (;;)
    {
      try
      {
        paramgk2 = m.a();
        if (paramgk2 == null)
        {
          b.a(5);
          return false;
        }
        paramgk2 = (View)com.google.android.gms.a.d.a(paramgk2);
        View localView = f.f.getNextView();
        if (localView != null)
        {
          if ((localView instanceof hs)) {
            ((hs)localView).destroy();
          }
          f.f.removeView(localView);
        }
        if (r == null) {
          continue;
        }
      }
      catch (RemoteException paramgk1)
      {
        try
        {
          a(paramgk2);
          if (f.f.getChildCount() > 1) {
            f.f.showNext();
          }
          if (paramgk1 != null)
          {
            paramgk1 = f.f.getNextView();
            if (!(paramgk1 instanceof hs)) {
              break label279;
            }
            ((hs)paramgk1).a(f.c, f.i, a);
            f.c();
          }
          f.f.setVisibility(0);
          return true;
        }
        catch (Throwable paramgk1)
        {
          b.a(5);
          return false;
        }
        paramgk1 = paramgk1;
        b.a(5);
        return false;
      }
      if (b != null)
      {
        b.a(r);
        f.f.removeAllViews();
        f.f.setMinimumWidth(r.g);
        f.f.setMinimumHeight(r.d);
        a(b.b());
        continue;
        label279:
        if (paramgk1 != null) {
          f.f.removeView(paramgk1);
        }
      }
    }
  }
  
  protected final hs a(gk.a parama, e parame)
  {
    if (f.i.j)
    {
      zzq localzzq = f;
      if (b.B)
      {
        localObject = f.i;
        i = ((AdSizeParcel)localObject);
      }
    }
    else
    {
      return super.a(parama, parame);
    }
    Object localObject = b.m;
    if (localObject != null)
    {
      localObject = ((String)localObject).split("[xX]");
      localObject[0] = localObject[0].trim();
      localObject[1] = localObject[1].trim();
    }
    for (localObject = new com.google.android.gms.ads.d(Integer.parseInt(localObject[0]), Integer.parseInt(localObject[1]));; localObject = f.i.b())
    {
      localObject = new AdSizeParcel(f.c, (com.google.android.gms.ads.d)localObject);
      break;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    z.b("setManualImpressionsEnabled must be called from the main thread.");
    l = paramBoolean;
  }
  
  public final boolean a(AdRequestParcel paramAdRequestParcel)
  {
    if (h == l) {
      return super.a(paramAdRequestParcel);
    }
    int i = a;
    long l1 = b;
    Bundle localBundle = c;
    int j = d;
    List localList = e;
    boolean bool2 = f;
    int k = g;
    if ((h) || (l)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      paramAdRequestParcel = new AdRequestParcel(i, l1, localBundle, j, localList, bool2, k, bool1, i, j, k, l, m, n, o, p, q);
      break;
    }
  }
  
  public final boolean a(gk paramgk1, gk paramgk2)
  {
    if (!super.a(paramgk1, paramgk2)) {
      return false;
    }
    if ((f.d()) && (!b(paramgk1, paramgk2)))
    {
      a(0);
      return false;
    }
    a(paramgk2, false);
    if (f.d()) {
      if (b != null)
      {
        if (j != null) {
          h.a(f.i, paramgk2);
        }
        if (!paramgk2.a()) {
          break label115;
        }
        h.a(f.i, paramgk2).a(b);
      }
    }
    for (;;)
    {
      return true;
      label115:
      b.k().a(new f.1(this, paramgk2));
      continue;
      if ((f.B != null) && (j != null)) {
        h.a(f.i, paramgk2, f.B);
      }
    }
  }
  
  public final void g()
  {
    throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
  }
  
  protected final boolean r()
  {
    boolean bool = true;
    o.e();
    if (!gw.a(f.c.getPackageManager(), f.c.getPackageName(), "android.permission.INTERNET"))
    {
      n.a().a(f.f, f.i, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
      bool = false;
    }
    o.e();
    if (!gw.a(f.c))
    {
      n.a().a(f.f, f.i, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
      bool = false;
    }
    if ((!bool) && (f.f != null)) {
      f.f.setVisibility(0);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */