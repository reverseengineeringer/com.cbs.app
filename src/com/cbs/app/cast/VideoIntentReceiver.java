package com.cbs.app.cast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.cbs.app.view.utils.Util;
import com.google.android.libraries.cast.companionlibrary.cast.b.a;
import com.google.android.libraries.cast.companionlibrary.cast.b.d;
import com.google.android.libraries.cast.companionlibrary.cast.c;

public class VideoIntentReceiver
  extends BroadcastReceiver
{
  private static final String a = com.google.android.libraries.cast.companionlibrary.a.b.a(VideoIntentReceiver.class);
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    c localc;
    String str;
    if (Util.H(paramContext))
    {
      localc = c.B();
      str = paramIntent.getAction();
      if (str != null) {
        break label24;
      }
    }
    label23:
    label24:
    do
    {
      return;
      int i = -1;
      switch (str.hashCode())
      {
      }
      for (;;)
      {
        switch (i)
        {
        default: 
          return;
        case 0: 
          try
          {
            com.google.android.libraries.cast.companionlibrary.a.b.a("Toggling playback via CastManager");
            localc.R();
            return;
          }
          catch (Exception paramIntent)
          {
            com.google.android.libraries.cast.companionlibrary.a.b.a(a, "onReceive(): Failed to toggle playback", paramIntent);
          }
          if (!Util.H(paramContext)) {
            break label23;
          }
          paramIntent = new Intent("com.google.android.libraries.cast.companionlibrary.action.toggleplayback");
          paramIntent.setPackage(paramContext.getPackageName());
          paramContext.startService(paramIntent);
          return;
          if (str.equals("com.google.android.libraries.cast.companionlibrary.action.toggleplayback"))
          {
            i = 0;
            continue;
            if (str.equals("com.google.android.libraries.cast.companionlibrary.action.stop"))
            {
              i = 1;
              continue;
              if (str.equals("android.intent.action.MEDIA_BUTTON")) {
                i = 2;
              }
            }
          }
          break;
        }
      }
      com.google.android.libraries.cast.companionlibrary.a.b.a("Calling stopApplication from intent");
      localc.l();
      return;
      paramContext = (KeyEvent)paramIntent.getExtras().get("android.intent.extra.KEY_EVENT");
    } while (paramContext.getAction() != 0);
    switch (paramContext.getKeyCode())
    {
    default: 
      return;
    }
    try
    {
      localc.R();
      return;
    }
    catch (a paramContext)
    {
      com.google.android.libraries.cast.companionlibrary.a.b.a(a, "Failed to toggle playback", paramContext);
      return;
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.b paramContext)
    {
      for (;;) {}
    }
    catch (d paramContext)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.VideoIntentReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */