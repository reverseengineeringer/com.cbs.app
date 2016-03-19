package com.urbanairship.push.iam;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.d.h;
import com.urbanairship.j;
import com.urbanairship.json.JsonValue;
import com.urbanairship.json.a;
import com.urbanairship.json.d;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class InAppMessage
  implements Parcelable, d
{
  public static final Parcelable.Creator<InAppMessage> CREATOR = new InAppMessage.1();
  private final long a;
  private final String b;
  private final String c;
  private final Long d;
  private final Integer e;
  private final Integer f;
  private final int g;
  private final String h;
  private final Map<String, ActionValue> i;
  private final com.urbanairship.json.c j;
  private final Map<String, Map<String, ActionValue>> k;
  
  private InAppMessage(Parcel paramParcel)
  {
    b = paramParcel.readString();
    c = paramParcel.readString();
    a = paramParcel.readLong();
    g = paramParcel.readInt();
    Object localObject1;
    if (paramParcel.readByte() == 1) {
      localObject1 = Long.valueOf(paramParcel.readLong());
    }
    for (;;)
    {
      d = ((Long)localObject1);
      if (paramParcel.readByte() == 1)
      {
        localObject1 = Integer.valueOf(paramParcel.readInt());
        label73:
        e = ((Integer)localObject1);
        if (paramParcel.readByte() != 1) {
          break label197;
        }
        localObject1 = Integer.valueOf(paramParcel.readInt());
        f = ((Integer)localObject1);
      }
      try
      {
        localObject1 = JsonValue.b(paramParcel.readString()).f();
        Object localObject3 = localObject1;
        if (localObject1 == null) {
          localObject3 = new com.urbanairship.json.c(null);
        }
        j = ((com.urbanairship.json.c)localObject3);
        h = paramParcel.readString();
        k = new HashMap();
        paramParcel.readMap(k, ActionValue.class.getClassLoader());
        i = new HashMap();
        paramParcel.readMap(i, ActionValue.class.getClassLoader());
        return;
        localObject1 = null;
        continue;
        localObject1 = null;
        break label73;
        label197:
        localObject1 = null;
      }
      catch (a locala)
      {
        for (;;)
        {
          j.a("InAppMessage - unable to parse extras from parcel.");
          Object localObject2 = null;
        }
      }
    }
  }
  
  private InAppMessage(InAppMessage.a parama)
  {
    long l;
    if (InAppMessage.a.a(parama) == null)
    {
      l = System.currentTimeMillis() + 2592000000L;
      a = l;
      b = InAppMessage.a.b(parama);
      if (InAppMessage.a.c(parama) != null) {
        break label145;
      }
      localObject = new com.urbanairship.json.c(null);
      label49:
      j = ((com.urbanairship.json.c)localObject);
      c = InAppMessage.a.d(parama);
      d = InAppMessage.a.e(parama);
      h = InAppMessage.a.f(parama);
      k = InAppMessage.a.g(parama);
      if (InAppMessage.a.h(parama) != null) {
        break label154;
      }
    }
    label145:
    label154:
    for (Object localObject = new HashMap();; localObject = InAppMessage.a.h(parama))
    {
      i = ((Map)localObject);
      g = InAppMessage.a.i(parama);
      e = InAppMessage.a.j(parama);
      f = InAppMessage.a.k(parama);
      return;
      l = InAppMessage.a.a(parama).longValue();
      break;
      localObject = InAppMessage.a.c(parama);
      break label49;
    }
  }
  
  public static InAppMessage b(String paramString)
  {
    Object localObject1 = JsonValue.b(paramString).f();
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = ((com.urbanairship.json.c)localObject1).c("display").f();
    com.urbanairship.json.c localc = ((com.urbanairship.json.c)localObject1).c("actions").f();
    if ((localObject2 == null) || (!"banner".equals(((com.urbanairship.json.c)localObject2).c("type").a())))
    {
      j.a("InAppMessage - Unable to parse json: " + paramString);
      return null;
    }
    paramString = new InAppMessage.a();
    paramString.a(((com.urbanairship.json.c)localObject1).c("id").a()).a(((com.urbanairship.json.c)localObject1).c("extra").f()).c(((com.urbanairship.json.c)localObject2).c("alert").a()).a(c(((com.urbanairship.json.c)localObject2).c("primary_color").a())).b(c(((com.urbanairship.json.c)localObject2).c("secondary_color").a()));
    long l;
    if (((com.urbanairship.json.c)localObject2).a("duration_ms"))
    {
      l = ((com.urbanairship.json.c)localObject2).b("duration_ms").a(0L);
      if (l > 0L) {
        paramString.b(Long.valueOf(l));
      }
      if (!((com.urbanairship.json.c)localObject1).a("expiry_ms")) {
        break label393;
      }
      paramString.a(Long.valueOf(((com.urbanairship.json.c)localObject1).b("expiry_ms").a(System.currentTimeMillis() + 2592000000L)));
      label236:
      if (!"top".equalsIgnoreCase(((com.urbanairship.json.c)localObject2).c("position").a())) {
        break label436;
      }
      paramString.a(1);
    }
    for (;;)
    {
      label262:
      if (localc != null)
      {
        localObject2 = localc.c("on_click").f();
        Object localObject3;
        if (localObject2 != null)
        {
          localObject1 = new HashMap();
          localObject2 = ((com.urbanairship.json.c)localObject2).iterator();
          for (;;)
          {
            if (((Iterator)localObject2).hasNext())
            {
              localObject3 = (Map.Entry)((Iterator)localObject2).next();
              ((Map)localObject1).put(((Map.Entry)localObject3).getKey(), new ActionValue((JsonValue)((Map.Entry)localObject3).getValue()));
              continue;
              l = ((com.urbanairship.json.c)localObject2).c("duration").a(0L);
              if (l <= 0L) {
                break;
              }
              paramString.b(Long.valueOf(TimeUnit.SECONDS.toMillis(l)));
              break;
              label393:
              if (!((com.urbanairship.json.c)localObject1).a("expiry")) {
                break label236;
              }
              paramString.a(Long.valueOf(com.urbanairship.d.c.a(((com.urbanairship.json.c)localObject1).c("expiry").a(), System.currentTimeMillis() + 2592000000L)));
              break label236;
              label436:
              paramString.a(0);
              break label262;
            }
          }
          paramString.a((Map)localObject1);
        }
        paramString.b(localc.c("button_group").a());
        localc = localc.c("button_actions").f();
        if (localc != null)
        {
          localObject1 = localc.a().iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Map.Entry)((Iterator)localObject1).next()).getKey();
            Object localObject4 = localc.c((String)localObject2).f();
            localObject3 = new HashMap();
            localObject4 = ((com.urbanairship.json.c)localObject4).a().iterator();
            while (((Iterator)localObject4).hasNext())
            {
              Map.Entry localEntry = (Map.Entry)((Iterator)localObject4).next();
              ((Map)localObject3).put(localEntry.getKey(), new ActionValue((JsonValue)localEntry.getValue()));
            }
            paramString.a((String)localObject2, (Map)localObject3);
          }
        }
      }
    }
    return paramString.a();
  }
  
  private static Integer c(String paramString)
  {
    if (h.a(paramString)) {
      return null;
    }
    try
    {
      int m = Color.parseColor(paramString);
      return Integer.valueOf(m);
    }
    catch (IllegalArgumentException paramString) {}
    return null;
  }
  
  public final long a()
  {
    return a;
  }
  
  public final Map<String, ActionValue> a(String paramString)
  {
    if (k.containsKey(paramString)) {
      return Collections.unmodifiableMap((Map)k.get(paramString));
    }
    return null;
  }
  
  public final boolean b()
  {
    return System.currentTimeMillis() > a;
  }
  
  public final String c()
  {
    return b;
  }
  
  public final String d()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public final JsonValue e()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("id", b);
    localHashMap1.put("expiry_ms", Long.valueOf(a));
    localHashMap1.put("extra", j);
    HashMap localHashMap2 = new HashMap();
    localHashMap1.put("display", localHashMap2);
    localHashMap2.put("type", "banner");
    localHashMap2.put("alert", c);
    if (g == 1) {}
    for (Object localObject = "top";; localObject = "bottom")
    {
      localHashMap2.put("position", localObject);
      if (d != null) {
        localHashMap2.put("duration_ms", d);
      }
      if (e != null) {
        localHashMap2.put("primary_color", String.format(Locale.US, "#%06X", new Object[] { Integer.valueOf(e.intValue() & 0xFFFFFF) }));
      }
      if (f != null) {
        localHashMap2.put("secondary_color", String.format(Locale.US, "#%06X", new Object[] { Integer.valueOf(f.intValue() & 0xFFFFFF) }));
      }
      localObject = new HashMap();
      localHashMap1.put("actions", localObject);
      ((Map)localObject).put("on_click", i);
      ((Map)localObject).put("button_group", h);
      ((Map)localObject).put("button_actions", k);
      return JsonValue.a(localHashMap1, JsonValue.a);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    label49:
    label63:
    label123:
    label137:
    label193:
    label210:
    label227:
    label244:
    label261:
    label276:
    for (;;)
    {
      return true;
      if (!(paramObject instanceof InAppMessage)) {
        return false;
      }
      paramObject = (InAppMessage)paramObject;
      if (b == null) {
        if (b == null)
        {
          if (c != null) {
            break label193;
          }
          if (c == null)
          {
            if (h != null) {
              break label210;
            }
            if (h == null) {
              if ((j.equals(j)) && (i.equals(i)) && (k.equals(k)))
              {
                if (e != null) {
                  break label227;
                }
                if (e == null)
                {
                  if (f != null) {
                    break label244;
                  }
                  if (f == null)
                  {
                    if (d != null) {
                      break label261;
                    }
                    if (d != null) {}
                  }
                }
              }
            }
          }
        }
      }
      for (;;)
      {
        if ((g == g) && (a == a)) {
          break label276;
        }
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
                  do
                  {
                    return false;
                  } while (!b.equals(b));
                  break;
                } while (!c.equals(c));
                break label49;
              } while (!h.equals(h));
              break label63;
            } while (!e.equals(e));
            break label123;
          } while (!f.equals(f));
          break label137;
        } while (!d.equals(d));
      }
    }
  }
  
  public final Map<String, ActionValue> f()
  {
    return Collections.unmodifiableMap(i);
  }
  
  public final String g()
  {
    return h;
  }
  
  public final Long h()
  {
    return d;
  }
  
  public int hashCode()
  {
    int i4 = 0;
    int m;
    int n;
    label21:
    int i1;
    label30:
    int i5;
    int i6;
    int i7;
    int i2;
    label71:
    int i3;
    if (b == null)
    {
      m = 0;
      if (c != null) {
        break label173;
      }
      n = 0;
      if (h != null) {
        break label184;
      }
      i1 = 0;
      i5 = j.hashCode();
      i6 = i.hashCode();
      i7 = k.hashCode();
      if (f != null) {
        break label195;
      }
      i2 = 0;
      if (e != null) {
        break label207;
      }
      i3 = 0;
      label81:
      if (d != null) {
        break label219;
      }
    }
    for (;;)
    {
      return (((i3 + (i2 + ((((i1 + (n + (m + 403) * 31) * 31) * 31 + i5) * 31 + i6) * 31 + i7) * 31) * 31) * 31 + i4) * 31 + g) * 31 + Long.valueOf(a).hashCode();
      m = b.hashCode();
      break;
      label173:
      n = c.hashCode();
      break label21;
      label184:
      i1 = h.hashCode();
      break label30;
      label195:
      i2 = f.intValue();
      break label71;
      label207:
      i3 = e.intValue();
      break label81;
      label219:
      i4 = d.hashCode();
    }
  }
  
  public final int i()
  {
    return g;
  }
  
  public final Integer j()
  {
    return e;
  }
  
  public final Integer k()
  {
    return f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeLong(a);
    paramParcel.writeInt(g);
    if (d == null)
    {
      paramParcel.writeByte((byte)0);
      if (e != null) {
        break label123;
      }
      paramParcel.writeByte((byte)0);
      label56:
      if (f != null) {
        break label142;
      }
      paramParcel.writeByte((byte)0);
    }
    for (;;)
    {
      paramParcel.writeString(j.toString());
      paramParcel.writeString(h);
      paramParcel.writeMap(k);
      paramParcel.writeMap(i);
      return;
      paramParcel.writeByte((byte)1);
      paramParcel.writeLong(d.longValue());
      break;
      label123:
      paramParcel.writeByte((byte)1);
      paramParcel.writeInt(e.intValue());
      break label56;
      label142:
      paramParcel.writeByte((byte)1);
      paramParcel.writeInt(f.intValue());
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */