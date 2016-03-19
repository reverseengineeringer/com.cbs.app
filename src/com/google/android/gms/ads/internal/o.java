package com.google.android.gms.ads.internal;

import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.overlay.d;
import com.google.android.gms.ads.internal.purchase.i;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.cs;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.fh;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.ga;
import com.google.android.gms.internal.gm;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gx;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.hv;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.jv;

@fs
public final class o
{
  private static final Object a = new Object();
  private static o b;
  private final com.google.android.gms.ads.internal.request.a c = new com.google.android.gms.ads.internal.request.a();
  private final com.google.android.gms.ads.internal.overlay.a d = new com.google.android.gms.ads.internal.overlay.a();
  private final d e = new d();
  private final fh f = new fh();
  private final gw g = new gw();
  private final hv h = new hv();
  private final gx i = gx.a(Build.VERSION.SDK_INT);
  private final gm j = new gm();
  private final ju k = new jv();
  private final bb l = new bb();
  private final ga m = new ga();
  private final av n = new av();
  private final au o = new au();
  private final aw p = new aw();
  private final i q = new i();
  private final hb r = new hb();
  private final di s = new di();
  private final cs t = new cs();
  
  static
  {
    o localo = new o();
    synchronized (a)
    {
      b = localo;
      return;
    }
  }
  
  public static com.google.android.gms.ads.internal.request.a a()
  {
    return sc;
  }
  
  public static com.google.android.gms.ads.internal.overlay.a b()
  {
    return sd;
  }
  
  public static d c()
  {
    return se;
  }
  
  public static fh d()
  {
    return sf;
  }
  
  public static gw e()
  {
    return sg;
  }
  
  public static hv f()
  {
    return sh;
  }
  
  public static gx g()
  {
    return si;
  }
  
  public static gm h()
  {
    return sj;
  }
  
  public static ju i()
  {
    return sk;
  }
  
  public static bb j()
  {
    return sl;
  }
  
  public static ga k()
  {
    return sm;
  }
  
  public static av l()
  {
    return sn;
  }
  
  public static au m()
  {
    return so;
  }
  
  public static aw n()
  {
    return sp;
  }
  
  public static i o()
  {
    return sq;
  }
  
  public static hb p()
  {
    return sr;
  }
  
  public static di q()
  {
    return ss;
  }
  
  public static cs r()
  {
    return st;
  }
  
  private static o s()
  {
    synchronized (a)
    {
      o localo = b;
      return localo;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */