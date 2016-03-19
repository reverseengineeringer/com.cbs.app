package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.b.a;
import com.google.android.gms.common.api.b.b;
import com.google.android.gms.common.api.b.c;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.fs;

@fs
public final class e
  extends n<j>
{
  final int a;
  
  public e(Context paramContext, Looper paramLooper, b.b paramb, b.c paramc, int paramInt)
  {
    super(paramContext, paramLooper, 8, new b.a(paramContext).a(), paramb, paramc);
    a = paramInt;
  }
  
  protected final String a()
  {
    return "com.google.android.gms.ads.service.START";
  }
  
  protected final String b()
  {
    return "com.google.android.gms.ads.internal.request.IAdRequestService";
  }
  
  public final j c_()
  {
    return (j)super.v();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */