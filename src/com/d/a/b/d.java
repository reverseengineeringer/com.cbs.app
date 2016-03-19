package com.d.a.b;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;

public class d
{
  public static final String a = d.class.getSimpleName();
  private static volatile d e;
  private e b;
  private f c;
  private final com.d.a.b.f.a d = new com.d.a.b.f.c();
  
  private static Handler a(c paramc)
  {
    Handler localHandler = paramc.r();
    if (paramc.s()) {
      paramc = null;
    }
    do
    {
      do
      {
        return paramc;
        paramc = localHandler;
      } while (localHandler != null);
      paramc = localHandler;
    } while (Looper.myLooper() != Looper.getMainLooper());
    return new Handler();
  }
  
  public static d a()
  {
    if (e == null) {}
    try
    {
      if (e == null) {
        e = new d();
      }
      return e;
    }
    finally {}
  }
  
  private void a(String paramString, com.d.a.b.e.a parama, c paramc, com.d.a.b.f.a parama1, com.d.a.b.f.b paramb)
  {
    b();
    if (parama1 == null) {
      parama1 = d;
    }
    for (;;)
    {
      if (paramc == null) {
        paramc = b.r;
      }
      for (;;)
      {
        if (TextUtils.isEmpty(paramString))
        {
          c.b(parama);
          parama.d();
          if (paramc.b()) {
            parama.a(paramc.b(b.a));
          }
          for (;;)
          {
            parama1.a(paramString, parama.d(), null);
            return;
            parama.a(null);
          }
        }
        Object localObject = com.d.a.c.a.a(parama, b.a());
        String str = paramString + "_" + ((com.d.a.b.a.e)localObject).a() + "x" + ((com.d.a.b.a.e)localObject).b();
        c.a(parama, str);
        parama.d();
        paramb = (Bitmap)b.n.a(str);
        if ((paramb != null) && (!paramb.isRecycled()))
        {
          com.d.a.c.c.a("Load image from memory cache [%s]", new Object[] { str });
          if (paramc.e())
          {
            paramString = new g(paramString, parama, (com.d.a.b.a.e)localObject, str, paramc, parama1, null, c.a(paramString));
            paramString = new i(c, paramb, paramString, a(paramc));
            if (paramc.s())
            {
              paramString.run();
              return;
            }
            c.a(paramString);
            return;
          }
          paramc = paramc.q();
          localObject = com.d.a.b.a.f.c;
          paramc.a(paramb, parama);
          parama1.a(paramString, parama.d(), paramb);
          return;
        }
        if (paramc.a()) {
          parama.a(paramc.a(b.a));
        }
        for (;;)
        {
          paramString = new g(paramString, parama, (com.d.a.b.a.e)localObject, str, paramc, parama1, null, c.a(paramString));
          paramString = new h(c, paramString, a(paramc));
          if (!paramc.s()) {
            break;
          }
          paramString.run();
          return;
          if (paramc.g()) {
            parama.a(null);
          }
        }
        c.a(paramString);
        return;
      }
    }
  }
  
  private void b()
  {
    if (b == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
  }
  
  public final void a(e parame)
  {
    if (parame == null) {
      try
      {
        throw new IllegalArgumentException("ImageLoader configuration can not be initialized with null");
      }
      finally {}
    }
    if (b == null)
    {
      com.d.a.c.c.a("Initialize ImageLoader with configuration", new Object[0]);
      c = new f(parame);
      b = parame;
    }
    for (;;)
    {
      return;
      com.d.a.c.c.c("Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
    }
  }
  
  public final void a(String paramString, ImageView paramImageView, c paramc)
  {
    a(paramString, new com.d.a.b.e.b(paramImageView), paramc, null, null);
  }
  
  public final void a(String paramString, ImageView paramImageView, c paramc, com.d.a.b.f.a parama)
  {
    a(paramString, new com.d.a.b.e.b(paramImageView), paramc, parama, null);
  }
  
  public final void a(String paramString, c paramc, com.d.a.b.f.a parama)
  {
    b(paramString, paramc, parama);
  }
  
  public final void b(String paramString, c paramc, com.d.a.b.f.a parama)
  {
    b();
    com.d.a.b.a.e locale = b.a();
    if (paramc == null) {
      paramc = b.r;
    }
    for (;;)
    {
      a(paramString, new com.d.a.b.e.c(paramString, locale, com.d.a.b.a.h.b), paramc, parama, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */