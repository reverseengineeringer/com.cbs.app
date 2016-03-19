package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.internal.util.client.b;

@fs
public final class fk
  extends fj
{
  private Object g = new Object();
  private PopupWindow h;
  private boolean i = false;
  
  fk(Context paramContext, gk.a parama, hs paramhs, fh.a parama1)
  {
    super(paramContext, parama, paramhs, parama1);
  }
  
  private void f()
  {
    synchronized (g)
    {
      i = true;
      if (((b instanceof Activity)) && (((Activity)b).isDestroyed())) {
        h = null;
      }
      if (h != null)
      {
        if (h.isShowing()) {
          h.dismiss();
        }
        h = null;
      }
      return;
    }
  }
  
  protected final void a(int paramInt)
  {
    f();
    super.a(paramInt);
  }
  
  public final void c()
  {
    f();
    super.c();
  }
  
  protected final void e()
  {
    if ((b instanceof Activity)) {}
    Object localObject2;
    for (Window localWindow = ((Activity)b).getWindow();; localObject2 = null)
    {
      if ((localWindow == null) || (localWindow.getDecorView() == null)) {}
      while (((Activity)b).isDestroyed()) {
        return;
      }
      FrameLayout localFrameLayout = new FrameLayout(b);
      localFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
      localFrameLayout.addView(c.b(), -1, -1);
      synchronized (g)
      {
        if (i) {
          return;
        }
      }
      h = new PopupWindow(localFrameLayout, 1, 1, false);
      h.setOutsideTouchable(true);
      h.setClippingEnabled(false);
      b.a(3);
      try
      {
        h.showAtLocation(((Window)localObject1).getDecorView(), 0, -1, -1);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          h = null;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */