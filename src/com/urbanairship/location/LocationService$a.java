package com.urbanairship.location;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.urbanairship.j;

public final class LocationService$a
  extends Handler
{
  public LocationService$a(LocationService paramLocationService, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    new StringBuilder("LocationService - Received message: ").append(paramMessage);
    switch (what)
    {
    case 3: 
    case 4: 
    default: 
      j.a("LocationService - Unexpected message sent to location service: " + paramMessage);
      return;
    case 2: 
      LocationService.a(a, paramMessage);
      return;
    case 1: 
      LocationService.b(a, paramMessage);
      return;
    case 5: 
      LocationService.c(a, paramMessage);
      return;
    case 6: 
      LocationService.d(a, paramMessage);
      return;
    }
    LocationService.a(a, (Intent)obj);
    a.stopSelf(arg1);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationService.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */