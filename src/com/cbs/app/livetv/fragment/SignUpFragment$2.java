package com.cbs.app.livetv.fragment;

import android.support.design.widget.TextInputLayout;
import android.text.Editable;
import android.text.TextWatcher;

final class SignUpFragment$2
  implements TextWatcher
{
  SignUpFragment$2(SignUpFragment paramSignUpFragment) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    SignUpFragment.j(a).setErrorEnabled(false);
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SignUpFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */