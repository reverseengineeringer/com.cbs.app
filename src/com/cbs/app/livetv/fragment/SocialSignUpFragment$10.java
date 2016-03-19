package com.cbs.app.livetv.fragment;

import android.support.design.widget.TextInputLayout;
import android.text.Editable;
import android.text.TextWatcher;

final class SocialSignUpFragment$10
  implements TextWatcher
{
  SocialSignUpFragment$10(SocialSignUpFragment paramSocialSignUpFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    SocialSignUpFragment.f(a).setErrorEnabled(false);
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    SocialSignUpFragment.f(a).setErrorEnabled(false);
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SocialSignUpFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */