package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.internal.aq;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.ft;
import com.google.android.gms.internal.fu;

@fs
public final class d$a
  extends d
{
  private final Context a;
  
  public d$a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, c.a parama)
  {
    super(paramAdRequestInfoParcel, parama);
    a = paramContext;
  }
  
  public final void a_() {}
  
  public final j d()
  {
    Object localObject = ax.b;
    localObject = new aq((String)o.n().a((at)localObject));
    return fu.a(a, (aq)localObject, ft.a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */