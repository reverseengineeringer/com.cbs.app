package com.cbs.app.view.fragments.settings;

import android.text.Editable;
import android.text.TextWatcher;

final class AccountUIHelper$33
  implements TextWatcher
{
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    AccountUIHelper.setEmailCache(paramCharSequence.toString());
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.33
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */