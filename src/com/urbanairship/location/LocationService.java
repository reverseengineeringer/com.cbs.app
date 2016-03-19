package com.urbanairship.location;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.location.Location;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import com.urbanairship.analytics.n.a;
import com.urbanairship.j;
import com.urbanairship.json.a;
import com.urbanairship.k;
import com.urbanairship.k.a;
import com.urbanairship.l;
import com.urbanairship.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class LocationService
  extends Service
{
  static boolean d = false;
  static LocationRequestOptions e = null;
  a a;
  f b;
  Looper c;
  private final Set<Messenger> f = new HashSet();
  private final HashMap<Messenger, SparseArray<k<Location>>> g = new HashMap();
  private Messenger h;
  private Location i;
  
  private PendingIntent a()
  {
    Intent localIntent = new Intent(getApplicationContext(), LocationService.class).setAction("com.urbanairship.location.ACTION_LOCATION_UPDATE");
    return PendingIntent.getService(getApplicationContext(), 0, localIntent, 134217728);
  }
  
  private k<Location> a(Messenger paramMessenger, int paramInt)
  {
    k localk = null;
    for (;;)
    {
      try
      {
        synchronized (g)
        {
          if (!g.containsKey(paramMessenger))
          {
            paramMessenger = localk;
            return paramMessenger;
          }
          SparseArray localSparseArray = (SparseArray)g.get(paramMessenger);
          if (localSparseArray != null)
          {
            localk = (k)localSparseArray.get(paramInt);
            localSparseArray.remove(paramInt);
            if (localSparseArray.size() == 0) {
              g.remove(paramMessenger);
            }
            paramMessenger = localk;
          }
        }
      }
      finally {}
      paramMessenger = localk;
    }
  }
  
  private void a(Intent paramIntent)
  {
    if ((!p.a().o().e()) || (d)) {}
    label183:
    Location localLocation;
    do
    {
      return;
      Object localObject;
      if (e == null)
      {
        localObject = p.a().o().d().a("com.urbanairship.location.LAST_REQUESTED_LOCATION_OPTIONS");
        if (localObject == null) {}
      }
      try
      {
        e = LocationRequestOptions.a((String)localObject);
        if (paramIntent.hasExtra("providerEnabled"))
        {
          paramIntent = p.a().o().c();
          localObject = a();
          p.a().o().d().a("com.urbanairship.location.LAST_REQUESTED_LOCATION_OPTIONS", paramIntent);
          b.a();
          b.a((PendingIntent)localObject);
          b.a(paramIntent, (PendingIntent)localObject);
          return;
        }
      }
      catch (a locala)
      {
        for (;;)
        {
          j.a("LocationService - Failed parsing LocationRequestOptions from JSON: " + locala.getMessage());
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        for (;;)
        {
          j.a("LocationService - Invalid LocationRequestOptions from JSON: " + localIllegalArgumentException.getMessage());
        }
      }
      if (!paramIntent.hasExtra("location")) {
        break;
      }
      paramIntent = paramIntent.getParcelableExtra("location");
      localLocation = (Location)paramIntent;
    } while (localLocation == null);
    i = localLocation;
    new StringBuilder("Received location update: ").append(localLocation);
    if (e == null) {}
    for (paramIntent = p.a().o().c();; paramIntent = e)
    {
      p.a().q().a(localLocation, paramIntent, n.a.a);
      paramIntent = new ArrayList(f).iterator();
      while (paramIntent.hasNext())
      {
        Messenger localMessenger = (Messenger)paramIntent.next();
        if (!a(localMessenger, 3, 0, localLocation)) {
          f.remove(localMessenger);
        }
      }
      break;
      paramIntent = paramIntent.getParcelableExtra("com.google.android.location.LOCATION");
      break label183;
    }
  }
  
  private static boolean a(Messenger paramMessenger, int paramInt1, int paramInt2, Object paramObject)
  {
    if (paramMessenger == null) {
      return false;
    }
    try
    {
      paramMessenger.send(Message.obtain(null, paramInt1, paramInt2, 0, paramObject));
      return true;
    }
    catch (RemoteException paramMessenger) {}
    return false;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return h.getBinder();
  }
  
  public void onCreate()
  {
    super.onCreate();
    com.urbanairship.c.a(getApplicationContext());
    HandlerThread localHandlerThread = new HandlerThread("LocationService");
    localHandlerThread.start();
    c = localHandlerThread.getLooper();
    a = new a(c);
    h = new Messenger(a);
    b = new f(getApplicationContext());
  }
  
  public void onDestroy()
  {
    b.b();
    c.quit();
    super.onDestroy();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Message localMessage = a.obtainMessage();
    arg1 = paramInt2;
    obj = paramIntent;
    what = 7;
    a.sendMessage(localMessage);
    return 2;
  }
  
  protected final class a
    extends Handler
  {
    public a(Looper paramLooper)
    {
      super();
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
        LocationService.a(LocationService.this, paramMessage);
        return;
      case 1: 
        LocationService.b(LocationService.this, paramMessage);
        return;
      case 5: 
        LocationService.c(LocationService.this, paramMessage);
        return;
      case 6: 
        LocationService.d(LocationService.this, paramMessage);
        return;
      }
      LocationService.a(LocationService.this, (Intent)obj);
      stopSelf(arg1);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */