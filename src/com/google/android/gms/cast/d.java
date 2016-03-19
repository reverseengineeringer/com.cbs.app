package com.google.android.gms.cast;

import android.text.TextUtils;
import com.google.android.gms.cast.internal.f;
import com.google.android.gms.internal.jy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class d
{
  private final String a;
  private int b;
  private String c;
  private e d;
  private long e;
  private List<h> f;
  private j g;
  private JSONObject h;
  
  d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("content ID cannot be null or empty");
    }
    a = paramString;
    b = -1;
    e = -1L;
  }
  
  d(JSONObject paramJSONObject)
  {
    a = paramJSONObject.getString("contentId");
    Object localObject1 = paramJSONObject.getString("streamType");
    if ("NONE".equals(localObject1)) {
      b = 0;
    }
    Object localObject2;
    for (;;)
    {
      c = paramJSONObject.getString("contentType");
      if (paramJSONObject.has("metadata"))
      {
        localObject1 = paramJSONObject.getJSONObject("metadata");
        d = new e(((JSONObject)localObject1).getInt("metadataType"));
        d.a((JSONObject)localObject1);
      }
      e = -1L;
      if ((paramJSONObject.has("duration")) && (!paramJSONObject.isNull("duration")))
      {
        double d1 = paramJSONObject.optDouble("duration", 0.0D);
        if ((!Double.isNaN(d1)) && (!Double.isInfinite(d1))) {
          e = f.a(d1);
        }
      }
      if (!paramJSONObject.has("tracks")) {
        break;
      }
      f = new ArrayList();
      localObject1 = paramJSONObject.getJSONArray("tracks");
      while (i < ((JSONArray)localObject1).length())
      {
        localObject2 = new h(((JSONArray)localObject1).getJSONObject(i));
        f.add(localObject2);
        i += 1;
      }
      if ("BUFFERED".equals(localObject1)) {
        b = 1;
      } else if ("LIVE".equals(localObject1)) {
        b = 2;
      } else {
        b = -1;
      }
    }
    f = null;
    if (paramJSONObject.has("textTrackStyle"))
    {
      localObject1 = paramJSONObject.getJSONObject("textTrackStyle");
      localObject2 = new j();
      ((j)localObject2).a((JSONObject)localObject1);
    }
    for (g = ((j)localObject2);; g = null)
    {
      h = paramJSONObject.optJSONObject("customData");
      return;
    }
  }
  
  public final String a()
  {
    return a;
  }
  
  final void a(int paramInt)
  {
    if ((paramInt < -1) || (paramInt > 2)) {
      throw new IllegalArgumentException("invalid stream type");
    }
    b = paramInt;
  }
  
  final void a(long paramLong)
  {
    if ((paramLong < 0L) && (paramLong != -1L)) {
      throw new IllegalArgumentException("Invalid stream duration");
    }
    e = paramLong;
  }
  
  final void a(e parame)
  {
    d = parame;
  }
  
  public final void a(j paramj)
  {
    g = paramj;
  }
  
  final void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("content type cannot be null or empty");
    }
    c = paramString;
  }
  
  final void a(List<h> paramList)
  {
    f = paramList;
  }
  
  final void a(JSONObject paramJSONObject)
  {
    h = paramJSONObject;
  }
  
  public final int b()
  {
    return b;
  }
  
  public final String c()
  {
    return c;
  }
  
  public final e d()
  {
    return d;
  }
  
  public final long e()
  {
    return e;
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
    } while (!(paramObject instanceof d));
    paramObject = (d)paramObject;
    int i;
    if (h == null)
    {
      i = 1;
      label39:
      if (h != null) {
        break label181;
      }
    }
    label181:
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
      if (!f.a(a, a)) {
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
      if (e != e) {
        break;
      }
      return true;
      i = 0;
      break label39;
    }
  }
  
  public final List<h> f()
  {
    return f;
  }
  
  public final JSONObject g()
  {
    return h;
  }
  
  final void h()
  {
    if (TextUtils.isEmpty(a)) {
      throw new IllegalArgumentException("content ID cannot be null or empty");
    }
    if (TextUtils.isEmpty(c)) {
      throw new IllegalArgumentException("content type cannot be null or empty");
    }
    if (b == -1) {
      throw new IllegalArgumentException("a valid stream type must be specified");
    }
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, Integer.valueOf(b), c, d, Long.valueOf(e), String.valueOf(h) });
  }
  
  public final JSONObject i()
  {
    JSONObject localJSONObject = new JSONObject();
    for (;;)
    {
      try
      {
        localJSONObject.put("contentId", a);
        switch (b)
        {
        default: 
          localJSONObject.put("streamType", localObject);
          if (c != null) {
            localJSONObject.put("contentType", c);
          }
          if (d != null) {
            localJSONObject.put("metadata", d.a());
          }
          if (e <= -1L)
          {
            localJSONObject.put("duration", JSONObject.NULL);
            if (f == null) {
              continue;
            }
            localObject = new JSONArray();
            Iterator localIterator = f.iterator();
            if (localIterator.hasNext())
            {
              ((JSONArray)localObject).put(((h)localIterator.next()).h());
              continue;
            }
          }
          else
          {
            localJSONObject.put("duration", f.a(e));
            continue;
          }
          localJSONObject.put("tracks", localObject);
          if (g != null) {
            localJSONObject.put("textTrackStyle", g.f());
          }
          if (h == null) {
            break label239;
          }
          localJSONObject.put("customData", h);
          return localJSONObject;
        }
      }
      catch (JSONException localJSONException) {}
      Object localObject = "NONE";
      continue;
      label239:
      return localJSONObject;
      String str = "BUFFERED";
      continue;
      str = "LIVE";
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */