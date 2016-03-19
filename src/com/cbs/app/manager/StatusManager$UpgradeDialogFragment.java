package com.cbs.app.manager;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import com.cbs.app.view.utils.Util;

public class StatusManager$UpgradeDialogFragment
  extends DialogFragment
{
  public boolean a = false;
  
  public Dialog onCreateDialog(final Bundle paramBundle)
  {
    setCancelable(false);
    paramBundle = getActivity();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(paramBundle, 2131427561));
    localBuilder.setTitle("CBS");
    if (a) {
      localBuilder.setMessage(getString(2131231167)).setNegativeButton("Ok", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramBundle.finish();
        }
      });
    }
    for (;;)
    {
      return localBuilder.create();
      localBuilder.setMessage(getString(2131231355)).setNegativeButton("Download", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          Util.J(paramBundle);
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.manager.StatusManager.UpgradeDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */