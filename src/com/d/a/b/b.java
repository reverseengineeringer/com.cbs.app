package com.d.a.b;

import android.graphics.Bitmap;

final class b
  implements Runnable
{
  private final Bitmap a;
  private final String b;
  private final com.d.a.b.e.a c;
  private final String d;
  private final com.d.a.b.c.a e;
  private final com.d.a.b.f.a f;
  private final f g;
  private final com.d.a.b.a.f h;
  
  public b(Bitmap paramBitmap, g paramg, f paramf, com.d.a.b.a.f paramf1)
  {
    a = paramBitmap;
    b = a;
    c = c;
    d = b;
    e = e.q();
    f = f;
    g = paramf;
    h = paramf1;
  }
  
  public final void run()
  {
    if (c.e())
    {
      com.d.a.c.c.a("ImageAware was collected by GC. Task is cancelled. [%s]", new Object[] { d });
      localObject = f;
      c.d();
      ((com.d.a.b.f.a)localObject).b();
      return;
    }
    Object localObject = g.a(c);
    if (!d.equals(localObject)) {}
    for (int i = 1; i != 0; i = 0)
    {
      com.d.a.c.c.a("ImageAware is reused for another image. Task is cancelled. [%s]", new Object[] { d });
      localObject = f;
      c.d();
      ((com.d.a.b.f.a)localObject).b();
      return;
    }
    com.d.a.c.c.a("Display image in ImageAware (loaded from %1$s) [%2$s]", new Object[] { h, d });
    e.a(a, c);
    g.b(c);
    f.a(b, c.d(), a);
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */