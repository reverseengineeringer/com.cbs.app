package com.google.android.gms.cast;

import android.text.TextUtils;
import com.google.android.gms.cast.internal.f;
import com.google.android.gms.internal.jy;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

public final class h
{
  private long a;
  private int b;
  private String c;
  private String d;
  private String e;
  private String f;
  private int g;
  private JSONObject h;
  
  h(long paramLong, int paramInt)
  {
    i();
    a = paramLong;
    if ((paramInt <= 0) || (paramInt > 3)) {
      throw new IllegalArgumentException("invalid type " + paramInt);
    }
    b = paramInt;
  }
  
  h(JSONObject paramJSONObject)
  {
    i();
    a = paramJSONObject.getLong("trackId");
    String str = paramJSONObject.getString("type");
    if ("TEXT".equals(str))
    {
      b = 1;
      c = paramJSONObject.optString("trackContentId", null);
      d = paramJSONObject.optString("trackContentType", null);
      e = paramJSONObject.optString("name", null);
      f = paramJSONObject.optString("language", null);
      if (!paramJSONObject.has("subtype")) {
        break label274;
      }
      str = paramJSONObject.getString("subtype");
      if (!"SUBTITLES".equals(str)) {
        break label182;
      }
      g = 1;
    }
    for (;;)
    {
      h = paramJSONObject.optJSONObject("customData");
      return;
      if ("AUDIO".equals(str))
      {
        b = 2;
        break;
      }
      if ("VIDEO".equals(str))
      {
        b = 3;
        break;
      }
      throw new JSONException("invalid type: " + str);
      label182:
      if ("CAPTIONS".equals(str))
      {
        g = 2;
      }
      else if ("DESCRIPTIONS".equals(str))
      {
        g = 3;
      }
      else if ("CHAPTERS".equals(str))
      {
        g = 4;
      }
      else if ("METADATA".equals(str))
      {
        g = 5;
      }
      else
      {
        throw new JSONException("invalid subtype: " + str);
        label274:
        g = 0;
      }
    }
  }
  
  private void i()
  {
    a = 0L;
    b = 0;
    c = null;
    e = null;
    f = null;
    g = -1;
    h = null;
  }
  
  public final long a()
  {
    return a;
  }
  
  final void a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 5)) {
      throw new IllegalArgumentException("invalid subtype " + paramInt);
    }
    if ((paramInt != 0) && (b != 1)) {
      throw new IllegalArgumentException("subtypes are only valid for text tracks");
    }
    g = paramInt;
  }
  
  public final void a(String paramString)
  {
    c = paramString;
  }
  
  final void a(JSONObject paramJSONObject)
  {
    h = paramJSONObject;
  }
  
  public final int b()
  {
    return b;
  }
  
  final void b(String paramString)
  {
    e = paramString;
  }
  
  public final String c()
  {
    return c;
  }
  
  final void c(String paramString)
  {
    f = paramString;
  }
  
  public final String d()
  {
    return e;
  }
  
  public final String e()
  {
    return f;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      return bool1;
      bool1 = bool2;
    } while (!(paramObject instanceof h));
    paramObject = (h)paramObject;
    int i;
    if (h == null)
    {
      i = 1;
      label39:
      if (h != null) {
        break label214;
      }
    }
    label214:
    for (int j = 1;; j = 0)
    {
      bool1 = bool2;
      if (i != j) {
        break;
      }
      if ((h != null) && (h != null))
      {
        bool1 = bool2;
        if (!jy.a(h, h)) {
          break;
        }
      }
      bool1 = bool2;
      if (a != a) {
        break;
      }
      bool1 = bool2;
      if (b != b) {
        break;
      }
      bool1 = bool2;
      if (!f.a(c, c)) {
        break;
      }
      bool1 = bool2;
      if (!f.a(d, d)) {
        break;
      }
      bool1 = bool2;
      if (!f.a(e, e)) {
        break;
      }
      bool1 = bool2;
      if (!f.a(f, f)) {
        break;
      }
      bool1 = bool2;
      if (g != g) {
        break;
      }
      return true;
      i = 0;
      break label39;
    }
  }
  
  public final int f()
  {
    return g;
  }
  
  public final JSONObject g()
  {
    return h;
  }
  
  public final JSONObject h()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("trackId", a);
      switch (b)
      {
      case 1: 
        if (c != null) {
          localJSONObject.put("trackContentId", c);
        }
        if (d != null) {
          localJSONObject.put("trackContentType", d);
        }
        if (e != null) {
          localJSONObject.put("name", e);
        }
        if (!TextUtils.isEmpty(f)) {
          localJSONObject.put("language", f);
        }
        switch (g)
        {
        }
        break;
      }
      for (;;)
      {
        if (h == null) {
          break label282;
        }
        localJSONObject.put("customData", h);
        return localJSONObject;
        localJSONObject.put("type", "TEXT");
        break;
        localJSONObject.put("type", "AUDIO");
        break;
        localJSONObject.put("type", "VIDEO");
        break;
        localJSONObject.put("subtype", "SUBTITLES");
        continue;
        localJSONObject.put("subtype", "CAPTIONS");
        continue;
        localJSONObject.put("subtype", "DESCRIPTIONS");
        continue;
        localJSONObject.put("subtype", "CHAPTERS");
        continue;
        localJSONObject.put("subtype", "METADATA");
        continue;
        break;
      }
      label282:
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Long.valueOf(a), Integer.valueOf(b), c, d, e, f, Integer.valueOf(g), h });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */