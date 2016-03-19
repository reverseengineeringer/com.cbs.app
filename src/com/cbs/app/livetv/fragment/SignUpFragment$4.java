package com.cbs.app.livetv.fragment;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class SignUpFragment$4
  implements TextView.OnEditorActionListener
{
  SignUpFragment$4(SignUpFragment paramSignUpFragment) {}
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 5)
    {
      SignUpFragment.l(a);
      SignUpFragment.b(a).performClick();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignUpFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */