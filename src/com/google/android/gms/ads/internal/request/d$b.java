package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.b.b;
import com.google.android.gms.common.api.b.c;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.hb;

@fs
public final class d$b
  extends d
  implements b.b, b.c
{
  protected e a;
  private Context b;
  private AdRequestInfoParcel c;
  private final c.a d;
  private final Object e = new Object();
  private boolean f;
  
  public d$b(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, c.a parama)
  {
    super(paramAdRequestInfoParcel, parama);
    b = paramContext;
    c = paramAdRequestInfoParcel;
    d = parama;
    parama = ax.A;
    if (((Boolean)o.n().a(parama)).booleanValue()) {
      f = true;
    }
    for (parama = o.p().a();; parama = paramContext.getMainLooper())
    {
      a = new e(paramContext, parama, this, this, k.d);
      a.p();
      return;
    }
  }
  
  public final void a(int paramInt)
  {
    b.a(3);
  }
  
  public final void a(Bundle paramBundle)
  {
    e();
  }
  
  public final void a(ConnectionResult paramConnectionResult)
  {
    b.a(3);
    new d.a(b, c, d).e();
    paramConnectionResult = new Bundle();
    paramConnectionResult.putString("action", "gms_connection_failed_fallback_to_local");
    o.e();
    gw.b(b, c.k.b, "gmob-apps", paramConnectionResult, true);
  }
  
  public final void a_()
  {
    synchronized (e)
    {
      if ((a.l()) || (a.q())) {
        a.c();
      }
      Binder.flushPendingCommands();
      if (f)
      {
        o.p().b();
        f = false;
      }
      return;
    }
  }
  
  /* Error */
  public final j d()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 33	com/google/android/gms/ads/internal/request/d$b:e	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 91	com/google/android/gms/ads/internal/request/d$b:a	Lcom/google/android/gms/ads/internal/request/e;
    //   11: invokevirtual 165	com/google/android/gms/ads/internal/request/e:c_	()Lcom/google/android/gms/ads/internal/request/j;
    //   14: astore_2
    //   15: aload_1
    //   16: monitorexit
    //   17: aload_2
    //   18: areturn
    //   19: aload_1
    //   20: monitorexit
    //   21: aconst_null
    //   22: areturn
    //   23: astore_2
    //   24: aload_1
    //   25: monitorexit
    //   26: aload_2
    //   27: athrow
    //   28: astore_2
    //   29: goto -10 -> 19
    //   32: astore_2
    //   33: goto -14 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	b
    //   14	4	2	localj	j
    //   23	4	2	localObject2	Object
    //   28	1	2	localDeadObjectException	android.os.DeadObjectException
    //   32	1	2	localIllegalStateException	IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   7	15	23	finally
    //   15	17	23	finally
    //   19	21	23	finally
    //   24	26	23	finally
    //   7	15	28	android/os/DeadObjectException
    //   7	15	32	java/lang/IllegalStateException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */