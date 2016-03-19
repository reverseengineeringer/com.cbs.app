package com.cbs.app.livetv.fragment;

import android.app.DatePickerDialog.OnDateSetListener;
import android.widget.DatePicker;
import android.widget.EditText;
import java.text.SimpleDateFormat;
import java.util.Calendar;

final class SignUpFragment$17$1
  implements DatePickerDialog.OnDateSetListener
{
  SignUpFragment$17$1(SignUpFragment.17 param17) {}
  
  public final void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    SignUpFragment.c(a.a).set(paramInt1, paramInt2, paramInt3);
    SignUpFragment.b(a.a).setText(SignUpFragment.d(a.a).format(SignUpFragment.c(a.a).getTime()));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignUpFragment.17.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */