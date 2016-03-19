package com.urbanairship.analytics;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.provider.Settings.SettingNotFoundException;
import com.urbanairship.b.b;
import com.urbanairship.d.d;
import com.urbanairship.d.h;
import com.urbanairship.p;
import com.urbanairship.richpush.RichPushManager;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class i
{
  private final b a;
  
  i()
  {
    this(new b());
  }
  
  private i(b paramb)
  {
    a = paramb;
  }
  
  static k a(Collection<String> paramCollection)
  {
    boolean bool2 = true;
    if (paramCollection.size() == 0) {}
    for (;;)
    {
      return null;
      Object localObject1 = (ConnectivityManager)p.h().getSystemService("connectivity");
      if (localObject1 != null)
      {
        localObject1 = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
        if ((localObject1 == null) || (!((NetworkInfo)localObject1).isConnected())) {
          break label132;
        }
      }
      label132:
      for (int i = 1; i != 0; i = 0)
      {
        localObject1 = new JSONArray();
        localObject3 = paramCollection.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          String str1 = (String)((Iterator)localObject3).next();
          try
          {
            ((JSONArray)localObject1).put(new JSONObject(str1));
          }
          catch (JSONException localJSONException)
          {
            com.urbanairship.j.a("EventAPIClient - Invalid eventPayload.", localJSONException);
          }
        }
        com.urbanairship.j.a("Error fetching network info.");
      }
      continue;
      String str2 = ((JSONArray)localObject1).toString();
      Object localObject3 = alf + "warp9/";
      try
      {
        localObject1 = new URL((String)localObject3);
        if (p.a().u() == 1)
        {
          localObject3 = "amazon";
          double d = System.currentTimeMillis() / 1000.0D;
          com.urbanairship.a locala = p.a().l();
          localObject1 = b.a("POST", (URL)localObject1).b(str2, "application/json").a().c("X-UA-Device-Family", (String)localObject3).c("X-UA-Sent-At", String.format(Locale.US, "%.3f", new Object[] { Double.valueOf(d) })).c("X-UA-Package-Name", p.b()).c("X-UA-Package-Version", eversionName).c("X-UA-App-Key", locala.a()).c("X-UA-In-Production", Boolean.toString(l)).c("X-UA-Device-Model", Build.MODEL).c("X-UA-OS-Version", Build.VERSION.RELEASE).c("X-UA-Lib-Version", p.k()).c("X-UA-Timezone", TimeZone.getDefault().getID()).c("X-UA-Channel-Opted-In", Boolean.toString(p.a().m().h()));
          if ((!p.a().m().c()) || (!p.a().m().g())) {
            break label711;
          }
          bool1 = true;
          localObject1 = ((com.urbanairship.b.a)localObject1).c("X-UA-Channel-Background-Enabled", Boolean.toString(bool1)).c("X-UA-Location-Permission", b()).c("X-UA-Location-Service-Enabled", Boolean.toString(p.a().o().b()));
          if (!d.b("android.permission.BLUETOOTH")) {
            break label717;
          }
          localObject3 = BluetoothAdapter.getDefaultAdapter();
          if ((localObject3 == null) || (!((BluetoothAdapter)localObject3).isEnabled())) {
            break label717;
          }
          bool1 = bool2;
          localObject1 = ((com.urbanairship.b.a)localObject1).c("X-UA-Bluetooth-Status", Boolean.toString(bool1)).c("X-UA-User-ID", p.a().n().b().b());
          localObject3 = Locale.getDefault();
          if (!h.a(((Locale)localObject3).getLanguage()))
          {
            ((com.urbanairship.b.a)localObject1).c("X-UA-Locale-Language", ((Locale)localObject3).getLanguage());
            if (!h.a(((Locale)localObject3).getCountry())) {
              ((com.urbanairship.b.a)localObject1).c("X-UA-Locale-Country", ((Locale)localObject3).getCountry());
            }
            if (!h.a(((Locale)localObject3).getVariant())) {
              ((com.urbanairship.b.a)localObject1).c("X-UA-Locale-Variant", ((Locale)localObject3).getVariant());
            }
          }
          localObject3 = p.a().m().t();
          if (!h.a((String)localObject3))
          {
            ((com.urbanairship.b.a)localObject1).c("X-UA-Channel-ID", (String)localObject3);
            ((com.urbanairship.b.a)localObject1).c("X-UA-Push-Address", (String)localObject3);
          }
          new StringBuilder("EventAPIClient - Sending analytic events. Request:  ").append(localObject1).append(" Events: ").append(paramCollection);
          paramCollection = ((com.urbanairship.b.a)localObject1).b();
          new StringBuilder("EventAPIClient - Analytic event send response: ").append(paramCollection);
          if (paramCollection == null) {
            continue;
          }
          return new k(paramCollection);
        }
      }
      catch (MalformedURLException localMalformedURLException)
      {
        for (;;)
        {
          com.urbanairship.j.a("EventAPIClient - Invalid analyticsServer: " + (String)localObject3, localMalformedURLException);
          Object localObject2 = null;
          continue;
          localObject3 = "android";
          continue;
          label711:
          boolean bool1 = false;
          continue;
          label717:
          bool1 = false;
        }
      }
    }
  }
  
  private static String a()
  {
    if ((d.b("android.permission.ACCESS_COARSE_LOCATION")) || (d.b("android.permission.ACCESS_FINE_LOCATION"))) {
      return "ALWAYS_ALLOWED";
    }
    return "NOT_ALLOWED";
  }
  
  private static String b()
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      if ((p.h().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) || (p.h().checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0)) {
        return "ALWAYS_ALLOWED";
      }
      return "NOT_ALLOWED";
    }
    int i;
    if (Build.VERSION.SDK_INT >= 19) {
      i = 0;
    }
    try
    {
      int j = Settings.Secure.getInt(p.h().getContentResolver(), "location_mode");
      i = j;
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException)
    {
      for (;;) {}
    }
    if (i != 0) {
      return a();
    }
    return "SYSTEM_LOCATION_DISABLED";
    if (!h.a(Settings.Secure.getString(p.h().getContentResolver(), "location_providers_allowed"))) {
      return a();
    }
    return "SYSTEM_LOCATION_DISABLED";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */