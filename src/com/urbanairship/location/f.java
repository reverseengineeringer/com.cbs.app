package com.urbanairship.location;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import com.urbanairship.j;
import com.urbanairship.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class f
{
  private final List<b> a = new ArrayList();
  private b b;
  private boolean c = false;
  
  public f(Context paramContext)
  {
    if ((com.urbanairship.google.a.d()) && (com.urbanairship.google.a.c())) {
      a.add(new a(paramContext));
    }
    a.add(new d(paramContext));
  }
  
  public final k<Location> a(LocationRequestOptions paramLocationRequestOptions)
  {
    if (!c) {
      throw new IllegalStateException("Provider must be connected before making requests.");
    }
    if (b == null) {
      return null;
    }
    new StringBuilder("UALocationProvider - Requesting single location update: ").append(paramLocationRequestOptions);
    try
    {
      paramLocationRequestOptions = b.a(paramLocationRequestOptions);
      return paramLocationRequestOptions;
    }
    catch (SecurityException paramLocationRequestOptions)
    {
      j.a("Unable to request location: " + paramLocationRequestOptions.getMessage());
    }
    return null;
  }
  
  public final void a()
  {
    if (c) {
      return;
    }
    Iterator localIterator = a.iterator();
    for (;;)
    {
      b localb;
      if (localIterator.hasNext())
      {
        localb = (b)localIterator.next();
        new StringBuilder("UALocationProvider - Attempting to connect to location adapter: ").append(localb);
        if (localb.a())
        {
          new StringBuilder("UALocationProvider - Connected to location adapter: ").append(localb);
          b = localb;
        }
      }
      else
      {
        c = true;
        return;
      }
      new StringBuilder("UALocationProvider - Failed to connect to location adapter: ").append(localb);
    }
  }
  
  public final void a(PendingIntent paramPendingIntent)
  {
    Iterator localIterator = a.iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        new StringBuilder("UALocationProvider - Canceling location requests for adapter: ").append(localb);
        if ((localb == b) || (localb.a())) {}
        try
        {
          localb.a(paramPendingIntent);
          if (localb != b) {
            localb.b();
          }
        }
        catch (SecurityException localSecurityException)
        {
          for (;;)
          {
            new StringBuilder("Unable to cancel location updates: ").append(localSecurityException.getMessage());
          }
        }
      }
    }
  }
  
  public final void a(LocationRequestOptions paramLocationRequestOptions, PendingIntent paramPendingIntent)
  {
    if (!c) {
      throw new IllegalStateException("Provider must be connected before making requests.");
    }
    if (b == null) {
      return;
    }
    new StringBuilder("UALocationProvider - Requesting location updates: ").append(paramLocationRequestOptions);
    try
    {
      b.a(paramLocationRequestOptions, paramPendingIntent);
      return;
    }
    catch (SecurityException paramLocationRequestOptions)
    {
      j.a("Unable to request location updates: " + paramLocationRequestOptions.getMessage());
    }
  }
  
  public final void b()
  {
    if (!c) {
      return;
    }
    if (b != null)
    {
      b.b();
      b = null;
    }
    c = false;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */