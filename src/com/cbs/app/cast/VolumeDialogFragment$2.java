package com.cbs.app.cast;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.google.android.libraries.cast.companionlibrary.cast.c;

final class VolumeDialogFragment$2
  implements SeekBar.OnSeekBarChangeListener
{
  VolumeDialogFragment$2(VolumeDialogFragment paramVolumeDialogFragment, c paramc) {}
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    b.a = paramBoolean;
    float f;
    if (paramBoolean) {
      f = paramInt * 1.0F / 10.0F;
    }
    try
    {
      a.b(f);
      return;
    }
    catch (Exception paramSeekBar) {}
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    float f = paramSeekBar.getProgress() * 1.0F / 10.0F;
    try
    {
      a.b(f);
      b.a = false;
      return;
    }
    catch (Exception paramSeekBar)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.VolumeDialogFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */