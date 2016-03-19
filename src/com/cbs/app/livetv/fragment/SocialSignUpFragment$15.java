package com.cbs.app.livetv.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;
import android.widget.TextView;
import com.cbs.app.view.utils.Util;

final class SocialSignUpFragment$15
  implements AdapterView.OnItemSelectedListener
{
  SocialSignUpFragment$15(SocialSignUpFragment paramSocialSignUpFragment) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((TextView)SocialSignUpFragment.d(a).getSelectedView()).setError(null);
    if (paramInt != 0)
    {
      SocialSignUpFragment.d(a).clearFocus();
      Util.a(a.getActivity());
      SocialSignUpFragment.j(a).requestFocus();
      SocialSignUpFragment.j(a).performClick();
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SocialSignUpFragment.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */