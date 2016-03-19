package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gw;

@fs
public final class a
{
  public static boolean a(Context paramContext, AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel, j paramj)
  {
    if (paramAdLauncherIntentInfoParcel == null)
    {
      b.a(5);
      return false;
    }
    Intent localIntent = new Intent();
    if (TextUtils.isEmpty(c))
    {
      b.a(5);
      return false;
    }
    if (!TextUtils.isEmpty(d)) {
      localIntent.setDataAndType(Uri.parse(c), d);
    }
    String[] arrayOfString;
    for (;;)
    {
      localIntent.setAction("android.intent.action.VIEW");
      if (!TextUtils.isEmpty(e)) {
        localIntent.setPackage(e);
      }
      if (TextUtils.isEmpty(f)) {
        break label175;
      }
      arrayOfString = f.split("/", 2);
      if (arrayOfString.length >= 2) {
        break;
      }
      new StringBuilder("Could not parse component name from open GMSG: ").append(f);
      b.a(5);
      return false;
      localIntent.setData(Uri.parse(c));
    }
    localIntent.setClassName(arrayOfString[0], arrayOfString[1]);
    label175:
    paramAdLauncherIntentInfoParcel = g;
    if (!TextUtils.isEmpty(paramAdLauncherIntentInfoParcel)) {}
    try
    {
      i = Integer.parseInt(paramAdLauncherIntentInfoParcel);
      localIntent.addFlags(i);
    }
    catch (NumberFormatException paramAdLauncherIntentInfoParcel)
    {
      for (;;)
      {
        try
        {
          new StringBuilder("Launching an intent: ").append(localIntent.toURI());
          b.a(2);
          o.e();
          gw.a(paramContext, localIntent);
          if (paramj != null) {
            paramj.m();
          }
          return true;
        }
        catch (ActivityNotFoundException paramContext)
        {
          int i;
          paramContext.getMessage();
          b.a(5);
        }
        paramAdLauncherIntentInfoParcel = paramAdLauncherIntentInfoParcel;
        b.a(5);
        i = 0;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */