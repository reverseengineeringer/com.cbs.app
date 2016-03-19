package com.cbs.app.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class TwitterWebOAuthActivity$1
  implements DialogInterface.OnClickListener
{
  TwitterWebOAuthActivity$1(TwitterWebOAuthActivity paramTwitterWebOAuthActivity) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    a.finish();
    a.startActivity(new Intent("android.settings.DATE_SETTINGS"));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.TwitterWebOAuthActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */