package com.urbanairship.google;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import com.google.android.gms.common.e;

public class PlayServicesErrorActivity$ErrorDialogFragment
  extends DialogFragment
{
  public static ErrorDialogFragment a(int paramInt)
  {
    ErrorDialogFragment localErrorDialogFragment = new ErrorDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("dialog_error", paramInt);
    localErrorDialogFragment.setArguments(localBundle);
    return localErrorDialogFragment;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    getActivity().finish();
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return e.a(getArguments().getInt("dialog_error"), getActivity(), 1000);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.google.PlayServicesErrorActivity.ErrorDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */