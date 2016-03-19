package com.cbs.app.view.fragments.settings;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.Toast;

final class DebugFragment$5
  implements TextWatcher
{
  float a;
  
  DebugFragment$5(DebugFragment paramDebugFragment) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramCharSequence != null) && (paramCharSequence.length() > 2))
    {
      a = Float.valueOf(paramCharSequence.toString()).floatValue();
      if ((a > 90.0F) || (a < -90.0F))
      {
        DebugFragment.a(b).setText("");
        Toast.makeText(b.a, "Latitude vaule must be between:\n-90.00 and +90.00", 1).show();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */