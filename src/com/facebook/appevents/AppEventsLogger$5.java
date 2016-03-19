package com.facebook.appevents;

import android.content.Context;

final class AppEventsLogger$5
  implements Runnable
{
  AppEventsLogger$5(Context paramContext, AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, AppEventsLogger.AppEvent paramAppEvent) {}
  
  public final void run()
  {
    AppEventsLogger.access$600(val$context, val$accessTokenAppId).addEvent(val$event);
    AppEventsLogger.access$700();
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */