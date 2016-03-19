package com.cbs.app.view.fragments.settings;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.view.ContextThemeWrapper;
import android.view.View;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;

final class AccountUIHelper$46
  implements ResponseModelListener
{
  AccountUIHelper$46(Context paramContext, View paramView, DialogInterface.OnClickListener paramOnClickListener, DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public final void a()
  {
    AccountUIHelper.e().dismiss();
    AccountUIHelper.h(a);
    AccountUIHelper.f(a, "Sign Into CBS", "There was a problem connecting to our servers. Please try again later.");
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    AccountUIHelper.e().dismiss();
    paramResponseModel = new AlertDialog.Builder(new ContextThemeWrapper(a, 2131427561));
    paramResponseModel.setCancelable(true).setView(b).setTitle("Sign Into CBS").setPositiveButton("Ok", c);
    AccountUIHelper.a(paramResponseModel.create());
    AccountUIHelper.f().setOnCancelListener(d);
    AccountUIHelper.f().show();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.46
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */