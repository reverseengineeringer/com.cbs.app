package com.cbs.app.view.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class VideoUtil$6
  implements DialogInterface.OnClickListener
{
  VideoUtil$6(String paramString) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((a == null) || (!a.contains("captions"))) {
      paramDialogInterface.cancel();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.VideoUtil.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */