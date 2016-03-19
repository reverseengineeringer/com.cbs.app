package com.google.android.gms.ads.internal;

import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk.a;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.hs;

@fs
public final class e$b
  implements e.a
{
  private final gk.a a;
  private final hs b;
  
  public e$b(gk.a parama, hs paramhs)
  {
    a = parama;
    b = paramhs;
  }
  
  public final void a(String paramString)
  {
    b.a(3);
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("https");
    localBuilder.path("//pagead2.googlesyndication.com/pagead/gen_204");
    localBuilder.appendQueryParameter("id", "gmob-apps-blocked-navigation");
    if (!TextUtils.isEmpty(paramString)) {
      localBuilder.appendQueryParameter("navigationURL", paramString);
    }
    if ((a != null) && (a.b != null) && (!TextUtils.isEmpty(a.b.o))) {
      localBuilder.appendQueryParameter("debugDialog", a.b.o);
    }
    o.e();
    gw.a(b.getContext(), b.n().b, localBuilder.toString());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */