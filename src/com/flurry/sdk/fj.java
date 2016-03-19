package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class fj
  extends BroadcastReceiver
{
  private static fj c;
  boolean a;
  boolean b;
  private boolean d = false;
  
  private fj()
  {
    Context localContext = y.a().b();
    if (localContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
      bool = true;
    }
    d = bool;
    b = a(localContext);
    if (d) {
      c();
    }
  }
  
  public static fj a()
  {
    try
    {
      if (c == null) {
        c = new fj();
      }
      fj localfj = c;
      return localfj;
    }
    finally {}
  }
  
  private boolean a(Context paramContext)
  {
    if ((!d) || (paramContext == null)) {}
    do
    {
      return true;
      paramContext = d().getActiveNetworkInfo();
    } while ((paramContext != null) && (paramContext.isConnected()));
    return false;
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 63	com/flurry/sdk/fj:a	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 23	com/flurry/sdk/y:a	()Lcom/flurry/sdk/y;
    //   17: invokevirtual 26	com/flurry/sdk/y:b	()Landroid/content/Context;
    //   20: astore_2
    //   21: aload_0
    //   22: aload_0
    //   23: aload_2
    //   24: invokespecial 37	com/flurry/sdk/fj:a	(Landroid/content/Context;)Z
    //   27: putfield 39	com/flurry/sdk/fj:b	Z
    //   30: aload_2
    //   31: aload_0
    //   32: new 65	android/content/IntentFilter
    //   35: dup
    //   36: ldc 67
    //   38: invokespecial 70	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   41: invokevirtual 74	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   44: pop
    //   45: aload_0
    //   46: iconst_1
    //   47: putfield 63	com/flurry/sdk/fj:a	Z
    //   50: goto -39 -> 11
    //   53: astore_2
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_2
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	this	fj
    //   6	2	1	bool	boolean
    //   20	11	2	localContext	Context
    //   53	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	53	finally
    //   14	50	53	finally
  }
  
  private static ConnectivityManager d()
  {
    return (ConnectivityManager)y.a().b().getSystemService("connectivity");
  }
  
  public final a b()
  {
    if (!d) {
      return a.a;
    }
    NetworkInfo localNetworkInfo = d().getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected())) {
      return a.a;
    }
    switch (localNetworkInfo.getType())
    {
    case 6: 
    case 7: 
    default: 
      if (localNetworkInfo.isConnected()) {
        return a.b;
      }
      break;
    case 1: 
      return a.c;
    case 0: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
      return a.d;
    case 8: 
      return a.a;
    }
    return a.a;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool = a(paramContext);
    if (b != bool)
    {
      b = bool;
      paramContext = new s();
      a = bool;
      b = b();
      ai.a().a(paramContext);
    }
  }
  
  public static enum a
  {
    private int e;
    
    private a(int paramInt)
    {
      e = paramInt;
    }
    
    public final int a()
    {
      return e;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */