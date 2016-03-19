package com.cbs.app.service;

import android.content.Context;
import android.location.Location;

public abstract interface LocationService
{
  public abstract Location a(Context paramContext);
  
  public abstract void setUserLocation(Location paramLocation);
}

/* Location:
 * Qualified Name:     com.cbs.app.service.LocationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */