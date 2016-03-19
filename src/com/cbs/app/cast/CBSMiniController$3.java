package com.cbs.app.cast;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.libraries.cast.companionlibrary.cast.b.a;
import com.google.android.libraries.cast.companionlibrary.cast.b.b;
import com.google.android.libraries.cast.companionlibrary.cast.b.d;
import com.google.android.libraries.cast.companionlibrary.widgets.MiniController.a;

final class CBSMiniController$3
  implements View.OnClickListener
{
  CBSMiniController$3(CBSMiniController paramCBSMiniController) {}
  
  public final void onClick(View paramView)
  {
    if (CBSMiniController.b(a) != null) {
      CBSMiniController.a(a, true);
    }
    try
    {
      CBSMiniController.b(a).C();
      return;
    }
    catch (a paramView)
    {
      CBSMiniController.b(a).a(2131230901, -1);
      return;
    }
    catch (d paramView)
    {
      CBSMiniController.b(a).a(2131230900, -1);
      return;
    }
    catch (b paramView)
    {
      CBSMiniController.b(a).a(2131230898, -1);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSMiniController.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */