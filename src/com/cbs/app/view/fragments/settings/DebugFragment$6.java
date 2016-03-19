package com.cbs.app.view.fragments.settings;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.Toast;

final class DebugFragment$6
  implements TextWatcher
{
  float a;
  
  DebugFragment$6(DebugFragment paramDebugFragment) {}
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramCharSequence != null) && (paramCharSequence.length() > 2))
    {
      a = Float.valueOf(paramCharSequence.toString()).floatValue();
      if ((a > 180.0F) || (a < -180.0F))
      {
        DebugFragment.b(b).setText("");
        Toast.makeText(b.a, "Longitude vaule must be between:\n-180.00 and +180.00", 1).show();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */