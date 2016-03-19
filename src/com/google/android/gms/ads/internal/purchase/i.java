package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.fs;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class i
{
  public static int a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return 5;
    }
    paramIntent = paramIntent.getExtras().get("RESPONSE_CODE");
    if (paramIntent == null)
    {
      b.a(5);
      return 0;
    }
    if ((paramIntent instanceof Integer)) {
      return ((Integer)paramIntent).intValue();
    }
    if ((paramIntent instanceof Long)) {
      return (int)((Long)paramIntent).longValue();
    }
    new StringBuilder("Unexpected type for intent response code. ").append(paramIntent.getClass().getName());
    b.a(5);
    return 5;
  }
  
  public static int a(Bundle paramBundle)
  {
    paramBundle = paramBundle.get("RESPONSE_CODE");
    if (paramBundle == null)
    {
      b.a(5);
      return 0;
    }
    if ((paramBundle instanceof Integer)) {
      return ((Integer)paramBundle).intValue();
    }
    if ((paramBundle instanceof Long)) {
      return (int)((Long)paramBundle).longValue();
    }
    new StringBuilder("Unexpected type for intent response code. ").append(paramBundle.getClass().getName());
    b.a(5);
    return 5;
  }
  
  public static String a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = new JSONObject(paramString).getString("developerPayload");
      return paramString;
    }
    catch (JSONException paramString)
    {
      b.a(5);
    }
    return null;
  }
  
  public static String b(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
  }
  
  public static String b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = new JSONObject(paramString).getString("purchaseToken");
      return paramString;
    }
    catch (JSONException paramString)
    {
      b.a(5);
    }
    return null;
  }
  
  public final void a(Context paramContext)
  {
    i.1 local1 = new i.1(this, paramContext);
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    localIntent.setPackage("com.android.vending");
    paramContext.bindService(localIntent, local1, 1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */