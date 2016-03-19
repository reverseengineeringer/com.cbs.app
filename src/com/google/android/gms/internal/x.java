package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class x
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener
{
  private final Object a = new Object();
  private final WeakReference<gk> b;
  private WeakReference<ViewTreeObserver> c;
  private final WeakReference<View> d;
  private final v e;
  private final Context f;
  private final cx g;
  private final cx.d h;
  private boolean i;
  private final WindowManager j;
  private final PowerManager k;
  private final KeyguardManager l;
  private z m;
  private boolean n;
  private boolean o = false;
  private boolean p = false;
  private boolean q;
  private boolean r;
  private BroadcastReceiver s;
  private final HashSet<u> t = new HashSet();
  private hd u;
  private final ci v = new x.6(this);
  private final ci w = new x.7(this);
  private final ci x = new x.8(this);
  
  public x(AdSizeParcel paramAdSizeParcel, gk paramgk, VersionInfoParcel paramVersionInfoParcel, View paramView, cx paramcx)
  {
    g = paramcx;
    b = new WeakReference(paramgk);
    d = new WeakReference(paramView);
    c = new WeakReference(null);
    q = true;
    u = new hd(200L);
    e = new v(UUID.randomUUID().toString(), paramVersionInfoParcel, b, j, paramgk.a());
    h = g.b();
    j = ((WindowManager)paramView.getContext().getSystemService("window"));
    k = ((PowerManager)paramView.getContext().getApplicationContext().getSystemService("power"));
    l = ((KeyguardManager)paramView.getContext().getSystemService("keyguard"));
    f = paramView.getContext().getApplicationContext();
    try
    {
      paramAdSizeParcel = a(paramView);
      h.a(new x.1(this, paramAdSizeParcel), new x.2(this));
      h.a(new x.3(this), new x.4(this));
      new StringBuilder("Tracking ad unit: ").append(e.d());
      b.a(3);
      return;
    }
    catch (RuntimeException paramAdSizeParcel)
    {
      for (;;)
      {
        b.a("Failure while processing active view data.", paramAdSizeParcel);
      }
    }
    catch (JSONException paramAdSizeParcel)
    {
      for (;;) {}
    }
  }
  
  private static int a(int paramInt, DisplayMetrics paramDisplayMetrics)
  {
    float f1 = density;
    return (int)(paramInt / f1);
  }
  
  private JSONObject a(View paramView)
  {
    boolean bool1 = o.g().a(paramView);
    Object localObject2 = new int[2];
    Object localObject1 = new int[2];
    try
    {
      paramView.getLocationOnScreen((int[])localObject2);
      paramView.getLocationInWindow((int[])localObject1);
      localObject1 = paramView.getContext().getResources().getDisplayMetrics();
      Rect localRect1 = new Rect();
      left = localObject2[0];
      top = localObject2[1];
      right = (left + paramView.getWidth());
      bottom = (top + paramView.getHeight());
      Rect localRect2 = new Rect();
      right = j.getDefaultDisplay().getWidth();
      bottom = j.getDefaultDisplay().getHeight();
      Rect localRect3 = new Rect();
      boolean bool2 = paramView.getGlobalVisibleRect(localRect3, null);
      Rect localRect4 = new Rect();
      boolean bool3 = paramView.getLocalVisibleRect(localRect4);
      Rect localRect5 = new Rect();
      paramView.getHitRect(localRect5);
      localObject2 = k();
      localObject1 = ((JSONObject)localObject2).put("windowVisibility", paramView.getWindowVisibility()).put("isStopped", p).put("isPaused", o).put("isScreenOn", k.isScreenOn()).put("isAttachedToWindow", bool1).put("viewBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("adBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("globalVisibleBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("globalVisibleBoxVisible", bool2).put("localVisibleBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("localVisibleBoxVisible", bool3).put("hitBox", new JSONObject().put("top", a(top, (DisplayMetrics)localObject1)).put("bottom", a(bottom, (DisplayMetrics)localObject1)).put("left", a(left, (DisplayMetrics)localObject1)).put("right", a(right, (DisplayMetrics)localObject1))).put("screenDensity", density);
      if ((paramView.getVisibility() == 0) && (paramView.isShown()) && (k.isScreenOn()) && ((!l.inKeyguardRestrictedInputMode()) || (o.e().a())))
      {
        bool1 = true;
        ((JSONObject)localObject1).put("isVisible", bool1);
        return (JSONObject)localObject2;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        b.a("Failure getting view location.", localException);
        continue;
        bool1 = false;
      }
    }
  }
  
  private void i()
  {
    if (m != null) {
      m.a(this);
    }
  }
  
  private void j()
  {
    ViewTreeObserver localViewTreeObserver = (ViewTreeObserver)c.get();
    if ((localViewTreeObserver == null) || (!localViewTreeObserver.isAlive())) {
      return;
    }
    localViewTreeObserver.removeOnScrollChangedListener(this);
    localViewTreeObserver.removeGlobalOnLayoutListener(this);
  }
  
  private JSONObject k()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("afmaVersion", e.b()).put("activeViewJSON", e.c()).put("timestamp", o.i().b()).put("adFormat", e.a()).put("hashCode", e.d()).put("isMraid", e.e());
    return localJSONObject;
  }
  
  protected final void a()
  {
    synchronized (a)
    {
      if (s != null) {
        return;
      }
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.SCREEN_ON");
      localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
      s = new x.5(this);
      f.registerReceiver(s, localIntentFilter);
      return;
    }
  }
  
  protected final void a(ad paramad)
  {
    paramad.a("/updateActiveView", v);
    paramad.a("/untrackActiveViewUnit", w);
    paramad.a("/visibilityChanged", x);
  }
  
  public final void a(u paramu)
  {
    t.add(paramu);
  }
  
  public final void a(z paramz)
  {
    synchronized (a)
    {
      m = paramz;
      return;
    }
  }
  
  protected final void a(JSONObject paramJSONObject)
  {
    try
    {
      JSONArray localJSONArray = new JSONArray();
      JSONObject localJSONObject = new JSONObject();
      localJSONArray.put(paramJSONObject);
      localJSONObject.put("units", localJSONArray);
      h.a(new x.9(this, localJSONObject), new hl.b());
      return;
    }
    catch (Throwable paramJSONObject)
    {
      b.a("Skipping active view message.", paramJSONObject);
    }
  }
  
  protected final void a(boolean paramBoolean)
  {
    Iterator localIterator = t.iterator();
    while (localIterator.hasNext()) {
      ((u)localIterator.next()).a(this, paramBoolean);
    }
  }
  
  protected final boolean a(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return false;
    }
    paramMap = (String)paramMap.get("hashCode");
    return (!TextUtils.isEmpty(paramMap)) && (paramMap.equals(e.d()));
  }
  
  protected final void b()
  {
    synchronized (a)
    {
      j();
      synchronized (a)
      {
        if (s != null)
        {
          f.unregisterReceiver(s);
          s = null;
        }
        q = false;
        i();
        h.a();
        return;
      }
    }
  }
  
  protected final void b(boolean paramBoolean)
  {
    synchronized (a)
    {
      if ((!i) || (!q)) {
        return;
      }
      if ((paramBoolean) && (!u.a())) {
        return;
      }
    }
    Object localObject3 = (gk)b.get();
    Object localObject4 = (View)d.get();
    if (localObject4 != null) {
      if (localObject3 == null) {
        break label228;
      }
    }
    for (;;)
    {
      int i1;
      if (i1 != 0)
      {
        c();
        return;
        i1 = 0;
        continue;
      }
      try
      {
        a(a((View)localObject4));
        for (;;)
        {
          localObject4 = (View)d.get();
          if (localObject4 != null)
          {
            localObject3 = (ViewTreeObserver)c.get();
            localObject4 = ((View)localObject4).getViewTreeObserver();
            if (localObject4 != localObject3)
            {
              j();
              if ((!n) || ((localObject3 != null) && (((ViewTreeObserver)localObject3).isAlive())))
              {
                n = true;
                ((ViewTreeObserver)localObject4).addOnScrollChangedListener(this);
                ((ViewTreeObserver)localObject4).addOnGlobalLayoutListener(this);
              }
              c = new WeakReference(localObject4);
            }
          }
          i();
          return;
          b.a(3);
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        for (;;) {}
        i1 = 1;
      }
      catch (JSONException localJSONException)
      {
        label228:
        for (;;) {}
      }
    }
  }
  
  public final void c()
  {
    synchronized (a)
    {
      if (q) {
        r = true;
      }
    }
    try
    {
      JSONObject localJSONObject = k();
      localJSONObject.put("doneReasonCode", "u");
      a(localJSONObject);
      new StringBuilder("Untracking ad unit: ").append(e.d());
      b.a(3);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        b.a("JSON failure while processing active view data.", localJSONException);
      }
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        b.a("Failure while processing active view data.", localRuntimeException);
      }
    }
  }
  
  protected final void d()
  {
    b(false);
  }
  
  public final boolean e()
  {
    synchronized (a)
    {
      boolean bool = q;
      return bool;
    }
  }
  
  public final void f()
  {
    synchronized (a)
    {
      p = true;
      b(false);
      return;
    }
  }
  
  public final void g()
  {
    synchronized (a)
    {
      o = true;
      b(false);
      return;
    }
  }
  
  public final void h()
  {
    synchronized (a)
    {
      o = false;
      b(false);
      return;
    }
  }
  
  public final void onGlobalLayout()
  {
    b(false);
  }
  
  public final void onScrollChanged()
  {
    b(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */