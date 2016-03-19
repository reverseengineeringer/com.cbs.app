package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.internal.be;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.hs;
import java.util.HashMap;

@fs
public class zzk
  extends FrameLayout
  implements g
{
  private final hs a;
  private final FrameLayout b;
  private final m c;
  private zzi d;
  private boolean e;
  private boolean f;
  private TextView g;
  private long h;
  private long i;
  private String j;
  private String k;
  
  public zzk(Context paramContext, hs paramhs, bg parambg, be parambe)
  {
    super(paramContext);
    a = paramhs;
    b = new FrameLayout(paramContext);
    addView(b, new FrameLayout.LayoutParams(-1, -1));
    f.a(paramhs.g());
    d = gb.a(paramContext, paramhs, parambg, parambe);
    if (d != null) {
      b.addView(d, new FrameLayout.LayoutParams(-1, -1, 17));
    }
    g = new TextView(paramContext);
    g.setBackgroundColor(-16777216);
    n();
    c = new m(this);
    c.b();
    if (d != null) {
      d.a(this);
    }
    if (d == null) {
      a("AdVideoUnderlay Error", "Allocating player failed.");
    }
  }
  
  public static void a(hs paramhs)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", "no_video_view");
    paramhs.a("onVideoEvent", localHashMap);
  }
  
  private void a(String paramString, String... paramVarArgs)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", paramString);
    int n = paramVarArgs.length;
    int m = 0;
    paramString = null;
    if (m < n)
    {
      String str = paramVarArgs[m];
      if (paramString == null) {}
      for (paramString = str;; paramString = null)
      {
        m += 1;
        break;
        localHashMap.put(paramString, str);
      }
    }
    a.a("onVideoEvent", localHashMap);
  }
  
  private void n()
  {
    if (!o())
    {
      b.addView(g, new FrameLayout.LayoutParams(-1, -1));
      b.bringChildToFront(g);
    }
  }
  
  private boolean o()
  {
    return g.getParent() != null;
  }
  
  private void p()
  {
    if (a.e() == null) {}
    while ((!e) || (f)) {
      return;
    }
    a.e().getWindow().clearFlags(128);
    e = false;
  }
  
  public final void a()
  {
    if (d == null) {}
    while (i != 0L) {
      return;
    }
    a("canplaythrough", new String[] { "duration", String.valueOf(d.e() / 1000.0F), "videoWidth", String.valueOf(d.i()), "videoHeight", String.valueOf(d.j()) });
  }
  
  public final void a(float paramFloat)
  {
    if (d == null) {
      return;
    }
    d.a(paramFloat);
  }
  
  public final void a(int paramInt)
  {
    if (d == null) {
      return;
    }
    d.a(paramInt);
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt3 == 0) || (paramInt4 == 0)) {
      return;
    }
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(paramInt3 + 2, paramInt4 + 2);
    localLayoutParams.setMargins(paramInt1 - 1, paramInt2 - 1, 0, 0);
    b.setLayoutParams(localLayoutParams);
    requestLayout();
  }
  
  public final void a(MotionEvent paramMotionEvent)
  {
    if (d == null) {
      return;
    }
    d.dispatchTouchEvent(paramMotionEvent);
  }
  
  public final void a(String paramString)
  {
    k = paramString;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    a("error", new String[] { "what", paramString1, "extra", paramString2 });
  }
  
  public final void b()
  {
    if ((a.e() != null) && (!e)) {
      if ((a.e().getWindow().getAttributes().flags & 0x80) == 0) {
        break label82;
      }
    }
    label82:
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      if (!f)
      {
        a.e().getWindow().addFlags(128);
        e = true;
      }
      return;
    }
  }
  
  public final void c()
  {
    a("pause", new String[0]);
    p();
  }
  
  public final void d()
  {
    a("ended", new String[0]);
    p();
  }
  
  public final void e()
  {
    n();
    i = h;
  }
  
  public final void f()
  {
    if (d == null) {
      return;
    }
    if (!TextUtils.isEmpty(k))
    {
      d.setMimeType(j);
      d.setVideoPath(k);
      return;
    }
    a("no_src", new String[0]);
  }
  
  public final void g()
  {
    if (d == null) {
      return;
    }
    d.d();
  }
  
  public final void h()
  {
    if (d == null) {
      return;
    }
    d.c();
  }
  
  public final void i()
  {
    if (d == null) {
      return;
    }
    d.g();
  }
  
  public final void j()
  {
    if (d == null) {
      return;
    }
    d.h();
  }
  
  public final void k()
  {
    if (d == null) {
      return;
    }
    TextView localTextView = new TextView(d.getContext());
    localTextView.setText("AdMob - " + d.a());
    localTextView.setTextColor(-65536);
    localTextView.setBackgroundColor(65280);
    b.addView(localTextView, new FrameLayout.LayoutParams(-2, -2, 17));
    b.bringChildToFront(localTextView);
  }
  
  public final void l()
  {
    c.a();
    if (d != null) {
      d.b();
    }
    p();
  }
  
  final void m()
  {
    if (d == null) {}
    long l;
    do
    {
      return;
      l = d.f();
    } while ((h == l) || (l <= 0L));
    if (o()) {
      b.removeView(g);
    }
    a("timeupdate", new String[] { "time", String.valueOf((float)l / 1000.0F) });
    h = l;
  }
  
  public void setMimeType(String paramString)
  {
    j = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */