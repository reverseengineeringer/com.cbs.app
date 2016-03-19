package com.cbs.app.livetv.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;
import android.widget.TextView;

final class SignUpFragment$6
  implements AdapterView.OnItemSelectedListener
{
  SignUpFragment$6(SignUpFragment paramSignUpFragment) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((TextView)SignUpFragment.e(a).getSelectedView()).setError(null);
    if (paramInt != 0)
    {
      SignUpFragment.e(a).clearFocus();
      SignUpFragment.l(a);
      SignUpFragment.n(a).requestFocus();
      SignUpFragment.n(a).performClick();
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignUpFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */