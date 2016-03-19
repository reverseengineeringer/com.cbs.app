package com.cbs.app.cast;

import android.widget.ImageView;
import com.google.android.libraries.cast.companionlibrary.cast.a.d;

final class CBSMiniController$1
  extends d
{
  CBSMiniController$1(CBSMiniController paramCBSMiniController) {}
  
  public final void a(double paramDouble, boolean paramBoolean)
  {
    super.a(paramDouble, paramBoolean);
    new StringBuilder("onVolumeChanged: ").append(paramDouble).append(" isMute: ").append(paramBoolean);
    if (paramDouble == 0.0D) {
      paramBoolean = true;
    }
    if (CBSMiniController.a(a) != null)
    {
      if (paramBoolean) {
        CBSMiniController.a(a).setSelected(false);
      }
    }
    else {
      return;
    }
    CBSMiniController.a(a).setSelected(true);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSMiniController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */