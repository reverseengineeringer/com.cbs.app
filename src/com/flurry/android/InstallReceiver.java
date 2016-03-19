package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.flurry.sdk.am;
import com.flurry.sdk.b;
import com.flurry.sdk.bs;

public final class InstallReceiver
  extends BroadcastReceiver
{
  static final String a = InstallReceiver.class.getSimpleName();
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    am.a(4, a, "Received an Install nofication of " + paramIntent.getAction());
    String str = paramIntent.getExtras().getString("referrer");
    am.a(4, a, "Received an Install referrer of " + str);
    if ((str == null) || (!"com.android.vending.INSTALL_REFERRER".equals(paramIntent.getAction())))
    {
      am.a(5, a, "referrer is null");
      return;
    }
    paramIntent = str;
    if (!str.contains("="))
    {
      am.a(4, a, "referrer is before decoding: " + str);
      paramIntent = bs.c(str);
      am.a(4, a, "referrer is: " + paramIntent);
    }
    new b(paramContext).a(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.InstallReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */