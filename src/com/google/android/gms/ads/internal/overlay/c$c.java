package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.hs;

@fs
public final class c$c
{
  public final int a;
  public final ViewGroup.LayoutParams b;
  public final ViewGroup c;
  public final Context d;
  
  public c$c(hs paramhs)
  {
    b = paramhs.getLayoutParams();
    ViewParent localViewParent = paramhs.getParent();
    d = paramhs.f();
    if ((localViewParent != null) && ((localViewParent instanceof ViewGroup)))
    {
      c = ((ViewGroup)localViewParent);
      a = c.indexOfChild(paramhs.b());
      c.removeView(paramhs.b());
      paramhs.a(true);
      return;
    }
    throw new c.a("Could not get the parent of the WebView for an overlay.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */