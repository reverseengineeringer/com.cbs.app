package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.aa;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hv;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public class h
{
  private final Object a = new Object();
  private final com.google.android.gms.ads.internal.m b;
  private final Context c;
  private final JSONObject d;
  private final aa e;
  private final h.a f;
  private final com.google.android.gms.internal.m g;
  private final VersionInfoParcel h;
  private boolean i;
  private hs j;
  private String k;
  
  public h(Context paramContext, com.google.android.gms.ads.internal.m paramm, aa paramaa, com.google.android.gms.internal.m paramm1, JSONObject paramJSONObject, h.a parama, VersionInfoParcel paramVersionInfoParcel)
  {
    c = paramContext;
    b = paramm;
    e = paramaa;
    g = paramm1;
    d = paramJSONObject;
    f = parama;
    h = paramVersionInfoParcel;
  }
  
  public b a(View.OnClickListener paramOnClickListener)
  {
    Object localObject = f.l();
    if (localObject == null) {
      return null;
    }
    localObject = new b(c, (a)localObject);
    ((b)localObject).setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    ((b)localObject).a().setOnClickListener(paramOnClickListener);
    ((b)localObject).a().setContentDescription("Ad attribution icon");
    return (b)localObject;
  }
  
  public void a()
  {
    z.b("recordImpression must be called on the main UI thread.");
    i = true;
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("ad", d);
      e.a("google.afma.nativeAds.handleImpressionPing", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      com.google.android.gms.ads.internal.util.client.b.a("Unable to create impression JSON.", localJSONException);
    }
  }
  
  public final void a(MotionEvent paramMotionEvent)
  {
    g.a(paramMotionEvent);
  }
  
  public void a(View paramView) {}
  
  public void a(View paramView, Map<String, WeakReference<View>> paramMap, JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    z.b("performClick must be called on the main UI thread.");
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (paramView.equals((View)((WeakReference)localEntry.getValue()).get())) {
        a((String)localEntry.getKey(), paramJSONObject1, paramJSONObject2);
      }
    }
  }
  
  public final void a(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    z.b("performClick must be called on the main UI thread.");
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("asset", paramString);
      localJSONObject.put("template", f.j());
      paramString = new JSONObject();
      paramString.put("ad", d);
      paramString.put("click", localJSONObject);
      if (b.a(f.k()) != null) {}
      for (boolean bool = true;; bool = false)
      {
        paramString.put("has_custom_click_handler", bool);
        if (paramJSONObject1 != null) {
          paramString.put("view_rectangles", paramJSONObject1);
        }
        if (paramJSONObject2 != null) {
          paramString.put("click_point", paramJSONObject2);
        }
        e.a("google.afma.nativeAds.handleClickGmsg", paramString);
        return;
      }
      return;
    }
    catch (JSONException paramString)
    {
      com.google.android.gms.ads.internal.util.client.b.a("Unable to create click JSON.", paramString);
    }
  }
  
  public final void b(View paramView)
  {
    synchronized (a)
    {
      if (i) {
        return;
      }
      if (!paramView.isShown()) {
        return;
      }
    }
    if (!paramView.getGlobalVisibleRect(new Rect(), null)) {
      return;
    }
    a();
  }
  
  public hs c()
  {
    o.f();
    j = hv.a(c, AdSizeParcel.a(), false, false, g, h);
    j.b().setVisibility(8);
    e.a("/loadHtml", new h.1(this));
    e.a("/showOverlay", new h.2(this));
    e.a("/hideOverlay", new h.3(this));
    j.k().a("/hideOverlay", new h.4(this));
    j.k().a("/sendMessageToSdk", new h.5(this));
    return j;
  }
  
  protected final void d()
  {
    i = true;
  }
  
  public final Context e()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */