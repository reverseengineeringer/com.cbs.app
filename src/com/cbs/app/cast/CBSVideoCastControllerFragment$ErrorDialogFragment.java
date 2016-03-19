package com.cbs.app.cast;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import com.google.android.libraries.cast.companionlibrary.cast.player.d;

public class CBSVideoCastControllerFragment$ErrorDialogFragment
  extends DialogFragment
{
  private d a;
  
  public static ErrorDialogFragment a(String paramString)
  {
    ErrorDialogFragment localErrorDialogFragment = new ErrorDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("message", paramString);
    localErrorDialogFragment.setArguments(localBundle);
    return localErrorDialogFragment;
  }
  
  public void onAttach(Activity paramActivity)
  {
    a = ((d)paramActivity);
    super.onAttach(paramActivity);
    setCancelable(false);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = getArguments().getString("message");
    new AlertDialog.Builder(getActivity()).setTitle(2131230896).setMessage(paramBundle).setPositiveButton(2131230925, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        CBSVideoCastControllerFragment.d();
        CBSVideoCastControllerFragment.ErrorDialogFragment.a(CBSVideoCastControllerFragment.ErrorDialogFragment.this).b();
      }
    }).create();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerFragment.ErrorDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */