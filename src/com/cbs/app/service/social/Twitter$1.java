package com.cbs.app.service.social;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.cbs.app.view.utils.Util;

final class Twitter$1
  implements DialogInterface.OnClickListener
{
  Twitter$1(Twitter paramTwitter) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Util.a((Activity)Twitter.a(a));
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.Twitter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */