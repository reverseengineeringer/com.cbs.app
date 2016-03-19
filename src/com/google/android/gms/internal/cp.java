package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

@fs
public final class cp
  implements ci
{
  private final ck a;
  private final e b;
  private final ec c;
  
  public cp(ck paramck, e parame, ec paramec)
  {
    a = paramck;
    b = parame;
    c = paramec;
  }
  
  private void a(boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramBoolean);
    }
  }
  
  private static boolean a(Map<String, String> paramMap)
  {
    return "1".equals(paramMap.get("custom_close"));
  }
  
  private static int b(Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("o");
    if (paramMap != null)
    {
      if ("p".equalsIgnoreCase(paramMap)) {
        return o.g().b();
      }
      if ("l".equalsIgnoreCase(paramMap)) {
        return o.g().a();
      }
      if ("c".equalsIgnoreCase(paramMap)) {
        return o.g().c();
      }
    }
    return -1;
  }
  
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("a");
    if (str == null) {
      b.a(5);
    }
    hu localhu;
    do
    {
      return;
      if ((b != null) && (!b.b()))
      {
        b.a((String)paramMap.get("u"));
        return;
      }
      localhu = paramhs.k();
      if ("expand".equalsIgnoreCase(str))
      {
        if (paramhs.o())
        {
          b.a(5);
          return;
        }
        a(false);
        localhu.a(a(paramMap), b(paramMap));
        return;
      }
      if ("webapp".equalsIgnoreCase(str))
      {
        paramhs = (String)paramMap.get("u");
        a(false);
        if (paramhs != null)
        {
          localhu.a(a(paramMap), b(paramMap), paramhs);
          return;
        }
        localhu.a(a(paramMap), b(paramMap), (String)paramMap.get("html"), (String)paramMap.get("baseurl"));
        return;
      }
      if (!"in_app_purchase".equalsIgnoreCase(str)) {
        break;
      }
      paramhs = (String)paramMap.get("product_id");
      paramMap = (String)paramMap.get("report_urls");
    } while (a == null);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = paramMap.split(" ");
      a.a(paramhs, new ArrayList(Arrays.asList(paramMap)));
      return;
    }
    a.a(paramhs, new ArrayList());
    return;
    if (("app".equalsIgnoreCase(str)) && ("true".equalsIgnoreCase((String)paramMap.get("play_store"))))
    {
      paramMap = (String)paramMap.get("u");
      if (TextUtils.isEmpty(paramMap))
      {
        b.a(5);
        return;
      }
      new cp.a(paramhs, paramMap).e();
      return;
    }
    if (("app".equalsIgnoreCase(str)) && ("true".equalsIgnoreCase((String)paramMap.get("system_browser"))))
    {
      paramhs = paramhs.getContext();
      if (TextUtils.isEmpty((String)paramMap.get("u")))
      {
        b.a(5);
        return;
      }
      paramMap = new cp.b().a(paramhs, paramMap);
      try
      {
        o.e();
        gw.a(paramhs, paramMap);
        return;
      }
      catch (ActivityNotFoundException paramhs)
      {
        paramhs.getMessage();
        b.a(5);
        return;
      }
    }
    a(true);
    str = (String)paramMap.get("u");
    if (!TextUtils.isEmpty(str)) {
      o.e();
    }
    for (paramhs = gw.a(paramhs.getContext(), paramhs.m(), str);; paramhs = str)
    {
      localhu.a(new AdLauncherIntentInfoParcel((String)paramMap.get("i"), paramhs, (String)paramMap.get("m"), (String)paramMap.get("p"), (String)paramMap.get("c"), (String)paramMap.get("f"), (String)paramMap.get("e")));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */