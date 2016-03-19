package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.internal.ev.a;
import com.google.android.gms.internal.fs;

@fs
public final class g
  extends ev.a
  implements ServiceConnection
{
  b a;
  private boolean b = false;
  private Context c;
  private int d;
  private Intent e;
  private f f;
  private String g;
  
  public g(Context paramContext, String paramString, boolean paramBoolean, int paramInt, Intent paramIntent, f paramf)
  {
    g = paramString;
    d = paramInt;
    e = paramIntent;
    b = paramBoolean;
    c = paramContext;
    f = paramf;
  }
  
  public final boolean a()
  {
    return b;
  }
  
  public final String b()
  {
    return g;
  }
  
  public final Intent c()
  {
    return e;
  }
  
  public final int d()
  {
    return d;
  }
  
  public final void e()
  {
    o.o();
    int i = i.a(e);
    if ((d != -1) || (i != 0)) {
      return;
    }
    a = new b(c);
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    localIntent.setPackage("com.android.vending");
    com.google.android.gms.common.stats.b.a().a(c, localIntent, this, 1);
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    com.google.android.gms.ads.internal.util.client.b.a(4);
    a.a(paramIBinder);
    o.o();
    paramComponentName = i.b(e);
    o.o();
    paramComponentName = i.b(paramComponentName);
    if (paramComponentName == null) {
      return;
    }
    if (a.a(c.getPackageName(), paramComponentName) == 0) {
      h.a(c).a(f);
    }
    com.google.android.gms.common.stats.b.a().a(c, this);
    a.a = null;
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    com.google.android.gms.ads.internal.util.client.b.a(4);
    a.a = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */