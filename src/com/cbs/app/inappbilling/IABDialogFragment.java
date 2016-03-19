package com.cbs.app.inappbilling;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

public class IABDialogFragment
  extends DialogFragment
{
  private String a;
  private String b;
  private IABDialogListener c;
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    if (c != null) {
      c.b();
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Dialog localDialog = new Dialog(getActivity(), 2131427561);
    localDialog.setContentView(2130903196);
    localDialog.setCancelable(true);
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = getArguments();
    }
    a = localBundle.getString("main_text");
    b = localBundle.getString("dialog_title");
    localDialog.setTitle(b);
    ((TextView)localDialog.findViewById(2131690095)).setText(a);
    localDialog.findViewById(2131690096).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        dismiss();
        if (IABDialogFragment.a(IABDialogFragment.this) != null) {
          IABDialogFragment.a(IABDialogFragment.this).b();
        }
      }
    });
    return localDialog;
  }
  
  public void onDestroy()
  {
    c = null;
    super.onDestroy();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("main_text", a);
    paramBundle.putString("dialog_title", b);
  }
  
  public void setListener(IABDialogListener paramIABDialogListener)
  {
    c = paramIABDialogListener;
  }
  
  public static abstract interface IABDialogListener
  {
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */