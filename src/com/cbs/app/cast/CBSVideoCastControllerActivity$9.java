package com.cbs.app.cast;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class CBSVideoCastControllerActivity$9
  implements DialogInterface.OnClickListener
{
  CBSVideoCastControllerActivity$9(CBSVideoCastControllerActivity paramCBSVideoCastControllerActivity, String paramString) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((a == null) || (!a.contains("captions"))) {
      b.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerActivity.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */