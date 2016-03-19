package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.internal.fs;

@fs
public class zzm
  extends FrameLayout
  implements View.OnClickListener
{
  private final ImageButton a;
  private final k b;
  
  public zzm(Context paramContext, int paramInt, k paramk)
  {
    super(paramContext);
    b = paramk;
    setOnClickListener(this);
    a = new ImageButton(paramContext);
    a.setImageResource(17301527);
    a.setBackgroundColor(0);
    a.setOnClickListener(this);
    a.setPadding(0, 0, 0, 0);
    a.setContentDescription("Interstitial close button");
    n.a();
    paramInt = a.a(paramContext, paramInt);
    addView(a, new FrameLayout.LayoutParams(paramInt, paramInt, 17));
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2)
    {
      if (paramBoolean1)
      {
        a.setVisibility(4);
        return;
      }
      a.setVisibility(8);
      return;
    }
    a.setVisibility(0);
  }
  
  public void onClick(View paramView)
  {
    if (b != null) {
      b.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.zzm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */