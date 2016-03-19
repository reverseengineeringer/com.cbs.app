package com.cbs.app.livetv.controllers;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.cbs.app.livetv.callbacks.LocationControllerCallback;
import java.util.List;

public class LocationLiveTvController
  implements LocationListener
{
  private static final String a = LocationLiveTvController.class.getSimpleName();
  private static Location b;
  private static long c;
  private Context d;
  private LocationControllerCallback e;
  private boolean f;
  
  public LocationLiveTvController(Context paramContext)
  {
    d = paramContext;
    getUserLocation();
  }
  
  private boolean a(String paramString)
  {
    LocationManager localLocationManager = (LocationManager)d.getSystemService("location");
    return (localLocationManager.getAllProviders().contains(paramString)) && (localLocationManager.isProviderEnabled(paramString));
  }
  
  private Location c()
  {
    Location localLocation2 = null;
    LocationManager localLocationManager;
    if (d != null)
    {
      localLocationManager = (LocationManager)d.getSystemService("location");
      if (!a("gps")) {
        break label116;
      }
    }
    label116:
    for (Location localLocation1 = localLocationManager.getLastKnownLocation("gps");; localLocation1 = null)
    {
      if (a("network")) {
        localLocation2 = localLocationManager.getLastKnownLocation("network");
      }
      if (localLocation1 != null) {}
      for (long l1 = localLocation1.getTime();; l1 = 0L)
      {
        if (localLocation2 != null) {}
        for (long l2 = localLocation2.getTime();; l2 = 0L)
        {
          if (0L < l1 - l2)
          {
            c = l1;
            return localLocation1;
          }
          c = l2;
          return localLocation2;
          return null;
        }
      }
    }
  }
  
  public final void a()
  {
    f = true;
    ((LocationManager)d.getSystemService("location")).removeUpdates(this);
    e = null;
  }
  
  public final boolean b()
  {
    return (a("network")) || (a("gps"));
  }
  
  public Location getNewLocation()
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(d);
    String str = ((SharedPreferences)localObject).getString("cbsDebugUserLocationLatitude", "");
    localObject = ((SharedPreferences)localObject).getString("cbsDebugUserLocationLongitude", "");
    if ((!str.equals("")) && (!((String)localObject).equals("")))
    {
      Location localLocation = new Location("");
      localLocation.setAccuracy(10.0F);
      localLocation.setTime(System.currentTimeMillis());
      localLocation.setLatitude(Double.parseDouble(str));
      localLocation.setLongitude(Double.parseDouble((String)localObject));
      return localLocation;
    }
    return c();
  }
  
  public Location getUserLocation()
  {
    if (b != null)
    {
      long l1 = PreferenceManager.getDefaultSharedPreferences(d).getLong("cbsDebugUserLocationTimeStamp", 0L);
      long l2 = System.currentTimeMillis();
      if ((l2 - c <= 300000L) && (l2 - l1 >= 300000L)) {
        break label68;
      }
    }
    label68:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        b = getNewLocation();
      }
      return b;
    }
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    int j = 1;
    if (!f)
    {
      if ((paramLocation != null) && (b != null)) {
        break label66;
      }
      i = 1;
      b = paramLocation;
      if (e != null) {
        if (i == 0) {
          if (System.currentTimeMillis() - c <= 10800000L) {
            break label89;
          }
        }
      }
    }
    label66:
    label89:
    for (int i = j;; i = 0)
    {
      if (i != 0) {
        e.a();
      }
      return;
      if (paramLocation.distanceTo(b) > 200000.0F)
      {
        i = 1;
        break;
      }
      i = 0;
      break;
    }
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString)
  {
    if (!f)
    {
      b = c();
      if (e != null) {
        e.b();
      }
    }
  }
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
  
  public void setLocationCallback(LocationControllerCallback paramLocationControllerCallback)
  {
    e = paramLocationControllerCallback;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.LocationLiveTvController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */