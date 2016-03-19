package com.cbs.app.livetv.fragment;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import java.text.SimpleDateFormat;
import java.util.Calendar;

final class SocialSignUpFragment$8
  implements View.OnClickListener
{
  SocialSignUpFragment$8(SocialSignUpFragment paramSocialSignUpFragment, Calendar paramCalendar) {}
  
  public final void onClick(View paramView)
  {
    SocialSignUpFragment.b(b).setError(null);
    paramView = new DatePickerDialog(b.getActivity(), new DatePickerDialog.OnDateSetListener()
    {
      public final void onDateSet(DatePicker paramAnonymousDatePicker, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        a.set(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
        SocialSignUpFragment.b(b).setText(SocialSignUpFragment.c(b).format(a.getTime()));
        SocialSignUpFragment.d(b).requestFocus();
        SocialSignUpFragment.d(b).performClick();
      }
    }, a.get(1), a.get(2), a.get(5));
    paramView.getDatePicker().setMaxDate(System.currentTimeMillis());
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SocialSignUpFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */