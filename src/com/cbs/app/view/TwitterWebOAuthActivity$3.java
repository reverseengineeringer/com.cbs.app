package com.cbs.app.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

final class TwitterWebOAuthActivity$3
  implements DialogInterface.OnKeyListener
{
  TwitterWebOAuthActivity$3(TwitterWebOAuthActivity paramTwitterWebOAuthActivity) {}
  
  public final boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramDialogInterface.dismiss();
      a.finish();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.TwitterWebOAuthActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */