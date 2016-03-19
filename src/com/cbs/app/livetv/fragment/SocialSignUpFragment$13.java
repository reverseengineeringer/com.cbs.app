package com.cbs.app.livetv.fragment;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.cbs.app.view.utils.Util;

final class SocialSignUpFragment$13
  implements TextView.OnEditorActionListener
{
  SocialSignUpFragment$13(SocialSignUpFragment paramSocialSignUpFragment) {}
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 5)
    {
      Util.a(a.getActivity());
      SocialSignUpFragment.b(a).requestFocus();
      SocialSignUpFragment.b(a).performClick();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SocialSignUpFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */