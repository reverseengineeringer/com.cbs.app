package com.cbs.app.livetv.fragment;

import android.support.design.widget.TextInputLayout;
import android.text.Editable;
import android.text.TextWatcher;

final class SignUpFragment$5
  implements TextWatcher
{
  SignUpFragment$5(SignUpFragment paramSignUpFragment) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    SignUpFragment.m(a).setErrorEnabled(false);
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignUpFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */