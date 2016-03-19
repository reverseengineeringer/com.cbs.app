package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.o;

@fs
public final class gp
{
  private final Object a = new Object();
  private int b;
  private int c;
  private final gm d;
  private final String e;
  
  private gp(gm paramgm, String paramString)
  {
    d = paramgm;
    e = paramString;
  }
  
  public gp(String paramString)
  {
    this(o.h(), paramString);
  }
  
  public final Bundle a()
  {
    synchronized (a)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("pmnli", b);
      localBundle.putInt("pmnll", c);
      return localBundle;
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    synchronized (a)
    {
      b = paramInt1;
      c = paramInt2;
      d.a(e, this);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */