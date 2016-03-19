package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@fs
public final class cg
  implements ci
{
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    String str1 = (String)paramMap.get("action");
    String str2;
    if ("tick".equals(str1))
    {
      str2 = (String)paramMap.get("label");
      str1 = (String)paramMap.get("start_label");
      paramMap = (String)paramMap.get("timestamp");
      if (TextUtils.isEmpty(str2)) {
        b.a(5);
      }
    }
    do
    {
      return;
      if (TextUtils.isEmpty(paramMap))
      {
        b.a(5);
        return;
      }
      try
      {
        long l1 = Long.parseLong(paramMap);
        long l2 = o.i().a();
        long l3 = o.i().b();
        paramMap = str1;
        if (TextUtils.isEmpty(str1)) {
          paramMap = "native:view_load";
        }
        paramhs.w().a(str2, paramMap, l1 - l2 + l3);
        return;
      }
      catch (NumberFormatException paramhs)
      {
        b.a(5);
        return;
      }
      if ("experiment".equals(str1))
      {
        paramMap = (String)paramMap.get("value");
        if (TextUtils.isEmpty(paramMap))
        {
          b.a(5);
          return;
        }
        paramhs = paramhs.w().a();
        if (paramhs == null)
        {
          b.a(5);
          return;
        }
        paramhs.a("e", paramMap);
        return;
      }
    } while (!"extra".equals(str1));
    str1 = (String)paramMap.get("name");
    paramMap = (String)paramMap.get("value");
    if (TextUtils.isEmpty(paramMap))
    {
      b.a(5);
      return;
    }
    if (TextUtils.isEmpty(str1))
    {
      b.a(5);
      return;
    }
    paramhs = paramhs.w().a();
    if (paramhs == null)
    {
      b.a(5);
      return;
    }
    paramhs.a(str1, paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */