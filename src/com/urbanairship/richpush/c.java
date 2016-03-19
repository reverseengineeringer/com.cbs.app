package com.urbanairship.richpush;

import android.os.Bundle;
import com.urbanairship.d.h;
import com.urbanairship.json.JsonValue;
import com.urbanairship.p;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map.Entry;

public final class c
  implements Comparable<c>
{
  boolean a = false;
  boolean b;
  private boolean c;
  private Bundle d;
  private long e;
  private Long f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private JsonValue l;
  
  static c a(JsonValue paramJsonValue, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = paramJsonValue.f();
    if (localObject == null) {
      return null;
    }
    c localc = new c();
    g = ((com.urbanairship.json.c)localObject).c("message_id").a();
    h = ((com.urbanairship.json.c)localObject).c("message_url").a();
    i = ((com.urbanairship.json.c)localObject).c("message_body_url").a();
    j = ((com.urbanairship.json.c)localObject).c("message_read_url").a();
    k = ((com.urbanairship.json.c)localObject).c("title").a();
    c = ((com.urbanairship.json.c)localObject).c("unread").a(true);
    l = paramJsonValue;
    paramJsonValue = ((com.urbanairship.json.c)localObject).c("message_sent").a();
    if (h.a(paramJsonValue))
    {
      e = System.currentTimeMillis();
      paramJsonValue = ((com.urbanairship.json.c)localObject).c("message_expiry").a();
      if (!h.a(paramJsonValue)) {
        f = Long.valueOf(com.urbanairship.d.c.a(paramJsonValue, Long.MAX_VALUE));
      }
      d = new Bundle();
      paramJsonValue = ((com.urbanairship.json.c)localObject).c("extra").f();
      if (paramJsonValue != null) {
        paramJsonValue = paramJsonValue.iterator();
      }
    }
    else
    {
      for (;;)
      {
        if (!paramJsonValue.hasNext()) {
          break label315;
        }
        localObject = (Map.Entry)paramJsonValue.next();
        if (((JsonValue)((Map.Entry)localObject).getValue()).h())
        {
          d.putString((String)((Map.Entry)localObject).getKey(), ((JsonValue)((Map.Entry)localObject).getValue()).a());
          continue;
          e = com.urbanairship.d.c.a(paramJsonValue, System.currentTimeMillis());
          break;
        }
        d.putString((String)((Map.Entry)localObject).getKey(), ((JsonValue)((Map.Entry)localObject).getValue()).toString());
      }
    }
    label315:
    a = paramBoolean2;
    b = paramBoolean1;
    return localc;
  }
  
  public final String a()
  {
    return g;
  }
  
  public final String b()
  {
    return i;
  }
  
  public final String c()
  {
    return k;
  }
  
  public final Date d()
  {
    return new Date(e);
  }
  
  public final long e()
  {
    return e;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramObject == null) || (!(paramObject instanceof c))) {
      bool1 = false;
    }
    do
    {
      return bool1;
      paramObject = (c)paramObject;
      bool1 = bool2;
    } while (this == paramObject);
    if (g == null) {
      if (g == null)
      {
        if (i != null) {
          break label165;
        }
        if (i == null)
        {
          label57:
          if (j != null) {
            break label182;
          }
          if (j == null)
          {
            label71:
            if (h != null) {
              break label199;
            }
            if (h == null)
            {
              label85:
              if (d != null) {
                break label216;
              }
              if (d != null) {}
            }
          }
        }
      }
    }
    for (;;)
    {
      if ((b == b) && (c == c) && (a == a))
      {
        bool1 = bool2;
        if (e == e) {
          break;
        }
      }
      label165:
      label182:
      label199:
      label216:
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return false;
              } while (!g.equals(g));
              break;
            } while (!i.equals(i));
            break label57;
          } while (!j.equals(j));
          break label71;
        } while (!h.equals(h));
        break label85;
      } while (!d.equals(d));
    }
  }
  
  public final void f()
  {
    if (b)
    {
      b = false;
      HashSet localHashSet = new HashSet();
      localHashSet.add(g);
      p.a().n().c().a(localHashSet);
    }
  }
  
  public final int hashCode()
  {
    int i6 = 0;
    int m;
    int n;
    label21:
    int i1;
    label30:
    int i2;
    label40:
    int i3;
    label50:
    int i4;
    label60:
    int i5;
    if (g == null)
    {
      m = 0;
      if (i != null) {
        break label148;
      }
      n = 0;
      if (j != null) {
        break label159;
      }
      i1 = 0;
      if (h != null) {
        break label170;
      }
      i2 = 0;
      if (d != null) {
        break label182;
      }
      i3 = 0;
      if (!b) {
        break label194;
      }
      i4 = 0;
      if (!c) {
        break label200;
      }
      i5 = 0;
      label70:
      if (!a) {
        break label206;
      }
    }
    for (;;)
    {
      return ((i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + 629) * 37) * 37) * 37) * 37) * 37) * 37) * 37 + i6) * 37 + Long.valueOf(e).hashCode();
      m = g.hashCode();
      break;
      label148:
      n = i.hashCode();
      break label21;
      label159:
      i1 = j.hashCode();
      break label30;
      label170:
      i2 = h.hashCode();
      break label40;
      label182:
      i3 = d.hashCode();
      break label50;
      label194:
      i4 = 1;
      break label60;
      label200:
      i5 = 1;
      break label70;
      label206:
      i6 = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */