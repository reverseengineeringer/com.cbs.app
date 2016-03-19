package com.google.android.gms.internal;

import java.util.concurrent.Future;

@fs
public abstract class gr
  implements fi<Future>
{
  private final Runnable a = new gr.1(this);
  private volatile Thread b;
  private boolean c;
  
  public gr()
  {
    c = false;
  }
  
  public gr(byte paramByte)
  {
    c = true;
  }
  
  public abstract void a();
  
  public abstract void b();
  
  public final void c()
  {
    b();
    if (b != null) {
      b.interrupt();
    }
  }
  
  public final Future e()
  {
    if (c) {
      return gv.a(1, a);
    }
    return gv.a(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */