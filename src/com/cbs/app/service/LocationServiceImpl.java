package com.cbs.app.service;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import java.util.List;

public class LocationServiceImpl
  implements LocationService
{
  private static boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private Location d = null;
  
  public final Location a(Context paramContext)
  {
    int k = 0;
    Object localObject2 = null;
    LocationManager localLocationManager;
    int i;
    if (paramContext != null)
    {
      if (d != null) {
        return d;
      }
      if (paramContext == null) {
        break label183;
      }
      localLocationManager = (LocationManager)paramContext.getSystemService("location");
      if ((!localLocationManager.getAllProviders().contains("gps")) || (!localLocationManager.isProviderEnabled("gps"))) {
        break label200;
      }
      paramContext = localLocationManager.getLastKnownLocation("gps");
      i = 1;
    }
    for (;;)
    {
      int j = k;
      Object localObject1 = localObject2;
      if (localLocationManager.getAllProviders().contains("network"))
      {
        j = k;
        localObject1 = localObject2;
        if (localLocationManager.isProviderEnabled("network"))
        {
          localObject1 = localLocationManager.getLastKnownLocation("network");
          j = 1;
        }
      }
      if ((i != 0) && (j == 0)) {
        c = true;
      }
      if (paramContext != null) {}
      for (long l1 = paramContext.getTime();; l1 = 0L)
      {
        if (localObject1 != null) {}
        for (long l2 = ((Location)localObject1).getTime();; l2 = 0L)
        {
          if (0L < l1 - l2) {}
          for (;;)
          {
            d = paramContext;
            return d;
            paramContext = (Context)localObject1;
            continue;
            label183:
            paramContext = null;
          }
        }
      }
      label200:
      i = 0;
      paramContext = null;
    }
  }
  
  public void setLocationEnabled(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void setUserLocation(Location paramLocation)
  {
    d = paramLocation;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.LocationServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */