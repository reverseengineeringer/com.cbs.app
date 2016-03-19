package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.q;
import com.google.android.gms.ads.internal.client.r;
import com.google.android.gms.ads.internal.client.s.a;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.bv;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bx;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.jp;

@fs
public final class j
  extends s.a
{
  private q a;
  private bv b;
  private bw c;
  private jp<String, bx> d;
  private jp<String, by> e;
  private NativeAdOptionsParcel f;
  private final Context g;
  private final dl h;
  private final String i;
  private final VersionInfoParcel j;
  
  public j(Context paramContext, String paramString, dl paramdl, VersionInfoParcel paramVersionInfoParcel)
  {
    g = paramContext;
    i = paramString;
    h = paramdl;
    j = paramVersionInfoParcel;
    e = new jp();
    d = new jp();
  }
  
  public final r a()
  {
    return new i(g, i, h, j, a, b, c, e, d, f);
  }
  
  public final void a(q paramq)
  {
    a = paramq;
  }
  
  public final void a(NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    f = paramNativeAdOptionsParcel;
  }
  
  public final void a(bv parambv)
  {
    b = parambv;
  }
  
  public final void a(bw parambw)
  {
    c = parambw;
  }
  
  public final void a(String paramString, by paramby, bx parambx)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
    }
    e.put(paramString, paramby);
    d.put(paramString, parambx);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */