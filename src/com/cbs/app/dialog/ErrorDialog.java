package com.cbs.app.dialog;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

public class ErrorDialog
  extends DialogFragment
{
  private ErrorDialogListener a;
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = getArguments().getString("title");
    String str = getArguments().getString("text");
    new AlertDialog.Builder(getActivity()).setTitle(paramBundle).setMessage(str).setPositiveButton(2131230834, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ErrorDialog.a(ErrorDialog.this);
      }
    }).setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        ErrorDialog.a(ErrorDialog.this);
      }
    }).create();
  }
  
  public void setListener(ErrorDialogListener paramErrorDialogListener)
  {
    a = paramErrorDialogListener;
  }
  
  public static abstract interface ErrorDialogListener {}
}

/* Location:
 * Qualified Name:     com.cbs.app.dialog.ErrorDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */