package com.comscore.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.comscore.a.k;
import com.comscore.b.d;
import java.net.URLDecoder;
import java.util.HashMap;

public class InstallReferrerReceiver
  extends BroadcastReceiver
{
  public static HashMap<String, String> a(Context paramContext)
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(paramContext);
    if (((SharedPreferences)localObject).contains("CS_REFERRER_PREF_KEY"))
    {
      paramContext = ((SharedPreferences)localObject).edit();
      localObject = ((SharedPreferences)localObject).getString("CS_REFERRER_PREF_KEY", "CS_NONE");
      b.a(k.f().toString(), "referrer was set as: '" + (String)localObject + "'");
      paramContext.remove("CS_REFERRER_PREF_KEY");
      paramContext.commit();
      if ((localObject != null) && (((String)localObject).length() > 0) && (!((String)localObject).equals("CS_NONE"))) {
        return a((String)localObject);
      }
    }
    return null;
  }
  
  private static HashMap<String, String> a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    if ((paramString != null) && (paramString.length() > 0))
    {
      paramString = paramString.split("&");
      int j = paramString.length;
      int i = 0;
      if (i < j)
      {
        Object localObject = paramString[i];
        int k = ((String)localObject).indexOf("=");
        if (k >= 0) {
          localHashMap.put(((String)localObject).substring(0, k), ((String)localObject).substring(k + 1));
        }
        for (;;)
        {
          i += 1;
          break;
          localHashMap.put("ns_ap_referrer", localObject);
        }
      }
      if ((localHashMap.size() > 0) && (!localHashMap.containsKey("ns_ap_referrer"))) {
        localHashMap.put("ns_ap_referrer", "1");
      }
    }
    return localHashMap;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    b.a("InstallReferrerReceiver", "onReceive()");
    String str = "CS_NONE";
    Object localObject1 = str;
    Object localObject2;
    if (paramIntent != null)
    {
      localObject1 = str;
      localObject2 = str;
    }
    try
    {
      if (paramIntent.getAction().equals("com.android.vending.INSTALL_REFERRER"))
      {
        localObject2 = str;
        paramIntent = paramIntent.getStringExtra("referrer");
        localObject1 = str;
        if (paramIntent != null)
        {
          localObject2 = str;
          localObject1 = URLDecoder.decode(paramIntent, "UTF-8");
          localObject2 = localObject1;
          paramContext.getSharedPreferences("referrer", 0).edit().putString("referrer", (String)localObject1).commit();
        }
      }
    }
    catch (Exception paramIntent)
    {
      for (;;)
      {
        b.b("InstallReferrerReceiver", "onReceive()" + paramIntent.getMessage());
        localObject1 = localObject2;
      }
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      paramContext.putString("CS_REFERRER_PREF_KEY", (String)localObject1);
      paramContext.commit();
      b.a("InstallReferrerReceiver", "Stored data");
    }
    b.a("InstallReferrerReceiver", "Received referrer: '" + (String)localObject1 + "'");
    if (localObject1 != "CS_NONE")
    {
      paramIntent = k.g();
      if ((paramIntent != null) && (paramIntent.A() != null) && (paramIntent.w() > 0)) {
        paramIntent.a(d.e, a((String)localObject1), true);
      }
    }
    else
    {
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.InstallReferrerReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */