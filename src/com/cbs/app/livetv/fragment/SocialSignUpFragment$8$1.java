package com.cbs.app.livetv.fragment;

import android.app.DatePickerDialog.OnDateSetListener;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import java.text.SimpleDateFormat;
import java.util.Calendar;

final class SocialSignUpFragment$8$1
  implements DatePickerDialog.OnDateSetListener
{
  SocialSignUpFragment$8$1(SocialSignUpFragment.8 param8) {}
  
  public final void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    a.a.set(paramInt1, paramInt2, paramInt3);
    SocialSignUpFragment.b(a.b).setText(SocialSignUpFragment.c(a.b).format(a.a.getTime()));
    SocialSignUpFragment.d(a.b).requestFocus();
    SocialSignUpFragment.d(a.b).performClick();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SocialSignUpFragment.8.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */