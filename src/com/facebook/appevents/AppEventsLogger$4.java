package com.facebook.appevents;

import com.facebook.internal.Utility;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class AppEventsLogger$4
  implements Runnable
{
  public final void run()
  {
    HashSet localHashSet = new HashSet();
    synchronized (AppEventsLogger.access$400())
    {
      Iterator localIterator = AppEventsLogger.access$500().keySet().iterator();
      if (localIterator.hasNext()) {
        localHashSet.add(((AppEventsLogger.AccessTokenAppIdPair)localIterator.next()).getApplicationId());
      }
    }
    ??? = ((Set)localObject2).iterator();
    while (((Iterator)???).hasNext()) {
      Utility.queryAppSettings((String)((Iterator)???).next(), true);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */