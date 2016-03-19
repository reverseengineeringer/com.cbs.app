package com.cbs.app.livetv.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

final class SocialSignUpFragment$2
  implements AdapterView.OnItemSelectedListener
{
  SocialSignUpFragment$2(SocialSignUpFragment paramSocialSignUpFragment) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((TextView)SocialSignUpFragment.j(a).getSelectedView()).setError(null);
    if (paramInt != 0)
    {
      SocialSignUpFragment.j(a).clearFocus();
      SocialSignUpFragment.k(a).requestFocus();
      SocialSignUpFragment.l(a);
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SocialSignUpFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */