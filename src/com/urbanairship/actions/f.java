package com.urbanairship.actions;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class f
{
  static Executor a = ;
  private d b;
  private String c;
  private a d;
  private ActionValue e;
  private Bundle f;
  private p g;
  
  private f(String paramString)
  {
    c = paramString;
    b = null;
  }
  
  public static f a(String paramString)
  {
    return new f(paramString);
  }
  
  private void b(c paramc)
  {
    Object localObject1 = Looper.myLooper();
    if (localObject1 != null) {
      if (f != null) {
        break label93;
      }
    }
    label93:
    for (Object localObject2 = new Bundle();; localObject2 = new Bundle(f))
    {
      if (c != null) {
        ((Bundle)localObject2).putString("com.urbanairship.REGISTRY_ACTION_NAME", c);
      }
      localObject2 = new b(g, e, (Bundle)localObject2);
      localObject1 = new Handler((Looper)localObject1);
      a.execute(new f.1(this, (b)localObject2, paramc, (Handler)localObject1));
      return;
      localObject1 = Looper.getMainLooper();
      break;
    }
  }
  
  public final f a(Bundle paramBundle)
  {
    f = paramBundle;
    return this;
  }
  
  public final f a(ActionValue paramActionValue)
  {
    e = paramActionValue;
    return this;
  }
  
  public final f a(p paramp)
  {
    g = paramp;
    return this;
  }
  
  public final void a()
  {
    b(null);
  }
  
  public final void a(c paramc)
  {
    b(paramc);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */