package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gy;

@fs
final class c$b
  extends RelativeLayout
{
  gy a;
  
  public c$b(Context paramContext, String paramString)
  {
    super(paramContext);
    a = new gy(paramContext, paramString);
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    a.a(paramMotionEvent);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */