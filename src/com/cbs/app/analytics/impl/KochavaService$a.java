package com.cbs.app.analytics.impl;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;

final class KochavaService$a
  extends Handler
{
  private Context a;
  
  public KochavaService$a(Context paramContext)
  {
    a = paramContext;
  }
  
  public final void handleMessage(final Message paramMessage)
  {
    KochavaService.a(paramMessage.getData().getString("attributionData"));
    new StringBuilder("attribution string2 : ").append(KochavaService.b());
    paramMessage = KochavaService.b(KochavaService.b());
    if (paramMessage != null)
    {
      if (Util.v(a)) {
        new Handler(a.getMainLooper()).post(new Runnable()
        {
          public final void run()
          {
            UriHandler.a(KochavaService.a.a(KochavaService.a.this), Uri.parse(paramMessage));
          }
        });
      }
    }
    else {
      return;
    }
    Preferences.b(a, paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.analytics.impl.KochavaService.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */