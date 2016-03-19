package com.adobe.a.b;

import android.os.Build;
import com.adobe.a.a.a;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;

abstract class b
{
  private static HashMap<String, Object> z = null;
  private DateFormat A = new SimpleDateFormat("M/d/yyyy");
  private DateFormat B = new SimpleDateFormat("H");
  private DateFormat C = new SimpleDateFormat("M/yyyy");
  protected String a = "a.OSEnvironment";
  protected int b = 300;
  private String c = "a.InstallEvent";
  private String d = "a.UpgradeEvent";
  private String e = "a.DailyEngUserEvent";
  private String f = "a.MonthlyEngUserEvent";
  private String g = "a.LaunchEvent";
  private String h = "a.CrashEvent";
  private String i = "a.InstallDate";
  private String j = "a.AppID";
  private String k = "a.EngDaysLifetime";
  private String l = "a.DaysSinceFirstUse";
  private String m = "a.DaysSinceLastUse";
  private String n = "a.Launches";
  private String o = "a.HourOfDay";
  private String p = "a.DayOfWeek";
  private String q = "a.DaysSinceLastUpgrade";
  private String r = "a.LaunchesSinceUpgrade";
  private Hashtable<String, Object> s = new Hashtable();
  private ArrayList<String> t = new ArrayList();
  private Hashtable<String, Object> u = new Hashtable();
  private String v = null;
  private String w = null;
  private Date x = null;
  private f y = null;
  
  protected b(f paramf)
  {
    y = paramf;
  }
  
  private static int a(Date paramDate1, Date paramDate2)
  {
    return (int)((paramDate2.getTime() - paramDate1.getTime()) / 1000L);
  }
  
  private String a(Date paramDate)
  {
    return A.format(paramDate);
  }
  
  private void a(int paramInt)
  {
    if (e("ADMS_UpgradeDate"))
    {
      int i1 = a("ADMS_LaunchesAfterUpgrade") + 1;
      b(String.valueOf(i1), r);
      if (paramInt == 2) {
        b(String.valueOf(b(h("ADMS_UpgradeDate"), x)), q);
      }
      a("ADMS_LaunchesAfterUpgrade", i1);
    }
  }
  
  private void a(Date paramDate, String paramString)
  {
    a(paramString, paramDate.getTime());
  }
  
  private static int b(Date paramDate1, Date paramDate2)
  {
    return (int)((paramDate2.getTime() - paramDate1.getTime()) / 86400000L);
  }
  
  private String b(Date paramDate)
  {
    return C.format(paramDate);
  }
  
  private void c(String paramString1, String paramString2)
  {
    if ((f.g(paramString1)) && (f.g(paramString2))) {
      u.put(paramString2, paramString1);
    }
  }
  
  private void g()
  {
    Date localDate1 = h("ADMS_LastDateUsed");
    if (!a(localDate1).equalsIgnoreCase(a(x)))
    {
      b("+1", k);
      g(e);
    }
    if (!b(localDate1).equals(b(x))) {
      g(f);
    }
    Date localDate2 = h("ADMS_InstallDate");
    b(b(localDate2, x), l);
    b(b(localDate1, x), m);
    if (!c("ADMS_SuccessfulClose"))
    {
      g(h);
      f("ADMS_PauseDate");
      f("ADMS_SessionStart");
    }
  }
  
  private void g(String paramString)
  {
    if (f.g(paramString)) {
      t.add(paramString);
    }
  }
  
  private Date h(String paramString)
  {
    return new Date(b(paramString));
  }
  
  private void h()
  {
    Iterator localIterator = t.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      b(str.replace("a.", ""), str);
    }
  }
  
  protected abstract int a(String paramString);
  
  protected void a()
  {
    g(g);
    int i1 = a("ADMS_Launches") + 1;
    b(String.valueOf(i1), n);
    b(w, j);
    Date localDate = x;
    b(B.format(localDate), o);
    localDate = x;
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(localDate);
    b(Integer.toString(localCalendar.get(7)), p);
    a(x, "ADMS_LastDateUsed");
    a("ADMS_Launches", i1);
  }
  
  protected abstract void a(String paramString, int paramInt);
  
  protected abstract void a(String paramString, long paramLong);
  
  protected abstract void a(String paramString1, String paramString2);
  
  protected abstract void a(String paramString, boolean paramBoolean);
  
  protected abstract long b(String paramString);
  
  protected abstract String b();
  
  protected final void b(String paramString1, String paramString2)
  {
    if ((f.g(paramString1)) && (f.g(paramString2))) {
      s.put(paramString2, paramString1);
    }
  }
  
  protected abstract String c();
  
  protected abstract boolean c(String paramString);
  
  protected abstract String d(String paramString);
  
  protected abstract void d();
  
  protected final void e()
  {
    Object localObject1;
    Object localObject2;
    if (e("ADMS_PauseDate"))
    {
      i1 = a(h("ADMS_PauseDate"), new Date());
      localObject1 = h("ADMS_SessionStart");
      if (i1 < b)
      {
        localObject2 = Calendar.getInstance();
        ((Calendar)localObject2).setTime((Date)localObject1);
        ((Calendar)localObject2).add(13, i1);
        a(((Calendar)localObject2).getTime(), "ADMS_SessionStart");
        f("ADMS_PauseDate");
        a("ADMS_SuccessfulClose", false);
      }
    }
    for (int i1 = 1; i1 != 0; i1 = 0) {
      return;
    }
    u = new Hashtable();
    s = new Hashtable();
    t = new ArrayList();
    v = b();
    w = (c() + "(" + v + ")");
    x = new Date();
    if (!e("ADMS_InstallDate"))
    {
      c(w + " Install", "pageName");
      b(a(x), i);
      b("+1", k);
      d();
      g(c);
      g(e);
      g(f);
      a(x, "ADMS_InstallDate");
      a(0);
      a();
      h();
      if (e("ADMS_PauseDate"))
      {
        localObject1 = h("ADMS_PauseDate");
        localObject2 = h("ADMS_SessionStart");
        if (a((Date)localObject1, new Date()) > b)
        {
          i1 = a((Date)localObject2, (Date)localObject1);
          if ((i1 <= 0) || (i1 >= 604800)) {
            break label677;
          }
          b(Integer.toString(i1), "a.PrevSessionLength");
        }
      }
    }
    for (;;)
    {
      f("ADMS_SessionStart");
      y.a("o", "ADMS BP Event", s, u);
      localObject1 = s;
      localObject2 = new HashMap();
      if (localObject1 != null) {
        ((HashMap)localObject2).putAll((Map)localObject1);
      }
      ((HashMap)localObject2).put("a.Resolution", e.a().d());
      e.a();
      ((HashMap)localObject2).put("a.DeviceName", Build.MODEL);
      ((HashMap)localObject2).put("a.OSVersion", e.a().f());
      ((HashMap)localObject2).put("a.CarrierName", e.a().g());
      z = (HashMap)localObject2;
      if (a.a()) {
        a.a(z);
      }
      if (!e("ADMS_SessionStart")) {
        a(x, "ADMS_SessionStart");
      }
      a("ADMS_LastVersion", v);
      a("ADMS_SuccessfulClose", false);
      f("ADMS_PauseDate");
      return;
      if (!e("ADMS_LastVersion")) {
        break;
      }
      if (d("ADMS_LastVersion").equalsIgnoreCase(v))
      {
        c(w + " Launch", "pageName");
        g();
        a(2);
        break;
      }
      c(w + " Upgrade", "pageName");
      g(d);
      a("ADMS_LaunchesAfterUpgrade", 0);
      a(x, "ADMS_UpgradeDate");
      g();
      a(1);
      break;
      label677:
      b(Integer.toString(i1), "a.ignoredSessionLength");
    }
  }
  
  protected abstract boolean e(String paramString);
  
  protected final void f()
  {
    a(new Date(), "ADMS_PauseDate");
    a("ADMS_SuccessfulClose", true);
  }
  
  protected abstract void f(String paramString);
}

/* Location:
 * Qualified Name:     com.adobe.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */