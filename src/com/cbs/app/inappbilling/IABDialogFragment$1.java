package com.cbs.app.inappbilling;

import android.view.View;
import android.view.View.OnClickListener;

final class IABDialogFragment$1
  implements View.OnClickListener
{
  IABDialogFragment$1(IABDialogFragment paramIABDialogFragment) {}
  
  public final void onClick(View paramView)
  {
    a.dismiss();
    if (IABDialogFragment.a(a) != null) {
      IABDialogFragment.a(a).b();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */