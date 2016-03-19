package com.urbanairship.google;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.google.android.gms.common.e;
import com.urbanairship.analytics.c;
import com.urbanairship.p;

public class PlayServicesErrorActivity
  extends FragmentActivity
{
  private void a()
  {
    int i = e.a(this);
    if (i == 0)
    {
      finish();
      return;
    }
    if (e.c(i))
    {
      ErrorDialogFragment.a(i).show(getSupportFragmentManager(), "error_dialog");
      return;
    }
    com.urbanairship.j.a("Unrecoverable Google Play services error: " + i);
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1000)
    {
      if (paramInt2 == -1) {
        a();
      }
    }
    else {
      return;
    }
    com.urbanairship.j.a("Google Play services resolution canceled.");
    finish();
  }
  
  protected void onStart()
  {
    super.onStart();
    c.a(this);
    if (getSupportFragmentManager().findFragmentByTag("error_dialog") == null) {
      a();
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    c.b(this);
    if ((isFinishing()) && (e.a(this) == 0) && (p.a().m().c()))
    {
      p.a().m();
      com.urbanairship.push.j.j();
    }
  }
  
  public static class ErrorDialogFragment
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
}

/* Location:
 * Qualified Name:     com.urbanairship.google.PlayServicesErrorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */