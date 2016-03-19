package com.cbs.app.view.fragments;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.utils.Preferences;

final class TOUDialogFragment$2
  implements View.OnClickListener
{
  TOUDialogFragment$2(TOUDialogFragment paramTOUDialogFragment, AlertDialog paramAlertDialog) {}
  
  public final void onClick(View paramView)
  {
    if (((CheckBox)a.findViewById(2131690435)).isChecked())
    {
      AccountUIHelper.setTermsDialogIsShowing(false);
      if (TOUDialogFragment.b(b) != null)
      {
        Preferences.c(b.getActivity(), false);
        TOUDialogFragment.b(b).a(true);
      }
    }
    do
    {
      return;
      AccountUIHelper.a(b.getDialog(), "You need to accept our terms in order to continue.");
    } while (TOUDialogFragment.b(b) == null);
    TOUDialogFragment.b(b).a(false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.TOUDialogFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */