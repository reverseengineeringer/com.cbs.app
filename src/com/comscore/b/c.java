package com.comscore.b;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;
import com.comscore.utils.i;
import java.util.HashMap;
import java.util.Locale;

public class c
  extends com.comscore.c.b
{
  protected c(com.comscore.a.b paramb, d paramd, String paramString)
  {
    this(paramb, paramd, paramString, false, false, true);
  }
  
  protected c(com.comscore.a.b paramb, d paramd, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(paramb);
    paramb.q(paramBoolean3);
    int i;
    long l1;
    int j;
    if (paramBoolean3)
    {
      i = paramb.a(paramBoolean2);
      l1 = paramb.b(paramBoolean1);
      long l2 = paramb.c(paramBoolean2);
      long l3 = paramb.d(paramBoolean1);
      long l4 = paramb.e(paramBoolean2);
      long l5 = paramb.f(paramBoolean1);
      long l6 = paramb.g(paramBoolean2);
      long l7 = paramb.h(paramBoolean2);
      long l8 = paramb.i(paramBoolean2);
      long l9 = paramb.j(paramBoolean2);
      long l10 = paramb.z();
      j = paramb.k(paramBoolean2);
      int k = paramb.l(paramBoolean2);
      int m = paramb.m(paramBoolean2);
      int n = paramb.n(paramBoolean2);
      a(new com.comscore.c.a("ns_ap_fg", String.valueOf(i), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_ft", String.valueOf(l1), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_dft", String.valueOf(l2), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_bt", String.valueOf(l3), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_dbt", String.valueOf(l4), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_it", String.valueOf(l5), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_dit", String.valueOf(l6), Boolean.valueOf(false)));
      if (l10 >= 60000L) {
        a(new com.comscore.c.a("ns_ap_ut", String.valueOf(l10), Boolean.valueOf(false)));
      }
      a(new com.comscore.c.a("ns_ap_as", String.valueOf(j), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_das", String.valueOf(l7), Boolean.valueOf(false)));
      if (k >= 0)
      {
        a(new com.comscore.c.a("ns_ap_aus", String.valueOf(k), Boolean.valueOf(false)));
        a(new com.comscore.c.a("ns_ap_daus", String.valueOf(l8), Boolean.valueOf(false)));
        a(new com.comscore.c.a("ns_ap_uc", String.valueOf(n), Boolean.valueOf(false)));
      }
      if (m >= 0)
      {
        a(new com.comscore.c.a("ns_ap_us", String.valueOf(m), Boolean.valueOf(false)));
        a(new com.comscore.c.a("ns_ap_dus", String.valueOf(l9), Boolean.valueOf(false)));
      }
      a(new com.comscore.c.a("ns_ap_usage", Long.toString(c - paramb.J()), Boolean.valueOf(false)));
    }
    if (paramString != null) {
      b(paramString);
    }
    a(new com.comscore.c.a("c1", "19", Boolean.valueOf(false)));
    a(new com.comscore.c.a("ns_ap_an", paramb.I(), Boolean.valueOf(false)));
    a(new com.comscore.c.a("ns_ap_pn", "android", Boolean.valueOf(false)));
    a(new com.comscore.c.a("c12", paramb.F(), Boolean.valueOf(false)));
    if (paramb.E() != null)
    {
      a(new com.comscore.c.a("ns_ak", paramb.E(), Boolean.valueOf(false)));
      if (paramb.G().a()) {
        a(new com.comscore.c.a("ns_ap_ni", "1", Boolean.valueOf(false)));
      }
    }
    if (paramb.G().g() != null) {
      a("ns_ap_i3", paramb.G().g());
    }
    a(new com.comscore.c.a("ns_ap_device", Build.DEVICE, Boolean.valueOf(false)));
    Display localDisplay;
    if ((paramd == d.a) || (paramd == d.c) || (paramd == d.b))
    {
      paramString = com.comscore.d.a.a;
      a(new com.comscore.c.a("ns_type", paramString.toString(), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ts", Long.toString(c), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_nc", "1", Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_pfv", Build.VERSION.RELEASE, Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_pv", Build.VERSION.RELEASE, Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_pfm", "android", Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_ar", System.getProperty("os.arch"), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_ev", paramd.toString(), Boolean.valueOf(false)));
      Object localObject = paramb.A();
      a(new com.comscore.c.a("ns_ap_ver", paramb.x(), Boolean.valueOf(false)));
      paramString = new Point();
      localDisplay = ((WindowManager)((Context)localObject).getSystemService("window")).getDefaultDisplay();
      if (Build.VERSION.SDK_INT < 13) {
        break label1207;
      }
      localObject = new Point();
      paramString = (String)localObject;
      if (Build.VERSION.SDK_INT >= 13)
      {
        localDisplay.getSize((Point)localObject);
        paramString = (String)localObject;
      }
    }
    for (;;)
    {
      i = x;
      j = y;
      a(new com.comscore.c.a("ns_ap_res", Integer.toString(i) + "x" + Integer.toString(j), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_lang", Locale.getDefault().getLanguage(), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_sv", "3.1508.28", Boolean.valueOf(false)));
      if (paramd.equals(d.f)) {
        a("ns_ap_oc", String.valueOf(paramb.f().a()));
      }
      l1 = paramb.v();
      i = paramb.w();
      a(new com.comscore.c.a("ns_ap_id", String.valueOf(l1), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_cs", String.valueOf(i), Boolean.valueOf(false)));
      a(new com.comscore.c.a("ns_ap_bi", paramb.A().getPackageName(), Boolean.valueOf(false)));
      return;
      paramString = com.comscore.d.a.b;
      break;
      label1207:
      x = localDisplay.getWidth();
      y = localDisplay.getHeight();
    }
  }
  
  public static c a(com.comscore.a.b paramb, d paramd, HashMap<String, String> paramHashMap, String paramString)
  {
    boolean bool3 = true;
    Object localObject = null;
    if (paramd == d.a)
    {
      paramb.c();
      localObject = new b(paramb, paramd, paramString, paramb.d());
      if (paramd != d.d) {
        ((c)localObject).a(paramb.L());
      }
      if (paramd != d.d) {
        break label202;
      }
    }
    label153:
    label196:
    label202:
    for (boolean bool1 = bool3;; bool1 = false)
    {
      ((c)localObject).a(paramHashMap, bool1);
      if (!((c)localObject).a("name").booleanValue())
      {
        if (paramb.B() == null) {
          break label208;
        }
        ((c)localObject).a("name", paramb.B());
      }
      return (c)localObject;
      if (paramd == d.d)
      {
        localObject = new a(paramb, paramd, paramString);
        break;
      }
      if (paramd == d.c) {
        break;
      }
      if ((paramHashMap == null) || (paramHashMap.get("ns_st_ev") != "hb"))
      {
        bool1 = true;
        if ((paramHashMap != null) && (paramHashMap.containsKey("ns_st_ev"))) {
          break label196;
        }
      }
      for (boolean bool2 = true;; bool2 = false)
      {
        localObject = new c(paramb, paramd, paramString, false, bool1, bool2);
        break;
        bool1 = false;
        break label153;
      }
    }
    label208:
    if (paramd == d.a)
    {
      ((c)localObject).a("name", "start");
      return (c)localObject;
    }
    if (paramb.r() == com.comscore.a.a.c)
    {
      ((c)localObject).a("name", "foreground");
      return (c)localObject;
    }
    ((c)localObject).a("name", "background");
    return (c)localObject;
  }
}

/* Location:
 * Qualified Name:     com.comscore.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */