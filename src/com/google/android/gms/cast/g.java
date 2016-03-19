package com.google.android.gms.cast;

import com.google.android.gms.cast.internal.f;
import org.json.JSONArray;
import org.json.JSONObject;

public final class g
{
  private int a = 0;
  private long b;
  private d c;
  private double d;
  private int e;
  private int f;
  private long g;
  private long h;
  private double i;
  private boolean j;
  private long[] k;
  private JSONObject l;
  private int m = 0;
  private int n = 0;
  private final g.a o = new g.a(this);
  
  public g(JSONObject paramJSONObject)
  {
    a(paramJSONObject, 0);
  }
  
  public final int a(JSONObject paramJSONObject, int paramInt)
  {
    int i6 = 2;
    int i5 = 1;
    long l1 = paramJSONObject.getLong("mediaSessionId");
    if (l1 != b) {
      b = l1;
    }
    for (int i2 = 1;; i2 = 0)
    {
      int i3 = i2;
      Object localObject;
      int i1;
      if (paramJSONObject.has("playerState"))
      {
        localObject = paramJSONObject.getString("playerState");
        if (!((String)localObject).equals("IDLE")) {
          break label464;
        }
        i1 = 1;
      }
      for (;;)
      {
        int i4 = i2;
        if (i1 != e)
        {
          e = i1;
          i4 = i2 | 0x2;
        }
        i3 = i4;
        if (i1 == 1)
        {
          i3 = i4;
          if (paramJSONObject.has("idleReason"))
          {
            localObject = paramJSONObject.getString("idleReason");
            if (!((String)localObject).equals("CANCELLED")) {
              break label512;
            }
            i1 = i6;
          }
        }
        for (;;)
        {
          label137:
          i3 = i4;
          if (i1 != f)
          {
            f = i1;
            i3 = i4 | 0x2;
          }
          i1 = i3;
          double d1;
          if (paramJSONObject.has("playbackRate"))
          {
            d1 = paramJSONObject.getDouble("playbackRate");
            i1 = i3;
            if (d != d1)
            {
              d = d1;
              i1 = i3 | 0x2;
            }
          }
          i3 = i1;
          if (paramJSONObject.has("currentTime"))
          {
            i3 = i1;
            if ((paramInt & 0x2) == 0)
            {
              l1 = f.a(paramJSONObject.getDouble("currentTime"));
              i3 = i1;
              if (l1 != g)
              {
                g = l1;
                i3 = i1 | 0x2;
              }
            }
          }
          i2 = i3;
          if (paramJSONObject.has("supportedMediaCommands"))
          {
            l1 = paramJSONObject.getLong("supportedMediaCommands");
            i2 = i3;
            if (l1 != h)
            {
              h = l1;
              i2 = i3 | 0x2;
            }
          }
          i1 = i2;
          if (paramJSONObject.has("volume"))
          {
            i1 = i2;
            if ((paramInt & 0x1) == 0)
            {
              localObject = paramJSONObject.getJSONObject("volume");
              d1 = ((JSONObject)localObject).getDouble("level");
              paramInt = i2;
              if (d1 != i)
              {
                i = d1;
                paramInt = i2 | 0x2;
              }
              boolean bool = ((JSONObject)localObject).getBoolean("muted");
              i1 = paramInt;
              if (bool != j)
              {
                j = bool;
                i1 = paramInt | 0x2;
              }
            }
          }
          localObject = null;
          long[] arrayOfLong;
          if (paramJSONObject.has("activeTrackIds"))
          {
            localObject = paramJSONObject.getJSONArray("activeTrackIds");
            i2 = ((JSONArray)localObject).length();
            arrayOfLong = new long[i2];
            paramInt = 0;
            for (;;)
            {
              if (paramInt < i2)
              {
                arrayOfLong[paramInt] = ((JSONArray)localObject).getLong(paramInt);
                paramInt += 1;
                continue;
                label464:
                if (((String)localObject).equals("PLAYING"))
                {
                  i1 = 2;
                  break;
                }
                if (((String)localObject).equals("PAUSED"))
                {
                  i1 = 3;
                  break;
                }
                if (!((String)localObject).equals("BUFFERING")) {
                  break label983;
                }
                i1 = 4;
                break;
                label512:
                if (((String)localObject).equals("INTERRUPTED"))
                {
                  i1 = 3;
                  break label137;
                }
                if (((String)localObject).equals("FINISHED"))
                {
                  i1 = 1;
                  break label137;
                }
                if (!((String)localObject).equals("ERROR")) {
                  break label977;
                }
                i1 = 4;
                break label137;
              }
            }
            if (k == null) {
              paramInt = 1;
            }
          }
          for (;;)
          {
            localObject = arrayOfLong;
            i2 = paramInt;
            if (paramInt != 0)
            {
              k = arrayOfLong;
              i2 = paramInt;
              localObject = arrayOfLong;
            }
            for (;;)
            {
              label593:
              paramInt = i1;
              if (i2 != 0)
              {
                k = ((long[])localObject);
                paramInt = i1 | 0x2;
              }
              i1 = paramInt;
              if (paramJSONObject.has("customData"))
              {
                l = paramJSONObject.getJSONObject("customData");
                i1 = paramInt | 0x2;
              }
              paramInt = i1;
              if (paramJSONObject.has("media"))
              {
                localObject = paramJSONObject.getJSONObject("media");
                c = new d((JSONObject)localObject);
                i1 |= 0x2;
                paramInt = i1;
                if (((JSONObject)localObject).has("metadata")) {
                  paramInt = i1 | 0x4;
                }
              }
              i1 = paramInt;
              if (paramJSONObject.has("currentItemId"))
              {
                i2 = paramJSONObject.getInt("currentItemId");
                i1 = paramInt;
                if (a != i2)
                {
                  a = i2;
                  i1 = paramInt | 0x2;
                }
              }
              paramInt = paramJSONObject.optInt("preloadedItemId", 0);
              i2 = i1;
              if (n != paramInt)
              {
                n = paramInt;
                i2 = i1 | 0x10;
              }
              i1 = paramJSONObject.optInt("loadingItemId", 0);
              paramInt = i2;
              if (m != i1)
              {
                m = i1;
                paramInt = i2 | 0x2;
              }
              i1 = e;
              i2 = m;
              if ((i1 == 1) && (i2 == 0))
              {
                i1 = i5;
                label830:
                if (i1 != 0) {
                  break label926;
                }
                i1 = paramInt;
                if (g.a.a(o, paramJSONObject)) {
                  i1 = paramInt | 0x8;
                }
              }
              label926:
              do
              {
                return i1;
                if (k.length != i2)
                {
                  paramInt = 1;
                  break;
                }
                paramInt = 0;
                for (;;)
                {
                  if (paramInt >= i2) {
                    break label972;
                  }
                  if (k[paramInt] != arrayOfLong[paramInt])
                  {
                    paramInt = 1;
                    break;
                  }
                  paramInt += 1;
                }
                if (k == null) {
                  break label966;
                }
                i2 = 1;
                break label593;
                i1 = 0;
                break label830;
                a = 0;
                m = 0;
                n = 0;
                i1 = paramInt;
              } while (o.a() <= 0);
              g.a.a(o);
              return paramInt | 0x8;
              label966:
              i2 = 0;
            }
            label972:
            paramInt = 0;
          }
          label977:
          i1 = 0;
        }
        label983:
        i1 = 0;
      }
    }
  }
  
  public final long a()
  {
    return b;
  }
  
  public final int b()
  {
    return e;
  }
  
  public final int c()
  {
    return f;
  }
  
  public final double d()
  {
    return d;
  }
  
  public final d e()
  {
    return c;
  }
  
  public final long f()
  {
    return g;
  }
  
  public final double g()
  {
    return i;
  }
  
  public final boolean h()
  {
    return j;
  }
  
  public final long[] i()
  {
    return k;
  }
  
  public final JSONObject j()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */