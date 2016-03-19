package com.cbs.app.cast;

import android.widget.SeekBar;
import com.google.android.libraries.cast.companionlibrary.cast.a.d;

final class VolumeDialogFragment$1
  extends d
{
  VolumeDialogFragment$1(VolumeDialogFragment paramVolumeDialogFragment) {}
  
  public final void a(double paramDouble, boolean paramBoolean)
  {
    super.a(paramDouble, paramBoolean);
    if (!a.a) {
      VolumeDialogFragment.a(a).setProgress((int)Math.round(10.0D * paramDouble));
    }
  }
  
  public final void c(int paramInt)
  {
    super.c(paramInt);
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.VolumeDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */