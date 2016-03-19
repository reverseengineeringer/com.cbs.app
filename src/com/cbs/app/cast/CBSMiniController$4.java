package com.cbs.app.cast;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.google.android.libraries.cast.companionlibrary.widgets.MiniController.a;

final class CBSMiniController$4
  implements View.OnClickListener
{
  CBSMiniController$4(CBSMiniController paramCBSMiniController) {}
  
  public final void onClick(View paramView)
  {
    if (CBSMiniController.b(a) != null) {
      CBSMiniController.a(a, false);
    }
    try
    {
      CBSMiniController.b(a).a(a.a.getContext());
      return;
    }
    catch (Exception paramView)
    {
      CBSMiniController.b(a).a(2131230901, -1);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSMiniController.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */