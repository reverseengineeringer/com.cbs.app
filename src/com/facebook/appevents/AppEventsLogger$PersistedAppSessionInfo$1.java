package com.facebook.appevents;

final class AppEventsLogger$PersistedAppSessionInfo$1
  implements Runnable
{
  public final void run()
  {
    AppEventsLogger.PersistedAppSessionInfo.saveAppSessionInformation(AppEventsLogger.access$1000());
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.PersistedAppSessionInfo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */