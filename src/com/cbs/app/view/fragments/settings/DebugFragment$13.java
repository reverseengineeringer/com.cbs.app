package com.cbs.app.view.fragments.settings;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.SeekBar;

final class DebugFragment$13
  implements TextWatcher
{
  DebugFragment$13(DebugFragment paramDebugFragment, SeekBar paramSeekBar) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    DebugFragment.b();
    new StringBuilder("afterTextChanged: ").append(DebugFragment.d(b));
    int i;
    if (!DebugFragment.e(b))
    {
      i = 60;
      if ((DebugFragment.d(b) == null) || (DebugFragment.d(b).equals(""))) {}
    }
    try
    {
      int j = Integer.parseInt(DebugFragment.d(b));
      i = j;
    }
    catch (Exception paramEditable)
    {
      for (;;)
      {
        double d;
        DebugFragment.b();
        continue;
        DebugFragment.b();
      }
    }
    if ((i >= 10) && (i <= 120))
    {
      DebugFragment.b(b, true);
      d = (i - 10.0D) / 110.0D;
      DebugFragment.b();
      i = (int)Math.round(d * 100.0D);
      DebugFragment.b();
      a.setProgress(i);
      DebugFragment.a(b, false);
      return;
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    DebugFragment.b();
    new StringBuilder("beforeTextChanged: ").append(paramCharSequence.toString());
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    DebugFragment.b();
    new StringBuilder("onTextChanged: ").append(paramCharSequence.toString());
    DebugFragment.a(b, paramCharSequence.toString());
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */