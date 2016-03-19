package com.cbs.app.livetv.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

final class SignUpFragment$7
  implements AdapterView.OnItemSelectedListener
{
  SignUpFragment$7(SignUpFragment paramSignUpFragment) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((TextView)SignUpFragment.n(a).getSelectedView()).setError(null);
    if (paramInt != 0)
    {
      SignUpFragment.n(a).clearFocus();
      SignUpFragment.o(a).requestFocus();
      SignUpFragment.p(a);
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignUpFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */