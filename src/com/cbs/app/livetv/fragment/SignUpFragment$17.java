package com.cbs.app.livetv.fragment;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import java.text.SimpleDateFormat;
import java.util.Calendar;

final class SignUpFragment$17
  implements View.OnClickListener
{
  SignUpFragment$17(SignUpFragment paramSignUpFragment) {}
  
  public final void onClick(View paramView)
  {
    SignUpFragment.b(a).setError(null);
    paramView = new DatePickerDialog(a.getActivity(), new DatePickerDialog.OnDateSetListener()
    {
      public final void onDateSet(DatePicker paramAnonymousDatePicker, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SignUpFragment.c(a).set(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
        SignUpFragment.b(a).setText(SignUpFragment.d(a).format(SignUpFragment.c(a).getTime()));
      }
    }, SignUpFragment.c(a).get(1), SignUpFragment.c(a).get(2), SignUpFragment.c(a).get(5));
    paramView.getDatePicker().setMaxDate(System.currentTimeMillis());
    paramView.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public final void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        SignUpFragment.e(a).requestFocus();
        SignUpFragment.e(a).performClick();
      }
    });
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignUpFragment.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */