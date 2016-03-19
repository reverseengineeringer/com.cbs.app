package com.cbs.app.view.fragments;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.utils.Preferences;

public class TOUDialogFragment
  extends DialogFragment
{
  private static final String a = TOUDialogFragment.class.getSimpleName();
  private TOUDialogListener b;
  private boolean c;
  private int d;
  
  private void a(Spannable paramSpannable, int paramInt1, int paramInt2, final String paramString)
  {
    paramSpannable.setSpan(new ClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        TOUDialogFragment.a();
        paramAnonymousView = new Intent("android.intent.action.VIEW");
        paramAnonymousView.setData(Uri.parse(paramString));
        getActivity().startActivity(paramAnonymousView);
      }
    }, paramInt1, paramInt2, 33);
    paramSpannable.setSpan(new ForegroundColorSpan(d), paramInt1, paramInt2, 33);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Object localObject3 = getActivity();
    d = getResources().getColor(2131558440);
    Preferences.c((Context)localObject3, true);
    AccountUIHelper.setTermsDialogIsShowing(true);
    paramBundle = LayoutInflater.from((Context)localObject3).inflate(2130903310, null);
    Object localObject1 = new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramAnonymousInt == -2) {
          TOUDialogFragment.a(TOUDialogFragment.this);
        }
      }
    };
    Object localObject2 = getArguments().getString("dialog_title");
    localObject3 = new AlertDialog.Builder(new ContextThemeWrapper((Context)localObject3, 2131427561));
    ((AlertDialog.Builder)localObject3).setCancelable(false).setView(paramBundle).setTitle((CharSequence)localObject2).setNegativeButton("Cancel", (DialogInterface.OnClickListener)localObject1).setPositiveButton("Submit", null);
    localObject1 = ((AlertDialog.Builder)localObject3).create();
    setCancelable(false);
    paramBundle = (TextView)paramBundle.findViewById(2131690436);
    if (paramBundle != null)
    {
      localObject2 = new SpannableString(getString(2131231275));
      a((Spannable)localObject2, 109, 121, "http://legalterms.cbsinteractive.com/terms-of-use");
      a((Spannable)localObject2, 122, 138, "http://legalterms.cbsinteractive.com/privacy");
      a((Spannable)localObject2, 142, 163, "http://legalterms.cbsinteractive.com/video-services");
      paramBundle.setMovementMethod(LinkMovementMethod.getInstance());
      paramBundle.setText((CharSequence)localObject2);
    }
    return (Dialog)localObject1;
  }
  
  public void onStart()
  {
    super.onStart();
    final AlertDialog localAlertDialog = (AlertDialog)getDialog();
    localAlertDialog.getButton(-1).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (((CheckBox)localAlertDialog.findViewById(2131690435)).isChecked())
        {
          AccountUIHelper.setTermsDialogIsShowing(false);
          if (TOUDialogFragment.b(TOUDialogFragment.this) != null)
          {
            Preferences.c(getActivity(), false);
            TOUDialogFragment.b(TOUDialogFragment.this).a(true);
          }
        }
        do
        {
          return;
          AccountUIHelper.a(getDialog(), "You need to accept our terms in order to continue.");
        } while (TOUDialogFragment.b(TOUDialogFragment.this) == null);
        TOUDialogFragment.b(TOUDialogFragment.this).a(false);
      }
    });
  }
  
  public void setListner(TOUDialogListener paramTOUDialogListener)
  {
    b = paramTOUDialogListener;
  }
  
  public static abstract interface TOUDialogListener
  {
    public abstract void a();
    
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.TOUDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */