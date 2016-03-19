package com.cbs.app.view.fragments.settings;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.cbs.app.view.utils.CapUtil;

final class DebugFragment$19
  implements SeekBar.OnSeekBarChangeListener
{
  DebugFragment$19(DebugFragment paramDebugFragment, TextView paramTextView, int paramInt) {}
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    DebugFragment.b();
    float f = paramInt / 100.0F;
    DebugFragment.b();
    CapUtil.a(c.a, f);
    a.setText(Integer.toString(Math.round(f * b)));
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */