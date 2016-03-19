package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.overlay.zzk;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

@fs
public final class cq
  implements ci
{
  private final Map<hs, Integer> a = new WeakHashMap();
  
  private static int a(Context paramContext, Map<String, String> paramMap, String paramString, int paramInt)
  {
    paramMap = (String)paramMap.get(paramString);
    int i = paramInt;
    if (paramMap != null) {}
    try
    {
      n.a();
      i = a.a(paramContext, Integer.parseInt(paramMap));
      return i;
    }
    catch (NumberFormatException paramContext)
    {
      new StringBuilder("Could not parse ").append(paramString).append(" in a video GMSG: ").append(paramMap);
      b.a(5);
    }
    return paramInt;
  }
  
  public final void a(hs paramhs, Map<String, String> paramMap)
  {
    Object localObject2 = (String)paramMap.get("action");
    if (localObject2 == null) {
      b.a(5);
    }
    int i;
    int j;
    for (;;)
    {
      return;
      if (b.a(3))
      {
        localObject1 = new JSONObject(paramMap);
        ((JSONObject)localObject1).remove("google.afma.Notify_dt");
        new StringBuilder("Video GMSG: ").append((String)localObject2).append(" ").append(((JSONObject)localObject1).toString());
        b.a(3);
      }
      if ("background".equals(localObject2))
      {
        paramMap = (String)paramMap.get("color");
        if (TextUtils.isEmpty(paramMap))
        {
          b.a(5);
          return;
        }
        try
        {
          i = Color.parseColor(paramMap);
          paramMap = paramhs.u();
          if (paramMap != null)
          {
            paramMap = paramMap.a();
            if (paramMap != null)
            {
              paramMap.setBackgroundColor(i);
              return;
            }
          }
        }
        catch (IllegalArgumentException paramhs)
        {
          b.a(5);
          return;
        }
        a.put(paramhs, Integer.valueOf(i));
        return;
      }
      localObject1 = paramhs.u();
      if (localObject1 == null)
      {
        b.a(5);
        return;
      }
      boolean bool1 = "new".equals(localObject2);
      boolean bool2 = "position".equals(localObject2);
      if ((bool1) || (bool2))
      {
        localObject2 = paramhs.getContext();
        j = a((Context)localObject2, paramMap, "x", 0);
        int k = a((Context)localObject2, paramMap, "y", 0);
        int m = a((Context)localObject2, paramMap, "w", -1);
        int n = a((Context)localObject2, paramMap, "h", -1);
        try
        {
          i = Integer.parseInt((String)paramMap.get("player"));
          if ((bool1) && (((hr)localObject1).a() == null))
          {
            ((hr)localObject1).a(j, k, m, n, i);
            if (!a.containsKey(paramhs)) {
              continue;
            }
            i = ((Integer)a.get(paramhs)).intValue();
            paramhs = ((hr)localObject1).a();
            paramhs.setBackgroundColor(i);
            paramhs.k();
          }
        }
        catch (NumberFormatException paramMap)
        {
          for (;;)
          {
            i = 0;
          }
          ((hr)localObject1).a(j, k, m, n);
          return;
        }
      }
    }
    Object localObject1 = ((hr)localObject1).a();
    if (localObject1 == null)
    {
      zzk.a(paramhs);
      return;
    }
    if ("click".equals(localObject2))
    {
      paramhs = paramhs.getContext();
      i = a(paramhs, paramMap, "x", 0);
      j = a(paramhs, paramMap, "y", 0);
      long l = SystemClock.uptimeMillis();
      paramhs = MotionEvent.obtain(l, l, 0, i, j, 0);
      ((zzk)localObject1).a(paramhs);
      paramhs.recycle();
      return;
    }
    if ("currentTime".equals(localObject2))
    {
      paramhs = (String)paramMap.get("time");
      if (paramhs == null)
      {
        b.a(5);
        return;
      }
      try
      {
        ((zzk)localObject1).a((int)(Float.parseFloat(paramhs) * 1000.0F));
        return;
      }
      catch (NumberFormatException paramMap)
      {
        new StringBuilder("Could not parse time parameter from currentTime video GMSG: ").append(paramhs);
        b.a(5);
        return;
      }
    }
    if ("hide".equals(localObject2))
    {
      ((zzk)localObject1).setVisibility(4);
      return;
    }
    if ("load".equals(localObject2))
    {
      ((zzk)localObject1).f();
      return;
    }
    if ("mimetype".equals(localObject2))
    {
      ((zzk)localObject1).setMimeType((String)paramMap.get("mimetype"));
      return;
    }
    if ("muted".equals(localObject2))
    {
      if (Boolean.parseBoolean((String)paramMap.get("muted")))
      {
        ((zzk)localObject1).i();
        return;
      }
      ((zzk)localObject1).j();
      return;
    }
    if ("pause".equals(localObject2))
    {
      ((zzk)localObject1).g();
      return;
    }
    if ("play".equals(localObject2))
    {
      ((zzk)localObject1).h();
      return;
    }
    if ("show".equals(localObject2))
    {
      ((zzk)localObject1).setVisibility(0);
      return;
    }
    if ("src".equals(localObject2))
    {
      ((zzk)localObject1).a((String)paramMap.get("src"));
      return;
    }
    if ("volume".equals(localObject2))
    {
      paramhs = (String)paramMap.get("volume");
      if (paramhs == null)
      {
        b.a(5);
        return;
      }
      try
      {
        ((zzk)localObject1).a(Float.parseFloat(paramhs));
        return;
      }
      catch (NumberFormatException paramMap)
      {
        new StringBuilder("Could not parse volume parameter from volume video GMSG: ").append(paramhs);
        b.a(5);
        return;
      }
    }
    if ("watermark".equals(localObject2))
    {
      ((zzk)localObject1).k();
      return;
    }
    new StringBuilder("Unknown video action: ").append((String)localObject2);
    b.a(5);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */