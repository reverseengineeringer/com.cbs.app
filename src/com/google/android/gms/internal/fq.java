package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.formats.f;
import java.util.concurrent.Future;

@fs
public final class fq
  implements fn.a<f>
{
  private final boolean a;
  
  public fq(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  private static <K, V> jp<K, V> a(jp<K, Future<V>> paramjp)
  {
    jp localjp = new jp();
    int i = 0;
    while (i < paramjp.size())
    {
      localjp.put(paramjp.b(i), ((Future)paramjp.c(i)).get());
      i += 1;
    }
    return localjp;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */