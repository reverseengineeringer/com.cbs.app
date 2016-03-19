package com.cbs.app.livetv.fragment;

import android.support.design.widget.TextInputLayout;
import android.text.Editable;
import android.text.TextWatcher;

final class SignUpFragment$19
  implements TextWatcher
{
  SignUpFragment$19(SignUpFragment paramSignUpFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    SignUpFragment.g(a).setErrorEnabled(false);
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    SignUpFragment.g(a).setErrorEnabled(false);
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignUpFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */