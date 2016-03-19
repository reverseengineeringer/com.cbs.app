package com.cbs.app.cast;

import android.util.Log;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.google.android.libraries.cast.companionlibrary.a.d;
import com.google.android.libraries.cast.companionlibrary.cast.player.c;

final class CBSVideoCastControllerActivity$6
  implements SeekBar.OnSeekBarChangeListener
{
  CBSVideoCastControllerActivity$6(CBSVideoCastControllerActivity paramCBSVideoCastControllerActivity) {}
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    CBSVideoCastControllerActivity.i(a).setText(d.a(paramInt));
    try
    {
      if (CBSVideoCastControllerActivity.h(a) != null) {
        CBSVideoCastControllerActivity.h(a);
      }
      return;
    }
    catch (Exception paramSeekBar)
    {
      Log.e(CBSVideoCastControllerActivity.c(), "Failed to set the progress result", paramSeekBar);
    }
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    try
    {
      if (CBSVideoCastControllerActivity.h(a) != null) {
        CBSVideoCastControllerActivity.h(a).a();
      }
      return;
    }
    catch (Exception paramSeekBar)
    {
      Log.e(CBSVideoCastControllerActivity.c(), "Failed to start seek", paramSeekBar);
      a.finish();
    }
  }
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    try
    {
      if (CBSVideoCastControllerActivity.h(a) != null) {
        CBSVideoCastControllerActivity.h(a).a(paramSeekBar);
      }
      return;
    }
    catch (Exception paramSeekBar)
    {
      Log.e(CBSVideoCastControllerActivity.c(), "Failed to complete seek", paramSeekBar);
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */