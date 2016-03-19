package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.overlay.c;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@fs
final class hx
  extends WebView
  implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, hs
{
  private Map<String, ct> A;
  private final WindowManager B;
  private final a a;
  private final Object b = new Object();
  private final m c;
  private final VersionInfoParcel d;
  private final d e;
  private hu f;
  private c g;
  private AdSizeParcel h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private Boolean m;
  private int n;
  private boolean o = true;
  private String p = "";
  private be q;
  private be r;
  private be s;
  private bf t;
  private c u;
  private hf v;
  private int w = -1;
  private int x = -1;
  private int y = -1;
  private int z = -1;
  
  private hx(a parama, AdSizeParcel paramAdSizeParcel, boolean paramBoolean, m paramm, VersionInfoParcel paramVersionInfoParcel, bg parambg, d paramd)
  {
    super(parama);
    a = parama;
    h = paramAdSizeParcel;
    k = paramBoolean;
    n = -1;
    c = paramm;
    d = paramVersionInfoParcel;
    e = paramd;
    B = ((WindowManager)getContext().getSystemService("window"));
    setBackgroundColor(0);
    paramAdSizeParcel = getSettings();
    paramAdSizeParcel.setJavaScriptEnabled(true);
    paramAdSizeParcel.setSavePassword(false);
    paramAdSizeParcel.setSupportMultipleWindows(true);
    paramAdSizeParcel.setJavaScriptCanOpenWindowsAutomatically(true);
    if (Build.VERSION.SDK_INT >= 21) {
      paramAdSizeParcel.setMixedContentMode(0);
    }
    paramAdSizeParcel.setUserAgentString(o.e().a(parama, b));
    o.g().a(getContext(), paramAdSizeParcel);
    setDownloadListener(this);
    A();
    if (ka.d()) {
      addJavascriptInterface(new hy(this), "googleAdsJsInterface");
    }
    v = new hf(a.a(), this, null);
    a(parambg);
  }
  
  private void A()
  {
    for (;;)
    {
      synchronized (b)
      {
        if ((k) || (h.e))
        {
          if (Build.VERSION.SDK_INT < 14)
          {
            b.a(3);
            B();
            return;
          }
          b.a(3);
          C();
        }
      }
      if (Build.VERSION.SDK_INT < 18)
      {
        b.a(3);
        B();
      }
      else
      {
        b.a(3);
        C();
      }
    }
  }
  
  private void B()
  {
    synchronized (b)
    {
      if (!l) {
        o.g().c(this);
      }
      l = true;
      return;
    }
  }
  
  private void C()
  {
    synchronized (b)
    {
      if (l) {
        o.g().b(this);
      }
      l = false;
      return;
    }
  }
  
  private void D()
  {
    if (t == null) {}
    bg localbg;
    do
    {
      return;
      localbg = t.a();
    } while ((localbg == null) || (o.h().d() == null));
    o.h().d().a(localbg);
  }
  
  static hx a(Context paramContext, AdSizeParcel paramAdSizeParcel, boolean paramBoolean, m paramm, VersionInfoParcel paramVersionInfoParcel, bg parambg, d paramd)
  {
    return new hx(new a(paramContext), paramAdSizeParcel, paramBoolean, paramm, paramVersionInfoParcel, parambg, paramd);
  }
  
  private void a(bg parambg)
  {
    D();
    t = new bf(new bg(true, "make_wv", h.b));
    t.a().a(parambg);
    r = bc.a(t.a());
    t.a("native:view_create", r);
    s = null;
    q = null;
  }
  
  private void a(Boolean paramBoolean)
  {
    m = paramBoolean;
    o.h().a(paramBoolean);
  }
  
  private void c(String paramString)
  {
    synchronized (b)
    {
      if (!q())
      {
        loadUrl(paramString);
        return;
      }
      b.a(5);
    }
  }
  
  /* Error */
  private void d(String paramString)
  {
    // Byte code:
    //   0: invokestatic 301	com/google/android/gms/internal/ka:f	()Z
    //   3: ifeq +139 -> 142
    //   6: aload_0
    //   7: invokespecial 304	com/google/android/gms/internal/hx:z	()Ljava/lang/Boolean;
    //   10: ifnonnull +47 -> 57
    //   13: aload_0
    //   14: getfield 71	com/google/android/gms/internal/hx:b	Ljava/lang/Object;
    //   17: astore_2
    //   18: aload_2
    //   19: monitorenter
    //   20: aload_0
    //   21: invokestatic 240	com/google/android/gms/ads/internal/o:h	()Lcom/google/android/gms/internal/gm;
    //   24: invokevirtual 306	com/google/android/gms/internal/gm:h	()Ljava/lang/Boolean;
    //   27: putfield 290	com/google/android/gms/internal/hx:m	Ljava/lang/Boolean;
    //   30: aload_0
    //   31: getfield 290	com/google/android/gms/internal/hx:m	Ljava/lang/Boolean;
    //   34: astore_3
    //   35: aload_3
    //   36: ifnonnull +19 -> 55
    //   39: aload_0
    //   40: ldc_w 308
    //   43: aconst_null
    //   44: invokevirtual 312	com/google/android/gms/internal/hx:evaluateJavascript	(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    //   47: aload_0
    //   48: iconst_1
    //   49: invokestatic 318	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   52: invokespecial 319	com/google/android/gms/internal/hx:a	(Ljava/lang/Boolean;)V
    //   55: aload_2
    //   56: monitorexit
    //   57: aload_0
    //   58: invokespecial 304	com/google/android/gms/internal/hx:z	()Ljava/lang/Boolean;
    //   61: invokevirtual 322	java/lang/Boolean:booleanValue	()Z
    //   64: ifeq +56 -> 120
    //   67: aload_0
    //   68: getfield 71	com/google/android/gms/internal/hx:b	Ljava/lang/Object;
    //   71: astore_2
    //   72: aload_2
    //   73: monitorenter
    //   74: aload_0
    //   75: invokevirtual 294	com/google/android/gms/internal/hx:q	()Z
    //   78: ifne +29 -> 107
    //   81: aload_0
    //   82: aload_1
    //   83: aconst_null
    //   84: invokevirtual 312	com/google/android/gms/internal/hx:evaluateJavascript	(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    //   87: aload_2
    //   88: monitorexit
    //   89: return
    //   90: astore_3
    //   91: aload_0
    //   92: iconst_0
    //   93: invokestatic 318	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   96: invokespecial 319	com/google/android/gms/internal/hx:a	(Ljava/lang/Boolean;)V
    //   99: goto -44 -> 55
    //   102: astore_1
    //   103: aload_2
    //   104: monitorexit
    //   105: aload_1
    //   106: athrow
    //   107: iconst_5
    //   108: invokestatic 217	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   111: pop
    //   112: goto -25 -> 87
    //   115: astore_1
    //   116: aload_2
    //   117: monitorexit
    //   118: aload_1
    //   119: athrow
    //   120: aload_0
    //   121: new 324	java/lang/StringBuilder
    //   124: dup
    //   125: ldc_w 326
    //   128: invokespecial 328	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   131: aload_1
    //   132: invokevirtual 332	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 336	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokespecial 338	com/google/android/gms/internal/hx:c	(Ljava/lang/String;)V
    //   141: return
    //   142: aload_0
    //   143: new 324	java/lang/StringBuilder
    //   146: dup
    //   147: ldc_w 326
    //   150: invokespecial 328	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   153: aload_1
    //   154: invokevirtual 332	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 336	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: invokespecial 338	com/google/android/gms/internal/hx:c	(Ljava/lang/String;)V
    //   163: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	this	hx
    //   0	164	1	paramString	String
    //   34	2	3	localBoolean	Boolean
    //   90	1	3	localIllegalStateException	IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   39	55	90	java/lang/IllegalStateException
    //   20	35	102	finally
    //   39	55	102	finally
    //   55	57	102	finally
    //   91	99	102	finally
    //   103	105	102	finally
    //   74	87	115	finally
    //   87	89	115	finally
    //   107	112	115	finally
    //   116	118	115	finally
  }
  
  private Boolean z()
  {
    synchronized (b)
    {
      Boolean localBoolean = m;
      return localBoolean;
    }
  }
  
  public final WebView a()
  {
    return this;
  }
  
  public final void a(int paramInt)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("closetype", String.valueOf(paramInt));
    localHashMap.put("version", d.b);
    a("onhide", localHashMap);
  }
  
  public final void a(Context paramContext)
  {
    a.setBaseContext(paramContext);
    v.a(a.a());
  }
  
  public final void a(Context paramContext, AdSizeParcel paramAdSizeParcel, bg parambg)
  {
    synchronized (b)
    {
      v.b();
      a(paramContext);
      g = null;
      h = paramAdSizeParcel;
      k = false;
      i = false;
      p = "";
      n = -1;
      o.g();
      gx.b(this);
      loadUrl("about:blank");
      f.e();
      setOnTouchListener(null);
      setOnClickListener(null);
      o = true;
      a(parambg);
      return;
    }
  }
  
  public final void a(AdSizeParcel paramAdSizeParcel)
  {
    synchronized (b)
    {
      h = paramAdSizeParcel;
      requestLayout();
      return;
    }
  }
  
  public final void a(c paramc)
  {
    synchronized (b)
    {
      g = paramc;
      return;
    }
  }
  
  public final void a(x paramx, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    if (paramBoolean) {}
    for (paramx = "1";; paramx = "0")
    {
      localHashMap.put("isVisible", paramx);
      a("onAdVisibilityChanged", localHashMap);
      return;
    }
  }
  
  public final void a(String paramString)
  {
    synchronized (b)
    {
      try
      {
        super.loadUrl(paramString);
        return;
      }
      catch (Throwable paramString)
      {
        for (;;)
        {
          new StringBuilder("Could not call loadUrl. ").append(paramString);
          b.a(5);
        }
      }
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    d(paramString1 + "(" + paramString2 + ");");
  }
  
  public final void a(String paramString, Map<String, ?> paramMap)
  {
    try
    {
      paramMap = o.e().a(paramMap);
      a(paramString, paramMap);
      return;
    }
    catch (JSONException paramString)
    {
      b.a(5);
    }
  }
  
  public final void a(String paramString, JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject;
    if (paramJSONObject == null) {
      localObject = new JSONObject();
    }
    paramJSONObject = ((JSONObject)localObject).toString();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("AFMA_ReceiveMessage('");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("'");
    ((StringBuilder)localObject).append(",");
    ((StringBuilder)localObject).append(paramJSONObject);
    ((StringBuilder)localObject).append(");");
    new StringBuilder("Dispatching AFMA event: ").append(((StringBuilder)localObject).toString());
    b.a(2);
    d(((StringBuilder)localObject).toString());
  }
  
  public final void a(boolean paramBoolean)
  {
    synchronized (b)
    {
      k = paramBoolean;
      A();
      return;
    }
  }
  
  public final View b()
  {
    return this;
  }
  
  public final void b(int paramInt)
  {
    synchronized (b)
    {
      n = paramInt;
      if (g != null) {
        g.a(n);
      }
      return;
    }
  }
  
  public final void b(c paramc)
  {
    synchronized (b)
    {
      u = paramc;
      return;
    }
  }
  
  public final void b(String paramString)
  {
    Object localObject = b;
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    try
    {
      p = str;
      return;
    }
    finally {}
  }
  
  public final void b(String paramString, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (paramJSONObject == null) {
      localJSONObject = new JSONObject();
    }
    a(paramString, localJSONObject.toString());
  }
  
  public final void b(boolean paramBoolean)
  {
    synchronized (b)
    {
      if (g != null)
      {
        g.a(f.b(), paramBoolean);
        return;
      }
      i = paramBoolean;
    }
  }
  
  public final void c()
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", d.b);
    a("onhide", localHashMap);
  }
  
  public final void c(boolean paramBoolean)
  {
    synchronized (b)
    {
      o = paramBoolean;
      return;
    }
  }
  
  public final void d()
  {
    if (q != null)
    {
      bc.a(t.a(), s, new String[] { "aes" });
      q = bc.a(t.a());
      t.a("native:view_show", s);
    }
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", d.b);
    a("onshow", localHashMap);
  }
  
  public final void destroy()
  {
    synchronized (b)
    {
      D();
      v.b();
      if (g != null)
      {
        g.a();
        g.k();
        g = null;
      }
      f.e();
      if (j) {
        return;
      }
      o.r();
      cs.a(this);
      synchronized (b)
      {
        if (A != null)
        {
          Iterator localIterator = A.values().iterator();
          if (localIterator.hasNext()) {
            ((ct)localIterator.next()).b();
          }
        }
      }
    }
    j = true;
    b.a(2);
    f.d();
  }
  
  public final Activity e()
  {
    return a.a();
  }
  
  public final void evaluateJavascript(String paramString, ValueCallback<String> paramValueCallback)
  {
    synchronized (b)
    {
      if (q())
      {
        b.a(5);
        if (paramValueCallback != null) {
          paramValueCallback.onReceiveValue(null);
        }
        return;
      }
      super.evaluateJavascript(paramString, paramValueCallback);
      return;
    }
  }
  
  public final Context f()
  {
    return a.b();
  }
  
  public final d g()
  {
    return e;
  }
  
  public final c h()
  {
    synchronized (b)
    {
      c localc = g;
      return localc;
    }
  }
  
  public final c i()
  {
    synchronized (b)
    {
      c localc = u;
      return localc;
    }
  }
  
  public final AdSizeParcel j()
  {
    synchronized (b)
    {
      AdSizeParcel localAdSizeParcel = h;
      return localAdSizeParcel;
    }
  }
  
  public final hu k()
  {
    return f;
  }
  
  public final boolean l()
  {
    return i;
  }
  
  public final void loadData(String paramString1, String paramString2, String paramString3)
  {
    synchronized (b)
    {
      if (!q())
      {
        super.loadData(paramString1, paramString2, paramString3);
        return;
      }
      b.a(5);
    }
  }
  
  public final void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    synchronized (b)
    {
      if (!q())
      {
        super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
        return;
      }
      b.a(5);
    }
  }
  
  public final void loadUrl(String paramString)
  {
    for (;;)
    {
      synchronized (b)
      {
        boolean bool = q();
        if (!bool) {
          try
          {
            super.loadUrl(paramString);
            return;
          }
          catch (Throwable paramString)
          {
            new StringBuilder("Could not call loadUrl. ").append(paramString);
            b.a(5);
            continue;
          }
        }
      }
      b.a(5);
    }
  }
  
  public final m m()
  {
    return c;
  }
  
  public final VersionInfoParcel n()
  {
    return d;
  }
  
  public final boolean o()
  {
    synchronized (b)
    {
      boolean bool = k;
      return bool;
    }
  }
  
  protected final void onAttachedToWindow()
  {
    synchronized (b)
    {
      super.onAttachedToWindow();
      if (!q()) {
        v.c();
      }
      return;
    }
  }
  
  protected final void onDetachedFromWindow()
  {
    synchronized (b)
    {
      if (!q()) {
        v.d();
      }
      super.onDetachedFromWindow();
      return;
    }
  }
  
  public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    try
    {
      paramString2 = new Intent("android.intent.action.VIEW");
      paramString2.setDataAndType(Uri.parse(paramString1), paramString4);
      o.e();
      gw.a(getContext(), paramString2);
      return;
    }
    catch (ActivityNotFoundException paramString2)
    {
      new StringBuilder("Couldn't find an Activity to view url/mimetype: ").append(paramString1).append(" / ").append(paramString4);
      b.a(3);
    }
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    if (q()) {}
    while ((Build.VERSION.SDK_INT == 21) && (paramCanvas.isHardwareAccelerated()) && (!isAttachedToWindow())) {
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  public final void onGlobalLayout()
  {
    int i1 = 0;
    if (!f.b())
    {
      localObject1 = h();
      if ((localObject1 != null) && (i1 != 0)) {
        ((c)localObject1).n();
      }
      return;
    }
    o.e();
    Object localObject1 = gw.a(B);
    n.a();
    int i4 = a.b((DisplayMetrics)localObject1, widthPixels);
    n.a();
    int i5 = a.b((DisplayMetrics)localObject1, heightPixels);
    Object localObject2 = a.a();
    int i3;
    int i2;
    if ((localObject2 == null) || (((Activity)localObject2).getWindow() == null))
    {
      i3 = i5;
      i2 = i4;
      label106:
      if ((x == i4) && (w == i5) && (y == i2) && (z == i3)) {
        break label259;
      }
      if ((x == i4) && (w == i5)) {
        break label261;
      }
    }
    label259:
    label261:
    for (i1 = 1;; i1 = 0)
    {
      x = i4;
      w = i5;
      y = i2;
      z = i3;
      new eh(this).a(i4, i5, i2, i3, density, B.getDefaultDisplay().getRotation());
      break;
      o.e();
      localObject2 = gw.a((Activity)localObject2);
      n.a();
      i2 = a.b((DisplayMetrics)localObject1, localObject2[0]);
      n.a();
      i3 = a.b((DisplayMetrics)localObject1, localObject2[1]);
      break label106;
      break;
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = Integer.MAX_VALUE;
    synchronized (b)
    {
      if (q())
      {
        setMeasuredDimension(0, 0);
        return;
      }
      if ((isInEditMode()) || (k) || (h.i) || (h.j))
      {
        super.onMeasure(paramInt1, paramInt2);
        return;
      }
    }
    if (h.e)
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      B.getDefaultDisplay().getMetrics(localDisplayMetrics);
      setMeasuredDimension(widthPixels, heightPixels);
      return;
    }
    int i5 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt2);
    if (i5 != Integer.MIN_VALUE) {
      if (i5 == 1073741824) {
        break label365;
      }
    }
    for (;;)
    {
      if ((h.g > paramInt1) || (h.d > paramInt2))
      {
        float f1 = a.getResources().getDisplayMetrics().density;
        new StringBuilder("Not enough space to show ad. Needs ").append((int)(h.g / f1)).append("x").append((int)(h.d / f1)).append(" dp, but only has ").append((int)(i1 / f1)).append("x").append((int)(i3 / f1)).append(" dp.");
        b.a(5);
        if (getVisibility() != 8) {
          setVisibility(4);
        }
        setMeasuredDimension(0, 0);
      }
      for (;;)
      {
        return;
        if (getVisibility() != 8) {
          setVisibility(0);
        }
        setMeasuredDimension(h.g, h.d);
      }
      paramInt1 = Integer.MAX_VALUE;
      break label368;
      label365:
      paramInt1 = i1;
      label368:
      if (i4 != Integer.MIN_VALUE)
      {
        paramInt2 = i2;
        if (i4 != 1073741824) {}
      }
      else
      {
        paramInt2 = i3;
      }
    }
  }
  
  public final void onPause()
  {
    if (q()) {}
    for (;;)
    {
      return;
      try
      {
        if (ka.a())
        {
          super.onPause();
          return;
        }
      }
      catch (Exception localException)
      {
        b.a("Could not pause webview.", localException);
      }
    }
  }
  
  public final void onResume()
  {
    if (q()) {}
    for (;;)
    {
      return;
      try
      {
        if (ka.a())
        {
          super.onResume();
          return;
        }
      }
      catch (Exception localException)
      {
        b.a("Could not resume webview.", localException);
      }
    }
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (c != null) {
      c.a(paramMotionEvent);
    }
    if (q()) {
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public final int p()
  {
    synchronized (b)
    {
      int i1 = n;
      return i1;
    }
  }
  
  public final boolean q()
  {
    synchronized (b)
    {
      boolean bool = j;
      return bool;
    }
  }
  
  public final void r()
  {
    synchronized (b)
    {
      b.a(2);
      gw.a.post(new hx.1(this));
      return;
    }
  }
  
  public final boolean s()
  {
    synchronized (b)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public final void setWebViewClient(WebViewClient paramWebViewClient)
  {
    super.setWebViewClient(paramWebViewClient);
    if ((paramWebViewClient instanceof hu)) {
      f = ((hu)paramWebViewClient);
    }
  }
  
  public final void stopLoading()
  {
    if (q()) {
      return;
    }
    try
    {
      super.stopLoading();
      return;
    }
    catch (Exception localException)
    {
      b.a("Could not stop loading webview.", localException);
    }
  }
  
  public final String t()
  {
    synchronized (b)
    {
      String str = p;
      return str;
    }
  }
  
  public final hr u()
  {
    return null;
  }
  
  public final be v()
  {
    return s;
  }
  
  public final bf w()
  {
    return t;
  }
  
  public final void x()
  {
    v.a();
  }
  
  public final void y()
  {
    if ((s == null) && (!"about:blank".equals(getUrl())))
    {
      s = bc.a(t.a());
      t.a("native:view_load", s);
    }
  }
  
  @fs
  public static final class a
    extends MutableContextWrapper
  {
    private Activity a;
    private Context b;
    private Context c;
    
    public a(Context paramContext)
    {
      super();
      setBaseContext(paramContext);
    }
    
    public final Activity a()
    {
      return a;
    }
    
    public final Context b()
    {
      return c;
    }
    
    public final Object getSystemService(String paramString)
    {
      return c.getSystemService(paramString);
    }
    
    public final void setBaseContext(Context paramContext)
    {
      b = paramContext.getApplicationContext();
      if ((paramContext instanceof Activity)) {}
      for (Activity localActivity = (Activity)paramContext;; localActivity = null)
      {
        a = localActivity;
        c = paramContext;
        super.setBaseContext(b);
        return;
      }
    }
    
    public final void startActivity(Intent paramIntent)
    {
      if ((a != null) && (!ka.h()))
      {
        a.startActivity(paramIntent);
        return;
      }
      paramIntent.setFlags(268435456);
      b.startActivity(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */