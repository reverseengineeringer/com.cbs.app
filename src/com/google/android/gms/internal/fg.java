package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;

@fs
public abstract class fg
  extends gr
{
  protected final fh.a a;
  protected final Context b;
  protected final Object c = new Object();
  protected final Object d = new Object();
  protected final gk.a e;
  protected AdResponseParcel f;
  
  protected fg(Context paramContext, gk.a parama, fh.a parama1)
  {
    super((byte)0);
    b = paramContext;
    e = parama;
    f = b;
    a = parama1;
  }
  
  protected abstract gk a(int paramInt);
  
  public final void a()
  {
    for (;;)
    {
      int i;
      synchronized (c)
      {
        b.a(3);
        i = e.e;
        try
        {
          a(SystemClock.elapsedRealtime());
          gk localgk = a(i);
          gw.a.post(new fg.2(this, localgk));
          return;
        }
        catch (fg.a locala)
        {
          i = locala.a();
          if (i == 3) {
            continue;
          }
        }
        if (i == -1)
        {
          locala.getMessage();
          b.a(4);
          if (f == null)
          {
            f = new AdResponseParcel(i);
            gw.a.post(new fg.1(this));
          }
        }
        else
        {
          locala.getMessage();
          b.a(5);
        }
      }
      f = new AdResponseParcel(i, f.k);
    }
  }
  
  protected abstract void a(long paramLong);
  
  protected final void a(gk paramgk)
  {
    a.b(paramgk);
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */