package com.cbs.app.view.fragments.settings;

import android.text.Editable;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

final class DebugFragment$11
  implements SeekBar.OnSeekBarChangeListener
{
  DebugFragment$11(DebugFragment paramDebugFragment, EditText paramEditText) {}
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    DebugFragment.b();
    if (!DebugFragment.c(b))
    {
      DebugFragment.b();
      DebugFragment.a(b, true);
      paramInt = (int)Math.round(paramInt / 100.0D * 110.0D);
      paramSeekBar = a.getEditableText();
      if (paramSeekBar != null)
      {
        paramSeekBar.clear();
        paramSeekBar.append(Integer.toString(paramInt + 10));
      }
    }
    DebugFragment.b(b, false);
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */