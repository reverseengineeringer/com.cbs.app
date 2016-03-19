package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import com.google.android.gms.common.internal.z;
import java.util.List;

@fs
public final class ap
{
  private final Context a;
  
  public ap(Context paramContext)
  {
    z.a(paramContext, "Context can not be null");
    a = paramContext;
  }
  
  private boolean a(Intent paramIntent)
  {
    boolean bool = false;
    z.a(paramIntent, "Intent can not be null");
    if (!a.getPackageManager().queryIntentActivities(paramIntent, 0).isEmpty()) {
      bool = true;
    }
    return bool;
  }
  
  public final boolean a()
  {
    Intent localIntent = new Intent("android.intent.action.DIAL");
    localIntent.setData(Uri.parse("tel:"));
    return a(localIntent);
  }
  
  public final boolean b()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("sms:"));
    return a(localIntent);
  }
  
  public final boolean c()
  {
    return ("mounted".equals(Environment.getExternalStorageState())) && (a.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0);
  }
  
  public final boolean d()
  {
    Intent localIntent = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event");
    return (Build.VERSION.SDK_INT >= 14) && (a(localIntent));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */