package com.cbs.app.listener;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import com.cbs.app.service.LocationService;
import com.cbs.app.service.LocationServiceImpl;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

public class CBSLocationListener
  implements LocationListener
{
  private static final String a = CBSLocationListener.class.getSimpleName();
  private Context b;
  private Location c = null;
  
  public void onLocationChanged(Location paramLocation)
  {
    String str1;
    String str2;
    Geocoder localGeocoder;
    if (b != null)
    {
      c = paramLocation;
      str1 = "Longitude: " + paramLocation.getLongitude();
      str2 = "Latitude: " + paramLocation.getLatitude();
      localGeocoder = new Geocoder(b, Locale.getDefault());
    }
    try
    {
      paramLocation = localGeocoder.getFromLocation(paramLocation.getLatitude(), paramLocation.getLongitude(), 1);
      if (paramLocation.size() > 0)
      {
        ((Address)paramLocation.get(0)).getLocality();
        paramLocation = ((Address)paramLocation.get(0)).getLocality();
        new StringBuilder().append(str1).append("\n").append(str2).append("\n\nMy Current City is: ").append(paramLocation).toString();
        return;
      }
    }
    catch (IOException paramLocation)
    {
      for (;;)
      {
        Log.e(a, paramLocation.getMessage());
        paramLocation = null;
      }
    }
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString)
  {
    Object localObject = (LocationManager)b.getSystemService("location");
    if (((LocationManager)localObject).getAllProviders().contains("gps")) {}
    for (paramString = ((LocationManager)localObject).getLastKnownLocation("gps");; paramString = null)
    {
      if (((LocationManager)localObject).getAllProviders().contains("network")) {}
      for (localObject = ((LocationManager)localObject).getLastKnownLocation("network");; localObject = null)
      {
        if (paramString != null) {}
        for (long l1 = paramString.getTime();; l1 = 0L)
        {
          if (localObject != null) {}
          for (long l2 = ((Location)localObject).getTime();; l2 = 0L)
          {
            if (0L < l1 - l2) {}
            for (c = paramString;; c = ((Location)localObject))
            {
              paramString = new LocationServiceImpl();
              if (c != null)
              {
                paramString.setUserLocation(c);
                new StringBuilder("location: ").append(c.getLongitude());
              }
              return;
            }
          }
        }
      }
    }
  }
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
  
  public void setContext(Context paramContext)
  {
    b = paramContext;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.listener.CBSLocationListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */