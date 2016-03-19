package com.facebook.appevents;

import com.facebook.GraphRequest;
import com.facebook.GraphRequest.Callback;
import com.facebook.GraphResponse;

final class AppEventsLogger$7
  implements GraphRequest.Callback
{
  AppEventsLogger$7(AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, GraphRequest paramGraphRequest, AppEventsLogger.SessionEventsState paramSessionEventsState, AppEventsLogger.FlushStatistics paramFlushStatistics) {}
  
  public final void onCompleted(GraphResponse paramGraphResponse)
  {
    AppEventsLogger.access$900(val$accessTokenAppId, val$postRequest, paramGraphResponse, val$sessionEventsState, val$flushState);
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */