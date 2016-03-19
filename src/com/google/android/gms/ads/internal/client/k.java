package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gw;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

@fs
public final class k
{
  public static final k a = new k();
  
  public static AdRequestParcel a(Context paramContext, z paramz)
  {
    Object localObject1 = paramz.a();
    long l;
    String str1;
    int i;
    label59:
    boolean bool1;
    int j;
    Location localLocation;
    Bundle localBundle;
    boolean bool2;
    String str2;
    if (localObject1 != null)
    {
      l = ((Date)localObject1).getTime();
      str1 = paramz.b();
      i = paramz.c();
      localObject1 = paramz.d();
      if (((Set)localObject1).isEmpty()) {
        break label222;
      }
      localObject1 = Collections.unmodifiableList(new ArrayList((Collection)localObject1));
      bool1 = paramz.a(paramContext);
      j = paramz.l();
      localLocation = paramz.e();
      localBundle = paramz.a(com.google.ads.a.a.a.class);
      bool2 = paramz.f();
      str2 = paramz.g();
      localObject2 = paramz.i();
      if (localObject2 == null) {
        break label228;
      }
    }
    label222:
    label228:
    for (Object localObject2 = new SearchAdRequestParcel((com.google.android.gms.ads.search.a)localObject2);; localObject2 = null)
    {
      Object localObject3 = null;
      Context localContext = paramContext.getApplicationContext();
      paramContext = (Context)localObject3;
      if (localContext != null)
      {
        paramContext = localContext.getPackageName();
        o.e();
        paramContext = gw.a(Thread.currentThread().getStackTrace(), paramContext);
      }
      return new AdRequestParcel(6, l, localBundle, i, (List)localObject1, bool1, j, bool2, str2, (SearchAdRequestParcel)localObject2, localLocation, str1, paramz.k(), paramz.m(), Collections.unmodifiableList(new ArrayList(paramz.n())), paramz.h(), paramContext);
      l = -1L;
      break;
      localObject1 = null;
      break label59;
    }
  }
  
  public static k a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */