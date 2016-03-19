package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.o;
import java.util.WeakHashMap;

@fs
public final class ga
{
  private WeakHashMap<Context, ga.a> a = new WeakHashMap();
  
  public final fz a(Context paramContext)
  {
    Object localObject = (ga.a)a.get(paramContext);
    int i;
    if (localObject != null)
    {
      long l = a;
      at localat = ax.ad;
      if (l + ((Long)o.n().a(localat)).longValue() < o.i().a())
      {
        i = 1;
        if (i != 0) {
          break label130;
        }
        localat = ax.ac;
        if (!((Boolean)o.n().a(localat)).booleanValue()) {
          break label130;
        }
      }
    }
    label130:
    for (localObject = new fz.a(paramContext, b).a();; localObject = new fz.a(paramContext).a())
    {
      a.put(paramContext, new ga.a(this, (fz)localObject));
      return (fz)localObject;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */