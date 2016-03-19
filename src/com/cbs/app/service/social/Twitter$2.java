package com.cbs.app.service.social;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.utils.Util;

final class Twitter$2
  implements DialogInterface.OnClickListener
{
  Twitter$2(Twitter paramTwitter, TweetOperation paramTweetOperation, EditText paramEditText) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (a.getChoice() == 2) {
      c.a(b.getText().toString());
    }
    for (;;)
    {
      Util.a((Activity)Twitter.a(c));
      return;
      if (a.getChoice() == 5)
      {
        String str = a.getReplyToAuthor();
        paramDialogInterface = str;
        if (!str.contains("@")) {
          paramDialogInterface = "@" + str;
        }
        paramDialogInterface = paramDialogInterface + "  " + b.getText().toString();
        Twitter.a(c, a.getId(), paramDialogInterface);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.Twitter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */