package com.d.a.b;

import android.graphics.Bitmap;
import android.os.Handler;
import com.d.a.b.g.a;

final class i
  implements Runnable
{
  private final f a;
  private final Bitmap b;
  private final g c;
  private final Handler d;
  
  public i(f paramf, Bitmap paramBitmap, g paramg, Handler paramHandler)
  {
    a = paramf;
    b = paramBitmap;
    c = paramg;
    d = paramHandler;
  }
  
  public final void run()
  {
    com.d.a.c.c.a("PostProcess image before displaying [%s]", new Object[] { c.b });
    h.a(new b(c.e.p().a(), c, a, com.d.a.b.a.f.c), c.e.s(), d, a);
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */