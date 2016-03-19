package com.google.android.gms.internal;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@fs
public final class ec
  extends eh
{
  static final Set<String> a = new HashSet(Arrays.asList(new String[] { "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center" }));
  private String b = "top-right";
  private boolean c = true;
  private int d = 0;
  private int e = 0;
  private int f = -1;
  private int g = 0;
  private int h = 0;
  private int i = -1;
  private final Object j = new Object();
  private final hs k;
  private final Activity l;
  private AdSizeParcel m;
  private ImageView n;
  private LinearLayout o;
  private ei p;
  private PopupWindow q;
  private RelativeLayout r;
  private ViewGroup s;
  
  public ec(hs paramhs, ei paramei)
  {
    super(paramhs, "resize");
    k = paramhs;
    l = paramhs.e();
    p = paramei;
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    a(paramInt1, paramInt2 - o.e().c(l)[0], i, f);
  }
  
  private int[] b()
  {
    Object localObject = o.e().b(l);
    int[] arrayOfInt = o.e().c(l);
    int i3 = localObject[0];
    int i1 = localObject[1];
    if ((i < 50) || (i > i3))
    {
      b.a(5);
      i1 = 0;
    }
    while (i1 == 0)
    {
      return null;
      if ((f < 50) || (f > i1))
      {
        b.a(5);
        i1 = 0;
      }
      else if ((f == i1) && (i == i3))
      {
        b.a(5);
        i1 = 0;
      }
      else
      {
        if (c)
        {
          localObject = b;
          i1 = -1;
          switch (((String)localObject).hashCode())
          {
          default: 
            switch (i1)
            {
            default: 
              label196:
              i1 = d + g + i - 50;
              i2 = e + h;
            }
            break;
          }
          for (;;)
          {
            if ((i1 >= 0) && (i1 + 50 <= i3) && (i2 >= arrayOfInt[0]) && (i2 + 50 <= arrayOfInt[1])) {
              break label600;
            }
            i1 = 0;
            break;
            if (!((String)localObject).equals("top-left")) {
              break label196;
            }
            i1 = 0;
            break label196;
            if (!((String)localObject).equals("top-center")) {
              break label196;
            }
            i1 = 1;
            break label196;
            if (!((String)localObject).equals("center")) {
              break label196;
            }
            i1 = 2;
            break label196;
            if (!((String)localObject).equals("bottom-left")) {
              break label196;
            }
            i1 = 3;
            break label196;
            if (!((String)localObject).equals("bottom-center")) {
              break label196;
            }
            i1 = 4;
            break label196;
            if (!((String)localObject).equals("bottom-right")) {
              break label196;
            }
            i1 = 5;
            break label196;
            i1 = d + g;
            i2 = e + h;
            continue;
            i1 = d + g + i / 2 - 25;
            i2 = e + h;
            continue;
            i1 = d + g + i / 2 - 25;
            i2 = e + h + f / 2 - 25;
            continue;
            i1 = d + g;
            i2 = e + h + f - 50;
            continue;
            i1 = d + g + i / 2 - 25;
            i2 = e + h + f - 50;
            continue;
            i1 = d + g + i - 50;
            i2 = e + h + f - 50;
          }
        }
        label600:
        i1 = 1;
      }
    }
    if (c) {
      return new int[] { d + g, e + h };
    }
    arrayOfInt = o.e().b(l);
    localObject = o.e().c(l);
    int i4 = arrayOfInt[0];
    int i2 = d + g;
    i3 = e + h;
    if (i2 < 0)
    {
      i1 = 0;
      if (i3 >= localObject[0]) {
        break label745;
      }
      i2 = localObject[0];
    }
    for (;;)
    {
      return new int[] { i1, i2 };
      i1 = i2;
      if (i + i2 <= i4) {
        break;
      }
      i1 = i4 - i;
      break;
      label745:
      i2 = i3;
      if (f + i3 > localObject[1]) {
        i2 = localObject[1] - f;
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    d = paramInt1;
    e = paramInt2;
  }
  
  public final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    synchronized (j)
    {
      d = paramInt1;
      e = paramInt2;
      if ((q != null) && (paramBoolean))
      {
        int[] arrayOfInt = b();
        if (arrayOfInt != null)
        {
          PopupWindow localPopupWindow = q;
          n.a();
          paramInt1 = a.a(l, arrayOfInt[0]);
          n.a();
          localPopupWindow.update(paramInt1, a.a(l, arrayOfInt[1]), q.getWidth(), q.getHeight());
          b(arrayOfInt[0], arrayOfInt[1]);
        }
      }
      else
      {
        return;
      }
      a(true);
    }
  }
  
  public final void a(Map<String, String> paramMap)
  {
    synchronized (j)
    {
      if (l == null)
      {
        a("Not an activity context. Cannot resize.");
        return;
      }
      if (k.j() == null)
      {
        a("Webview is not yet available, size is not set.");
        return;
      }
    }
    if (k.j().e)
    {
      a("Is interstitial. Cannot resize an interstitial.");
      return;
    }
    if (k.o())
    {
      a("Cannot resize an expanded banner.");
      return;
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("width")))
    {
      o.e();
      i = gw.b((String)paramMap.get("width"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("height")))
    {
      o.e();
      f = gw.b((String)paramMap.get("height"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("offsetX")))
    {
      o.e();
      g = gw.b((String)paramMap.get("offsetX"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("offsetY")))
    {
      o.e();
      h = gw.b((String)paramMap.get("offsetY"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("allowOffscreen"))) {
      c = Boolean.parseBoolean((String)paramMap.get("allowOffscreen"));
    }
    paramMap = (String)paramMap.get("customClosePosition");
    if (!TextUtils.isEmpty(paramMap)) {
      b = paramMap;
    }
    int i1;
    Object localObject2;
    Object localObject3;
    if ((i >= 0) && (f >= 0))
    {
      i1 = 1;
      if (i1 == 0)
      {
        a("Invalid width and height options. Cannot resize.");
        return;
      }
      localObject2 = l.getWindow();
      if ((localObject2 == null) || (((Window)localObject2).getDecorView() == null))
      {
        a("Activity context is not ready, cannot get window or decor view.");
        return;
      }
      paramMap = b();
      if (paramMap == null)
      {
        a("Resize location out of screen or close button is not visible.");
        return;
      }
      n.a();
      i1 = a.a(l, i);
      n.a();
      int i2 = a.a(l, f);
      localObject3 = k.b().getParent();
      if ((localObject3 != null) && ((localObject3 instanceof ViewGroup)))
      {
        ((ViewGroup)localObject3).removeView(k.b());
        if (q == null)
        {
          s = ((ViewGroup)localObject3);
          o.e();
          localObject3 = gw.a(k.b());
          n = new ImageView(l);
          n.setImageBitmap((Bitmap)localObject3);
          m = k.j();
          s.addView(n);
          r = new RelativeLayout(l);
          r.setBackgroundColor(0);
          r.setLayoutParams(new ViewGroup.LayoutParams(i1, i2));
          o.e();
          q = gw.a(r, i1, i2);
          q.setOutsideTouchable(true);
          q.setTouchable(true);
          localObject3 = q;
          if (c) {
            break label1311;
          }
        }
      }
    }
    label1257:
    label1266:
    label1268:
    label1311:
    for (boolean bool = true;; bool = false)
    {
      ((PopupWindow)localObject3).setClippingEnabled(bool);
      r.addView(k.b(), -1, -1);
      o = new LinearLayout(l);
      n.a();
      i1 = a.a(l, 50);
      n.a();
      localObject3 = new RelativeLayout.LayoutParams(i1, a.a(l, 50));
      String str = b;
      switch (str.hashCode())
      {
      }
      for (;;)
      {
        ((RelativeLayout.LayoutParams)localObject3).addRule(10);
        ((RelativeLayout.LayoutParams)localObject3).addRule(11);
        for (;;)
        {
          o.setOnClickListener(new ec.1(this));
          o.setContentDescription("Close button");
          r.addView(o, (ViewGroup.LayoutParams)localObject3);
          try
          {
            localObject3 = q;
            localObject2 = ((Window)localObject2).getDecorView();
            n.a();
            i1 = a.a(l, paramMap[0]);
            n.a();
            ((PopupWindow)localObject3).showAtLocation((View)localObject2, 0, i1, a.a(l, paramMap[1]));
            if (p != null) {
              p.y();
            }
            k.a(new AdSizeParcel(l, new d(i, f)));
            b(paramMap[0], paramMap[1]);
            c("resized");
            return;
          }
          catch (RuntimeException paramMap)
          {
            a("Cannot show popup window: " + paramMap.getMessage());
            r.removeView(k.b());
            if (s == null) {
              break label1257;
            }
            s.removeView(n);
            s.addView(k.b());
            k.a(m);
            return;
          }
          q.dismiss();
          break;
          a("Webview is detached, probably in the middle of a resize or expand.");
          return;
          if (!str.equals("top-left")) {
            break label1266;
          }
          i1 = 0;
          break label1268;
          if (!str.equals("top-center")) {
            break label1266;
          }
          i1 = 1;
          break label1268;
          if (!str.equals("center")) {
            break label1266;
          }
          i1 = 2;
          break label1268;
          if (!str.equals("bottom-left")) {
            break label1266;
          }
          i1 = 3;
          break label1268;
          if (!str.equals("bottom-center")) {
            break label1266;
          }
          i1 = 4;
          break label1268;
          if (!str.equals("bottom-right")) {
            break label1266;
          }
          i1 = 5;
          break label1268;
          ((RelativeLayout.LayoutParams)localObject3).addRule(10);
          ((RelativeLayout.LayoutParams)localObject3).addRule(9);
          continue;
          ((RelativeLayout.LayoutParams)localObject3).addRule(10);
          ((RelativeLayout.LayoutParams)localObject3).addRule(14);
          continue;
          ((RelativeLayout.LayoutParams)localObject3).addRule(13);
          continue;
          ((RelativeLayout.LayoutParams)localObject3).addRule(12);
          ((RelativeLayout.LayoutParams)localObject3).addRule(9);
          continue;
          ((RelativeLayout.LayoutParams)localObject3).addRule(12);
          ((RelativeLayout.LayoutParams)localObject3).addRule(14);
          continue;
          ((RelativeLayout.LayoutParams)localObject3).addRule(12);
          ((RelativeLayout.LayoutParams)localObject3).addRule(11);
        }
        i1 = 0;
        break;
        i1 = -1;
        switch (i1)
        {
        }
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    synchronized (j)
    {
      if (q != null)
      {
        q.dismiss();
        r.removeView(k.b());
        if (s != null)
        {
          s.removeView(n);
          s.addView(k.b());
          k.a(m);
        }
        if (paramBoolean)
        {
          c("default");
          if (p != null) {
            p.z();
          }
        }
        q = null;
        r = null;
        s = null;
        o = null;
      }
      return;
    }
  }
  
  public final boolean a()
  {
    for (;;)
    {
      synchronized (j)
      {
        if (q != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */