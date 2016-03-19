package com.cbs.app.livetv.util;

import android.support.design.widget.Snackbar;
import android.text.TextUtils;
import android.view.View;

public class MessageUtil
{
  public static void a(View paramView, String paramString)
  {
    if ((paramView == null) || (TextUtils.isEmpty(paramString))) {
      return;
    }
    Snackbar.a(paramView, paramString).a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.util.MessageUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */